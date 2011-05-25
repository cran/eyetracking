\name{distance2point}
\alias{distance2point}

\title{
Distance to Point
}
\description{
Takes an x and y screen coordinate and returns the physical distance (in centimeters)
from the observer to that point on the screen.
}
\usage{
distance2point(x, y, viewerDistance, viewerHeight, resolutionX, resolutionY, screenWidth, screenHeight)
}

\arguments{
  \item{x}{
The x coordinate of a point on a screen
}
  \item{y}{
The y coordinate of point on a screen
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
A distance in centimeters
}
\author{
Ryan M. Hope
}

\examples{
function( x, y, viewerDistance, viewerHeight, resolutionX, resolutionY, screenWidth, screenHeight ) {
    
    centerX <- screenWidth / 2
    centerY <- screenHeight / 2 - viewerHeight
    
    targetX <- x / resolutionX * screenWidth
    targetY <- y / resolutionY * screenHeight
    
    dX <- targetX - centerX
    dY <- targetY - centerY
    
    screenDistance <- sqrt( dX^2 + dY^2 )
    
    sqrt( ( viewerDistance^2 + screenDistance^2) )
    
  }
}