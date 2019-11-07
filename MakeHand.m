function T = MakeHand(wrist_rot, thumb, index, middle, ring, pinky)
   
   Finger(thumb, [1.9,1.4,0.9], wrist_rot, 40, 1.05, -4);
   Finger(index,[1.4,1.2,1], wrist_rot, 15, 2.1, 0); %index
   Finger(middle,[1.8,1.4,1.1], wrist_rot, 7, 1.4, 0); %middle
   Finger(ring,[1.3,1.2,1.1], wrist_rot, -7, 0.7, -0.1); %ring
   Finger(pinky,[1.4,0.8,0.9], wrist_rot, -15, 0, -0.4); %pinky
   
   plot3([0 0 -0.1 -0.4 -4 0],[0 0 0 0 0 0],[2.1 1.4 0.7 0 1.05 2.1], 'Color', 'r');
  
end

