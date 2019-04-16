---@class physics
---引擎版本
---@field engineVersion string
physics = {}
function physics.addBody() end
function physics.removeBody() end
function physics.start() end
function physics.pause() end
function physics.stop() end
function physics.newJoint() end
function physics.rayCast() end
function physics.reflectRay() end
function physics.newParticleSystem() end
function physics.queryRegion() end
function physics.setGravity() end
function physics.getGravity() end
function physics.setDrawMode() end
function physics.setScale() end
function physics.setTimeScale() end
function physics.getTimeScale() end
function physics.setTimeStep() end
function physics.setPositionIterations() end
function physics.setVelocityIterations() end
function physics.setContinuous() end
function physics.setAverageCollisionPositions() end
function physics.getAverageCollisionPositions() end
function physics.setReportCollisionsInContentCoordinates() end
function physics.getReportCollisionsInContentCoordinates() end
function physics.setDebugErrorsEnabled() end
function physics.getDebugErrorsEnabled() end
function physics.setMKS() end
function physics.getMKS() end
function physics.toMKS() end
function physics.fromMKS() end
return physics