function func_getPositionAlongLine(x1, y1, x2, y2, distance, angle)
{
	/// Returns the x and y position at a given distance and angle along the line between two points.

	// Calculate the total distance between the two points
	var totalDistance = point_distance(x1, y1, x2, y2);

	// Calculate the ratio of the distance to the total distance
	var ratio = distance / totalDistance;

	// Calculate the x and y positions along the line
	var newX = lerp(x1, x2, ratio);
	var newY = lerp(y1, y2, ratio);

	// Calculate the angle of the line between the two points
	var lineAngle = point_direction(x1, y1, x2, y2);

	// Calculate the final angle by adding the specified angle
	var finalAngle = lineAngle + angle;

	// Calculate the new x and y positions based on the angle and distance
	newX += lengthdir_x(distance, finalAngle);
	newY += lengthdir_y(distance, finalAngle);

	return [newX, newY];
}