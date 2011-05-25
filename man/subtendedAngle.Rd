\name{subtendedAngle}
\alias{subtendedAngle}

\title{
Subtended Angle
}
\description{
Takes two screen coordinates and returns the angle (in degrees) subtended by those two
points.
}
\usage{
subtendedAngle(x1, y1, x2, y2, viewerDistance = 58.74, viewerHeight = 4.55, resolutionX = 1280, resolutionY = 1024, screenWidth = 33.97, screenHeight = 27.31)
}

\arguments{
  \item{x1}{
The x coordinate of the first point on a screen
}
  \item{y1}{
The y coordinate of the first point on a screen
}
  \item{x2}{
The x coordinate of the second point on a screen
}
  \item{y2}{
The y coordinate of the second point on a screen
}
  \item{viewerDistance}{
Perpendicular distance from the viewer to the screen (cm)
}
  \item{viewerHeight}{
Vertical height of the viewer above screen center (cm)
}
  \item{resolutionX}{
The x resolution of the monitor (pixels)
}
  \item{resolutionY}{
The y resolution of the monitor (pixels)
}
  \item{screenWidth}{
The physical screen width (cm)
}
  \item{screenHeight}{
The physical screen height (cm)
}
}
\value{
The angle (in degrees) subtended by two points
}
\author{
Ryan M. Hope
}
\examples{
function( x1, y1, x2, y2, viewerDistance=58.74, viewerHeight=4.55, resolutionX=1280, resolutionY=1024, screenWidth=33.97, screenHeight=27.31 ) {
    
    d1 <- distance2point(x1, y1, viewerDistance, viewerHeight, resolutionX, resolutionY, screenWidth, screenHeight)
    d2 <- distance2point(x2, y2, viewerDistance, viewerHeight, resolutionX, resolutionY, screenWidth, screenHeight)
    
    dX <- screenWidth * ( x2 - x1 ) / resolutionX
    dY <- screenWidth * ( y2 - y1 ) / resolutionY
    
    screenDistance <- sqrt( dX^2 + dY^2 )
    
    angleRadians <- acos( ( d1^2 + d2^2 - screenDistance^2 ) / ( 2 * d1 * d2 ) )
    
    angleRadians / ( 2 * pi ) * 360
    
  }
}