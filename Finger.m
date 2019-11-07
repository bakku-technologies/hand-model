function T03 = Finger(joints, links, z_offset, x_offset)
%IndexFinger creates a 3d plot of the index finger 3d space
    T01 = tdh(joints(1), 0, links(1), 0);
    T12 = tdh(joints(2), 0, links(2), 0);
    T02 = T01*T12;
    T23 = tdh(joints(3), 0, links(3), 0);
    T03 = T02*T23;
    
    fwkin2 = [T01(1,4) T01(2,4) T01(3,4)];
    fwkin3 = [T02(1,4) T02(2,4) T02(3,4)];
    fwkinEF = [T03(1,4) T03(2, 4) T03(3,4)];
    
    xlabel("x");
    ylabel("y");
    zlabel("z");
    xlim([-5,4]);
    ylim([0,4]);
    zlim([-1,3]);
    plot3([0+x_offset, fwkin2(1)+x_offset, fwkin3(1)+x_offset, fwkinEF(1)+x_offset], ...
        [0, fwkin2(2), fwkin3(2), fwkinEF(2)], ...
        [0+z_offset, fwkin2(3)+z_offset, fwkin3(3)+z_offset, fwkinEF(3)+z_offset]);
    hold on
end

