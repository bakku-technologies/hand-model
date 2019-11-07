function T = MakeHand(wrist_rot, thumb, index, middle, ring, pinky)
   
   palm_to_thumb = tdh(0,0,0,wrist_rot) * tdh(0,0,1.5,-90) * tdh(20,0,0,90);
   
   plot3([palm_to_thumb()]);
   thumb_EF = Finger(palm_to_thumb, thumb,[1.9,1.4,1.2], 1.34, -2.9); %thumb
%    index_EF = Finger(index,[1.4,1.2,1], 2.1, 0); %index
%    middle_EF = Finger(middle,[1.8,1.4,1.1], 1.4, 0); %middle
%    ring_EF = Finger(ring,[1.3,1.2,1.1], 0.7, -0.1); %ring
%    pinky_EF = Finger(pinky,[1.4,0.8,0.9], 0, -0.4); %pinky
   
%  plot3([0 0 -0.1 -0.4 -4 0],[0 0 0 0 0 0],[2.1 1.4 0.7 0 1.05 2.1], 'Color', 'r');
  
end

