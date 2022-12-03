function [ corners scores ] = FindFast(image, threshold, do_nonmax)
	
	corners = zeros(1024, 2);
	num_corners=0;

	for y=20:size(image,1)-20
		
		for x=20:size(image,2)-20
			cb = image(y, x) + threshold;
			c_b = image(y, x) - threshold;
          if image(y+3,x+0) > cb 
           if image(y+3,x+1) > cb 
            if image(y+2,x+2) > cb 
             if image(y+1,x+3) > cb 
              if image(y+0,x+3) > cb 
               if image(y+-1,x+3) > cb 
                if image(y+-2,x+2) > cb 
                 if image(y+-3,x+1) > cb 
                  if image(y+-3,x+0) > cb 
                  else
                   if image(y+3,x+-1) > cb 
                   else
                    continue
                   end
                  end
                 elseif image(y+-3,x+1) < c_b 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    continue
                   end
                  elseif image(y+2,x+-2) < c_b 
                   if image(y+-3,x+0) < c_b
                    if image(y+-3,x+-1) < c_b
                     if image(y+-2,x+-2) < c_b
                      if image(y+-1,x+-3) < c_b
                       if image(y+0,x+-3) < c_b
                        if image(y+1,x+-3) < c_b
                         if image(y+3,x+-1) < c_b
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                elseif image(y+-2,x+2) < c_b 
                 if image(y+3,x+-1) > cb 
                  if image(y+1,x+-3) > cb 
                   if image(y+2,x+-2) > cb 
                   else
                    continue
                   end
                  elseif image(y+1,x+-3) < c_b 
                   if image(y+-3,x+1) < c_b
                    if image(y+-3,x+0) < c_b
                     if image(y+-3,x+-1) < c_b
                      if image(y+-2,x+-2) < c_b
                       if image(y+-1,x+-3) < c_b
                        if image(y+0,x+-3) < c_b
                         if image(y+2,x+-2) < c_b
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  if image(y+-3,x+1) < c_b
                   if image(y+-3,x+0) < c_b
                    if image(y+-3,x+-1) < c_b
                     if image(y+-2,x+-2) < c_b
                      if image(y+-1,x+-3) < c_b
                       if image(y+0,x+-3) < c_b
                        if image(y+1,x+-3) < c_b
                         if image(y+2,x+-2) < c_b
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+1,x+-3) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    continue
                   end
                  else
                   continue
                  end
                 elseif image(y+1,x+-3) < c_b 
                  if image(y+-3,x+1) < c_b
                   if image(y+-3,x+0) < c_b
                    if image(y+-3,x+-1) < c_b
                     if image(y+-2,x+-2) < c_b
                      if image(y+-1,x+-3) < c_b
                       if image(y+0,x+-3) < c_b
                        if image(y+2,x+-2) < c_b
                         if image(y+3,x+-1) < c_b
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               elseif image(y+-1,x+3) < c_b 
                if image(y+2,x+-2) > cb 
                 if image(y+0,x+-3) > cb 
                  if image(y+1,x+-3) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                        if image(y+-2,x+-2) > cb 
                         if image(y+-1,x+-3) > cb 
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   continue
                  end
                 elseif image(y+0,x+-3) < c_b 
                  if image(y+-2,x+2) < c_b
                   if image(y+-3,x+1) < c_b
                    if image(y+-3,x+0) < c_b
                     if image(y+-3,x+-1) < c_b
                      if image(y+-2,x+-2) < c_b
                       if image(y+-1,x+-3) < c_b
                        if image(y+1,x+-3) < c_b
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                elseif image(y+2,x+-2) < c_b 
                 if image(y+-3,x+1) < c_b
                  if image(y+-3,x+0) < c_b
                   if image(y+-3,x+-1) < c_b
                    if image(y+-2,x+-2) < c_b
                     if image(y+-1,x+-3) < c_b
                      if image(y+0,x+-3) < c_b
                       if image(y+1,x+-3) < c_b
                        if image(y+-2,x+2) < c_b
                        else
                         if image(y+3,x+-1) < c_b
                         else
                          continue
                         end
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 if image(y+-2,x+2) < c_b
                  if image(y+-3,x+1) < c_b
                   if image(y+-3,x+0) < c_b
                    if image(y+-3,x+-1) < c_b
                     if image(y+-2,x+-2) < c_b
                      if image(y+-1,x+-3) < c_b
                       if image(y+0,x+-3) < c_b
                        if image(y+1,x+-3) < c_b
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                if image(y+0,x+-3) > cb 
                 if image(y+1,x+-3) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                        if image(y+-2,x+-2) > cb 
                         if image(y+-1,x+-3) > cb 
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                elseif image(y+0,x+-3) < c_b 
                 if image(y+-3,x+1) < c_b
                  if image(y+-3,x+0) < c_b
                   if image(y+-3,x+-1) < c_b
                    if image(y+-2,x+-2) < c_b
                     if image(y+-1,x+-3) < c_b
                      if image(y+1,x+-3) < c_b
                       if image(y+2,x+-2) < c_b
                        if image(y+-2,x+2) < c_b
                        else
                         if image(y+3,x+-1) < c_b
                         else
                          continue
                         end
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              elseif image(y+0,x+3) < c_b 
               if image(y+1,x+-3) > cb 
                if image(y+-1,x+-3) > cb 
                 if image(y+0,x+-3) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                        if image(y+-2,x+-2) > cb 
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                        if image(y+-2,x+-2) > cb 
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  continue
                 end
                elseif image(y+-1,x+-3) < c_b 
                 if image(y+-1,x+3) < c_b
                  if image(y+-2,x+2) < c_b
                   if image(y+-3,x+1) < c_b
                    if image(y+-3,x+0) < c_b
                     if image(y+-3,x+-1) < c_b
                      if image(y+-2,x+-2) < c_b
                       if image(y+0,x+-3) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               elseif image(y+1,x+-3) < c_b 
                if image(y+-3,x+1) < c_b
                 if image(y+-3,x+0) < c_b
                  if image(y+-3,x+-1) < c_b
                   if image(y+-2,x+-2) < c_b
                    if image(y+-1,x+-3) < c_b
                     if image(y+0,x+-3) < c_b
                      if image(y+-2,x+2) < c_b
                       if image(y+-1,x+3) < c_b
                       else
                        if image(y+2,x+-2) < c_b
                        else
                         continue
                        end
                       end
                      else
                       if image(y+2,x+-2) < c_b
                        if image(y+3,x+-1) < c_b
                        else
                         continue
                        end
                       else
                        continue
                       end
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                if image(y+-1,x+3) < c_b
                 if image(y+-2,x+2) < c_b
                  if image(y+-3,x+1) < c_b
                   if image(y+-3,x+0) < c_b
                    if image(y+-3,x+-1) < c_b
                     if image(y+-2,x+-2) < c_b
                      if image(y+-1,x+-3) < c_b
                       if image(y+0,x+-3) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              else
               if image(y+-1,x+-3) > cb 
                if image(y+0,x+-3) > cb 
                 if image(y+1,x+-3) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                        if image(y+-2,x+-2) > cb 
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                        if image(y+-2,x+-2) > cb 
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               elseif image(y+-1,x+-3) < c_b 
                if image(y+-3,x+1) < c_b
                 if image(y+-3,x+0) < c_b
                  if image(y+-3,x+-1) < c_b
                   if image(y+-2,x+-2) < c_b
                    if image(y+0,x+-3) < c_b
                     if image(y+1,x+-3) < c_b
                      if image(y+-2,x+2) < c_b
                       if image(y+-1,x+3) < c_b
                       else
                        if image(y+2,x+-2) < c_b
                        else
                         continue
                        end
                       end
                      else
                       if image(y+2,x+-2) < c_b
                        if image(y+3,x+-1) < c_b
                        else
                         continue
                        end
                       else
                        continue
                       end
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                continue
               end
              end
             elseif image(y+1,x+3) < c_b 
              if image(y+-2,x+-2) > cb 
               if image(y+-1,x+-3) > cb 
                if image(y+0,x+-3) > cb 
                 if image(y+1,x+-3) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 continue
                end
               else
                continue
               end
              elseif image(y+-2,x+-2) < c_b 
               if image(y+-3,x+1) < c_b
                if image(y+-3,x+0) < c_b
                 if image(y+-3,x+-1) < c_b
                  if image(y+-1,x+-3) < c_b
                   if image(y+-2,x+2) < c_b
                    if image(y+-1,x+3) < c_b
                     if image(y+0,x+3) < c_b
                     else
                      if image(y+0,x+-3) < c_b
                       if image(y+1,x+-3) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     end
                    else
                     if image(y+0,x+-3) < c_b
                      if image(y+1,x+-3) < c_b
                       if image(y+2,x+-2) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    end
                   else
                    if image(y+0,x+-3) < c_b
                     if image(y+1,x+-3) < c_b
                      if image(y+2,x+-2) < c_b
                       if image(y+3,x+-1) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                continue
               end
              else
               continue
              end
             else
              if image(y+-2,x+-2) > cb 
               if image(y+-1,x+-3) > cb 
                if image(y+0,x+-3) > cb 
                 if image(y+1,x+-3) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                       if image(y+-3,x+-1) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 continue
                end
               else
                continue
               end
              elseif image(y+-2,x+-2) < c_b 
               if image(y+-3,x+1) < c_b
                if image(y+-3,x+0) < c_b
                 if image(y+-3,x+-1) < c_b
                  if image(y+-1,x+-3) < c_b
                   if image(y+0,x+-3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-1,x+3) < c_b
                      if image(y+0,x+3) < c_b
                      else
                       if image(y+1,x+-3) < c_b
                       else
                        continue
                       end
                      end
                     else
                      if image(y+1,x+-3) < c_b
                       if image(y+2,x+-2) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     end
                    else
                     if image(y+1,x+-3) < c_b
                      if image(y+2,x+-2) < c_b
                       if image(y+3,x+-1) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                continue
               end
              else
               continue
              end
             end
            elseif image(y+2,x+2) < c_b 
             if image(y+-3,x+-1) > cb 
              if image(y+-2,x+-2) > cb 
               if image(y+-1,x+-3) > cb 
                if image(y+0,x+-3) > cb 
                 if image(y+1,x+-3) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+1,x+3) > cb 
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                continue
               end
              else
               continue
              end
             elseif image(y+-3,x+-1) < c_b 
              if image(y+-3,x+1) < c_b
               if image(y+-3,x+0) < c_b
                if image(y+-2,x+-2) < c_b
                 if image(y+-2,x+2) < c_b
                  if image(y+-1,x+3) < c_b
                   if image(y+0,x+3) < c_b
                    if image(y+1,x+3) < c_b
                    else
                     if image(y+-1,x+-3) < c_b
                      if image(y+0,x+-3) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    end
                   else
                    if image(y+-1,x+-3) < c_b
                     if image(y+0,x+-3) < c_b
                      if image(y+1,x+-3) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+-3) < c_b
                    if image(y+0,x+-3) < c_b
                     if image(y+1,x+-3) < c_b
                      if image(y+2,x+-2) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+-1,x+-3) < c_b
                   if image(y+0,x+-3) < c_b
                    if image(y+1,x+-3) < c_b
                     if image(y+2,x+-2) < c_b
                      if image(y+3,x+-1) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 continue
                end
               else
                continue
               end
              else
               continue
              end
             else
              continue
             end
            else
             if image(y+-3,x+-1) > cb 
              if image(y+-2,x+-2) > cb 
               if image(y+-1,x+-3) > cb 
                if image(y+0,x+-3) > cb 
                 if image(y+1,x+-3) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+1,x+3) > cb 
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                      if image(y+-3,x+0) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                continue
               end
              else
               continue
              end
             elseif image(y+-3,x+-1) < c_b 
              if image(y+-3,x+1) < c_b
               if image(y+-3,x+0) < c_b
                if image(y+-2,x+-2) < c_b
                 if image(y+-1,x+-3) < c_b
                  if image(y+-2,x+2) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+0,x+3) < c_b
                     if image(y+1,x+3) < c_b
                     else
                      if image(y+0,x+-3) < c_b
                      else
                       continue
                      end
                     end
                    else
                     if image(y+0,x+-3) < c_b
                      if image(y+1,x+-3) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    end
                   else
                    if image(y+0,x+-3) < c_b
                     if image(y+1,x+-3) < c_b
                      if image(y+2,x+-2) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+0,x+-3) < c_b
                    if image(y+1,x+-3) < c_b
                     if image(y+2,x+-2) < c_b
                      if image(y+3,x+-1) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                continue
               end
              else
               continue
              end
             else
              continue
             end
            end
           elseif image(y+3,x+1) < c_b 
            if image(y+-3,x+0) > cb 
             if image(y+-3,x+-1) > cb 
              if image(y+-2,x+-2) > cb 
               if image(y+-1,x+-3) > cb 
                if image(y+0,x+-3) > cb 
                 if image(y+1,x+-3) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+1,x+3) > cb 
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                if image(y+2,x+2) > cb 
                 if image(y+1,x+3) > cb 
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              else
               continue
              end
             else
              continue
             end
            elseif image(y+-3,x+0) < c_b 
             if image(y+-3,x+1) < c_b
              if image(y+-3,x+-1) < c_b
               if image(y+-2,x+2) < c_b
                if image(y+-1,x+3) < c_b
                 if image(y+0,x+3) < c_b
                  if image(y+1,x+3) < c_b
                   if image(y+2,x+2) < c_b
                   else
                    if image(y+-2,x+-2) < c_b
                     if image(y+-1,x+-3) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-2,x+-2) < c_b
                    if image(y+-1,x+-3) < c_b
                     if image(y+0,x+-3) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+-2,x+-2) < c_b
                   if image(y+-1,x+-3) < c_b
                    if image(y+0,x+-3) < c_b
                     if image(y+1,x+-3) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+-2,x+-2) < c_b
                  if image(y+-1,x+-3) < c_b
                   if image(y+0,x+-3) < c_b
                    if image(y+1,x+-3) < c_b
                     if image(y+2,x+-2) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                if image(y+-2,x+-2) < c_b
                 if image(y+-1,x+-3) < c_b
                  if image(y+0,x+-3) < c_b
                   if image(y+1,x+-3) < c_b
                    if image(y+2,x+-2) < c_b
                     if image(y+3,x+-1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              else
               continue
              end
             else
              continue
             end
            else
             continue
            end
           else
            if image(y+-3,x+0) > cb 
             if image(y+-3,x+-1) > cb 
              if image(y+-2,x+-2) > cb 
               if image(y+-1,x+-3) > cb 
                if image(y+0,x+-3) > cb 
                 if image(y+1,x+-3) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+3,x+-1) > cb 
                   else
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+1,x+3) > cb 
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                if image(y+2,x+2) > cb 
                 if image(y+1,x+3) > cb 
                  if image(y+0,x+3) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-3,x+1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              else
               continue
              end
             else
              continue
             end
            elseif image(y+-3,x+0) < c_b 
             if image(y+-3,x+1) < c_b
              if image(y+-3,x+-1) < c_b
               if image(y+-2,x+-2) < c_b
                if image(y+-2,x+2) < c_b
                 if image(y+-1,x+3) < c_b
                  if image(y+0,x+3) < c_b
                   if image(y+1,x+3) < c_b
                    if image(y+2,x+2) < c_b
                    else
                     if image(y+-1,x+-3) < c_b
                     else
                      continue
                     end
                    end
                   else
                    if image(y+-1,x+-3) < c_b
                     if image(y+0,x+-3) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+-3) < c_b
                    if image(y+0,x+-3) < c_b
                     if image(y+1,x+-3) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+-1,x+-3) < c_b
                   if image(y+0,x+-3) < c_b
                    if image(y+1,x+-3) < c_b
                     if image(y+2,x+-2) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+-1,x+-3) < c_b
                  if image(y+0,x+-3) < c_b
                   if image(y+1,x+-3) < c_b
                    if image(y+2,x+-2) < c_b
                     if image(y+3,x+-1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                continue
               end
              else
               continue
              end
             else
              continue
             end
            else
             continue
            end
           end
          elseif image(y+3,x+0) < c_b 
           if image(y+3,x+1) > cb 
            if image(y+-3,x+0) > cb 
             if image(y+-3,x+1) > cb 
              if image(y+-3,x+-1) > cb 
               if image(y+-2,x+2) > cb 
                if image(y+-1,x+3) > cb 
                 if image(y+0,x+3) > cb 
                  if image(y+1,x+3) > cb 
                   if image(y+2,x+2) > cb 
                   else
                    if image(y+-2,x+-2) > cb 
                     if image(y+-1,x+-3) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-2,x+-2) > cb 
                    if image(y+-1,x+-3) > cb 
                     if image(y+0,x+-3) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+-2,x+-2) > cb 
                   if image(y+-1,x+-3) > cb 
                    if image(y+0,x+-3) > cb 
                     if image(y+1,x+-3) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+-2,x+-2) > cb 
                  if image(y+-1,x+-3) > cb 
                   if image(y+0,x+-3) > cb 
                    if image(y+1,x+-3) > cb 
                     if image(y+2,x+-2) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                if image(y+-2,x+-2) > cb 
                 if image(y+-1,x+-3) > cb 
                  if image(y+0,x+-3) > cb 
                   if image(y+1,x+-3) > cb 
                    if image(y+2,x+-2) > cb 
                     if image(y+3,x+-1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              else
               continue
              end
             else
              continue
             end
            elseif image(y+-3,x+0) < c_b 
             if image(y+-3,x+-1) < c_b
              if image(y+-2,x+-2) < c_b
               if image(y+-1,x+-3) < c_b
                if image(y+0,x+-3) < c_b
                 if image(y+1,x+-3) < c_b
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+1,x+3) < c_b
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                if image(y+2,x+2) < c_b
                 if image(y+1,x+3) < c_b
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              else
               continue
              end
             else
              continue
             end
            else
             continue
            end
           elseif image(y+3,x+1) < c_b 
            if image(y+2,x+2) > cb 
             if image(y+-3,x+-1) > cb 
              if image(y+-3,x+1) > cb 
               if image(y+-3,x+0) > cb 
                if image(y+-2,x+-2) > cb 
                 if image(y+-2,x+2) > cb 
                  if image(y+-1,x+3) > cb 
                   if image(y+0,x+3) > cb 
                    if image(y+1,x+3) > cb 
                    else
                     if image(y+-1,x+-3) > cb 
                      if image(y+0,x+-3) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    end
                   else
                    if image(y+-1,x+-3) > cb 
                     if image(y+0,x+-3) > cb 
                      if image(y+1,x+-3) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+-3) > cb 
                    if image(y+0,x+-3) > cb 
                     if image(y+1,x+-3) > cb 
                      if image(y+2,x+-2) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+-1,x+-3) > cb 
                   if image(y+0,x+-3) > cb 
                    if image(y+1,x+-3) > cb 
                     if image(y+2,x+-2) > cb 
                      if image(y+3,x+-1) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 continue
                end
               else
                continue
               end
              else
               continue
              end
             elseif image(y+-3,x+-1) < c_b 
              if image(y+-2,x+-2) < c_b
               if image(y+-1,x+-3) < c_b
                if image(y+0,x+-3) < c_b
                 if image(y+1,x+-3) < c_b
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+1,x+3) < c_b
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                continue
               end
              else
               continue
              end
             else
              continue
             end
            elseif image(y+2,x+2) < c_b 
             if image(y+1,x+3) > cb 
              if image(y+-2,x+-2) > cb 
               if image(y+-3,x+1) > cb 
                if image(y+-3,x+0) > cb 
                 if image(y+-3,x+-1) > cb 
                  if image(y+-1,x+-3) > cb 
                   if image(y+-2,x+2) > cb 
                    if image(y+-1,x+3) > cb 
                     if image(y+0,x+3) > cb 
                     else
                      if image(y+0,x+-3) > cb 
                       if image(y+1,x+-3) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     end
                    else
                     if image(y+0,x+-3) > cb 
                      if image(y+1,x+-3) > cb 
                       if image(y+2,x+-2) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    end
                   else
                    if image(y+0,x+-3) > cb 
                     if image(y+1,x+-3) > cb 
                      if image(y+2,x+-2) > cb 
                       if image(y+3,x+-1) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                continue
               end
              elseif image(y+-2,x+-2) < c_b 
               if image(y+-1,x+-3) < c_b
                if image(y+0,x+-3) < c_b
                 if image(y+1,x+-3) < c_b
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 continue
                end
               else
                continue
               end
              else
               continue
              end
             elseif image(y+1,x+3) < c_b 
              if image(y+0,x+3) > cb 
               if image(y+1,x+-3) > cb 
                if image(y+-3,x+1) > cb 
                 if image(y+-3,x+0) > cb 
                  if image(y+-3,x+-1) > cb 
                   if image(y+-2,x+-2) > cb 
                    if image(y+-1,x+-3) > cb 
                     if image(y+0,x+-3) > cb 
                      if image(y+-2,x+2) > cb 
                       if image(y+-1,x+3) > cb 
                       else
                        if image(y+2,x+-2) > cb 
                        else
                         continue
                        end
                       end
                      else
                       if image(y+2,x+-2) > cb 
                        if image(y+3,x+-1) > cb 
                        else
                         continue
                        end
                       else
                        continue
                       end
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               elseif image(y+1,x+-3) < c_b 
                if image(y+-1,x+-3) > cb 
                 if image(y+-1,x+3) > cb 
                  if image(y+-2,x+2) > cb 
                   if image(y+-3,x+1) > cb 
                    if image(y+-3,x+0) > cb 
                     if image(y+-3,x+-1) > cb 
                      if image(y+-2,x+-2) > cb 
                       if image(y+0,x+-3) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                elseif image(y+-1,x+-3) < c_b 
                 if image(y+0,x+-3) < c_b
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                        if image(y+-2,x+-2) < c_b
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                        if image(y+-2,x+-2) < c_b
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                if image(y+-1,x+3) > cb 
                 if image(y+-2,x+2) > cb 
                  if image(y+-3,x+1) > cb 
                   if image(y+-3,x+0) > cb 
                    if image(y+-3,x+-1) > cb 
                     if image(y+-2,x+-2) > cb 
                      if image(y+-1,x+-3) > cb 
                       if image(y+0,x+-3) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              elseif image(y+0,x+3) < c_b 
               if image(y+-1,x+3) > cb 
                if image(y+2,x+-2) > cb 
                 if image(y+-3,x+1) > cb 
                  if image(y+-3,x+0) > cb 
                   if image(y+-3,x+-1) > cb 
                    if image(y+-2,x+-2) > cb 
                     if image(y+-1,x+-3) > cb 
                      if image(y+0,x+-3) > cb 
                       if image(y+1,x+-3) > cb 
                        if image(y+-2,x+2) > cb 
                        else
                         if image(y+3,x+-1) > cb 
                         else
                          continue
                         end
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                elseif image(y+2,x+-2) < c_b 
                 if image(y+0,x+-3) > cb 
                  if image(y+-2,x+2) > cb 
                   if image(y+-3,x+1) > cb 
                    if image(y+-3,x+0) > cb 
                     if image(y+-3,x+-1) > cb 
                      if image(y+-2,x+-2) > cb 
                       if image(y+-1,x+-3) > cb 
                        if image(y+1,x+-3) > cb 
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 elseif image(y+0,x+-3) < c_b 
                  if image(y+1,x+-3) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                        if image(y+-2,x+-2) < c_b
                         if image(y+-1,x+-3) < c_b
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 if image(y+-2,x+2) > cb 
                  if image(y+-3,x+1) > cb 
                   if image(y+-3,x+0) > cb 
                    if image(y+-3,x+-1) > cb 
                     if image(y+-2,x+-2) > cb 
                      if image(y+-1,x+-3) > cb 
                       if image(y+0,x+-3) > cb 
                        if image(y+1,x+-3) > cb 
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               elseif image(y+-1,x+3) < c_b 
                if image(y+-2,x+2) > cb 
                 if image(y+3,x+-1) < c_b
                  if image(y+1,x+-3) > cb 
                   if image(y+-3,x+1) > cb 
                    if image(y+-3,x+0) > cb 
                     if image(y+-3,x+-1) > cb 
                      if image(y+-2,x+-2) > cb 
                       if image(y+-1,x+-3) > cb 
                        if image(y+0,x+-3) > cb 
                         if image(y+2,x+-2) > cb 
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  elseif image(y+1,x+-3) < c_b 
                   if image(y+2,x+-2) < c_b
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  if image(y+-3,x+1) > cb 
                   if image(y+-3,x+0) > cb 
                    if image(y+-3,x+-1) > cb 
                     if image(y+-2,x+-2) > cb 
                      if image(y+-1,x+-3) > cb 
                       if image(y+0,x+-3) > cb 
                        if image(y+1,x+-3) > cb 
                         if image(y+2,x+-2) > cb 
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                elseif image(y+-2,x+2) < c_b 
                 if image(y+-3,x+1) > cb 
                  if image(y+2,x+-2) > cb 
                   if image(y+-3,x+0) > cb 
                    if image(y+-3,x+-1) > cb 
                     if image(y+-2,x+-2) > cb 
                      if image(y+-1,x+-3) > cb 
                       if image(y+0,x+-3) > cb 
                        if image(y+1,x+-3) > cb 
                         if image(y+3,x+-1) > cb 
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  elseif image(y+2,x+-2) < c_b 
                   if image(y+3,x+-1) < c_b
                   else
                    continue
                   end
                  else
                   continue
                  end
                 elseif image(y+-3,x+1) < c_b 
                  if image(y+-3,x+0) < c_b
                  else
                   if image(y+3,x+-1) < c_b
                   else
                    continue
                   end
                  end
                 else
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+1,x+-3) > cb 
                  if image(y+-3,x+1) > cb 
                   if image(y+-3,x+0) > cb 
                    if image(y+-3,x+-1) > cb 
                     if image(y+-2,x+-2) > cb 
                      if image(y+-1,x+-3) > cb 
                       if image(y+0,x+-3) > cb 
                        if image(y+2,x+-2) > cb 
                         if image(y+3,x+-1) > cb 
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 elseif image(y+1,x+-3) < c_b 
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                if image(y+0,x+-3) > cb 
                 if image(y+-3,x+1) > cb 
                  if image(y+-3,x+0) > cb 
                   if image(y+-3,x+-1) > cb 
                    if image(y+-2,x+-2) > cb 
                     if image(y+-1,x+-3) > cb 
                      if image(y+1,x+-3) > cb 
                       if image(y+2,x+-2) > cb 
                        if image(y+-2,x+2) > cb 
                        else
                         if image(y+3,x+-1) > cb 
                         else
                          continue
                         end
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                elseif image(y+0,x+-3) < c_b 
                 if image(y+1,x+-3) < c_b
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                        if image(y+-2,x+-2) < c_b
                         if image(y+-1,x+-3) < c_b
                         else
                          continue
                         end
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              else
               if image(y+-1,x+-3) > cb 
                if image(y+-3,x+1) > cb 
                 if image(y+-3,x+0) > cb 
                  if image(y+-3,x+-1) > cb 
                   if image(y+-2,x+-2) > cb 
                    if image(y+0,x+-3) > cb 
                     if image(y+1,x+-3) > cb 
                      if image(y+-2,x+2) > cb 
                       if image(y+-1,x+3) > cb 
                       else
                        if image(y+2,x+-2) > cb 
                        else
                         continue
                        end
                       end
                      else
                       if image(y+2,x+-2) > cb 
                        if image(y+3,x+-1) > cb 
                        else
                         continue
                        end
                       else
                        continue
                       end
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               elseif image(y+-1,x+-3) < c_b 
                if image(y+0,x+-3) < c_b
                 if image(y+1,x+-3) < c_b
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                        if image(y+-2,x+-2) < c_b
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                        if image(y+-2,x+-2) < c_b
                        else
                         continue
                        end
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                continue
               end
              end
             else
              if image(y+-2,x+-2) > cb 
               if image(y+-3,x+1) > cb 
                if image(y+-3,x+0) > cb 
                 if image(y+-3,x+-1) > cb 
                  if image(y+-1,x+-3) > cb 
                   if image(y+0,x+-3) > cb 
                    if image(y+-2,x+2) > cb 
                     if image(y+-1,x+3) > cb 
                      if image(y+0,x+3) > cb 
                      else
                       if image(y+1,x+-3) > cb 
                       else
                        continue
                       end
                      end
                     else
                      if image(y+1,x+-3) > cb 
                       if image(y+2,x+-2) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     end
                    else
                     if image(y+1,x+-3) > cb 
                      if image(y+2,x+-2) > cb 
                       if image(y+3,x+-1) > cb 
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                continue
               end
              elseif image(y+-2,x+-2) < c_b 
               if image(y+-1,x+-3) < c_b
                if image(y+0,x+-3) < c_b
                 if image(y+1,x+-3) < c_b
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                       if image(y+-3,x+-1) < c_b
                       else
                        continue
                       end
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 continue
                end
               else
                continue
               end
              else
               continue
              end
             end
            else
             if image(y+-3,x+-1) > cb 
              if image(y+-3,x+1) > cb 
               if image(y+-3,x+0) > cb 
                if image(y+-2,x+-2) > cb 
                 if image(y+-1,x+-3) > cb 
                  if image(y+-2,x+2) > cb 
                   if image(y+-1,x+3) > cb 
                    if image(y+0,x+3) > cb 
                     if image(y+1,x+3) > cb 
                     else
                      if image(y+0,x+-3) > cb 
                      else
                       continue
                      end
                     end
                    else
                     if image(y+0,x+-3) > cb 
                      if image(y+1,x+-3) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    end
                   else
                    if image(y+0,x+-3) > cb 
                     if image(y+1,x+-3) > cb 
                      if image(y+2,x+-2) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+0,x+-3) > cb 
                    if image(y+1,x+-3) > cb 
                     if image(y+2,x+-2) > cb 
                      if image(y+3,x+-1) > cb 
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                continue
               end
              else
               continue
              end
             elseif image(y+-3,x+-1) < c_b 
              if image(y+-2,x+-2) < c_b
               if image(y+-1,x+-3) < c_b
                if image(y+0,x+-3) < c_b
                 if image(y+1,x+-3) < c_b
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+1,x+3) < c_b
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                      if image(y+-3,x+0) < c_b
                      else
                       continue
                      end
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                continue
               end
              else
               continue
              end
             else
              continue
             end
            end
           else
            if image(y+-3,x+0) > cb 
             if image(y+-3,x+1) > cb 
              if image(y+-3,x+-1) > cb 
               if image(y+-2,x+-2) > cb 
                if image(y+-2,x+2) > cb 
                 if image(y+-1,x+3) > cb 
                  if image(y+0,x+3) > cb 
                   if image(y+1,x+3) > cb 
                    if image(y+2,x+2) > cb 
                    else
                     if image(y+-1,x+-3) > cb 
                     else
                      continue
                     end
                    end
                   else
                    if image(y+-1,x+-3) > cb 
                     if image(y+0,x+-3) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+-3) > cb 
                    if image(y+0,x+-3) > cb 
                     if image(y+1,x+-3) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+-1,x+-3) > cb 
                   if image(y+0,x+-3) > cb 
                    if image(y+1,x+-3) > cb 
                     if image(y+2,x+-2) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+-1,x+-3) > cb 
                  if image(y+0,x+-3) > cb 
                   if image(y+1,x+-3) > cb 
                    if image(y+2,x+-2) > cb 
                     if image(y+3,x+-1) > cb 
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                continue
               end
              else
               continue
              end
             else
              continue
             end
            elseif image(y+-3,x+0) < c_b 
             if image(y+-3,x+-1) < c_b
              if image(y+-2,x+-2) < c_b
               if image(y+-1,x+-3) < c_b
                if image(y+0,x+-3) < c_b
                 if image(y+1,x+-3) < c_b
                  if image(y+2,x+-2) < c_b
                   if image(y+3,x+-1) < c_b
                   else
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+1,x+3) < c_b
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                if image(y+2,x+2) < c_b
                 if image(y+1,x+3) < c_b
                  if image(y+0,x+3) < c_b
                   if image(y+-1,x+3) < c_b
                    if image(y+-2,x+2) < c_b
                     if image(y+-3,x+1) < c_b
                     else
                      continue
                     end
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              else
               continue
              end
             else
              continue
             end
            else
             continue
            end
           end
          else
           if image(y+-3,x+1) > cb 
            if image(y+-3,x+0) > cb 
             if image(y+-3,x+-1) > cb 
              if image(y+-2,x+2) > cb 
               if image(y+-1,x+3) > cb 
                if image(y+0,x+3) > cb 
                 if image(y+1,x+3) > cb 
                  if image(y+2,x+2) > cb 
                   if image(y+3,x+1) > cb 
                   else
                    if image(y+-2,x+-2) > cb 
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-2,x+-2) > cb 
                    if image(y+-1,x+-3) > cb 
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+-2,x+-2) > cb 
                   if image(y+-1,x+-3) > cb 
                    if image(y+0,x+-3) > cb 
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+-2,x+-2) > cb 
                  if image(y+-1,x+-3) > cb 
                   if image(y+0,x+-3) > cb 
                    if image(y+1,x+-3) > cb 
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                if image(y+-2,x+-2) > cb 
                 if image(y+-1,x+-3) > cb 
                  if image(y+0,x+-3) > cb 
                   if image(y+1,x+-3) > cb 
                    if image(y+2,x+-2) > cb 
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              else
               if image(y+-2,x+-2) > cb 
                if image(y+-1,x+-3) > cb 
                 if image(y+0,x+-3) > cb 
                  if image(y+1,x+-3) > cb 
                   if image(y+2,x+-2) > cb 
                    if image(y+3,x+-1) > cb 
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                continue
               end
              end
             else
              continue
             end
            else
             continue
            end
           elseif image(y+-3,x+1) < c_b 
            if image(y+-3,x+0) < c_b
             if image(y+-3,x+-1) < c_b
              if image(y+-2,x+2) < c_b
               if image(y+-1,x+3) < c_b
                if image(y+0,x+3) < c_b
                 if image(y+1,x+3) < c_b
                  if image(y+2,x+2) < c_b
                   if image(y+3,x+1) < c_b
                   else
                    if image(y+-2,x+-2) < c_b
                    else
                     continue
                    end
                   end
                  else
                   if image(y+-2,x+-2) < c_b
                    if image(y+-1,x+-3) < c_b
                    else
                     continue
                    end
                   else
                    continue
                   end
                  end
                 else
                  if image(y+-2,x+-2) < c_b
                   if image(y+-1,x+-3) < c_b
                    if image(y+0,x+-3) < c_b
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 end
                else
                 if image(y+-2,x+-2) < c_b
                  if image(y+-1,x+-3) < c_b
                   if image(y+0,x+-3) < c_b
                    if image(y+1,x+-3) < c_b
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                end
               else
                if image(y+-2,x+-2) < c_b
                 if image(y+-1,x+-3) < c_b
                  if image(y+0,x+-3) < c_b
                   if image(y+1,x+-3) < c_b
                    if image(y+2,x+-2) < c_b
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               end
              else
               if image(y+-2,x+-2) < c_b
                if image(y+-1,x+-3) < c_b
                 if image(y+0,x+-3) < c_b
                  if image(y+1,x+-3) < c_b
                   if image(y+2,x+-2) < c_b
                    if image(y+3,x+-1) < c_b
                    else
                     continue
                    end
                   else
                    continue
                   end
                  else
                   continue
                  end
                 else
                  continue
                 end
                else
                 continue
                end
               else
                continue
               end
              end
             else
              continue
             end
            else
             continue
            end
           else
            continue
           end
          end




				
			num_corners = num_corners + 1;
			corners(num_corners, 1) = x;
			corners(num_corners, 2) = y;
			
			if num_corners == length(corners)
				corners(end*2,1)=0;
			end
		end
	end

	corners = corners(1:num_corners, :);

	if ~exist('do_nonmax')
		do_nonmax=0;
	end
		
	if nargout == 2 | do_nonmax

		scores = zeros(num_corners, 1);

		for i=1:num_corners
			scores(i) = corner_score(image, corners(i, 1), corners(i, 2));
		end
	end

	if do_nonmax
		rows = size(image, 1);
		offsets = [ rows+1 rows rows-1 1 -1 -rows+1 -rows -rows-1];

	
		rcorners=zeros(size(corners));
		rscores=zeros(size(scores));
		num_nonmax=0;
	
		score_image = -ones(size(image));

		score_image(sub2ind(size(image), corners(:,2), corners(:,1))) = scores;

		for i=1:num_corners
			pos = sub2ind(size(image), corners(i,2), corners(i, 1));

			if all(score_image(pos) > score_image(pos + offsets))
				num_nonmax = num_nonmax+1;
				rcorners(num_nonmax,:) = corners(i,:);
				rscores(num_nonmax) = scores(i);
			end
		end

		corners = rcorners(1:num_nonmax, :);
		scores = rscores(1:num_nonmax);




    end

    
    %uses loop unrolling methods to make the algorithm faster
function c = is_a_corner(i, posx, posy, b)
	cb = i(posy, posx) + b;
	c_b = i(posy, posx) - b;
        if i(posy+3,posx+0) > cb 
         if i(posy+3,posx+1) > cb 
          if i(posy+2,posx+2) > cb 
           if i(posy+1,posx+3) > cb 
            if i(posy+0,posx+3) > cb 
             if i(posy+-1,posx+3) > cb 
              if i(posy+-2,posx+2) > cb 
               if i(posy+-3,posx+1) > cb 
                if i(posy+-3,posx+0) > cb 
                 c=1; return
                else
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  c=0; return
                 end
                end
               elseif i(posy+-3,posx+1) < c_b 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  c=0; return
                 end
                elseif i(posy+2,posx+-2) < c_b 
                 if i(posy+-3,posx+0) < c_b
                  if i(posy+-3,posx+-1) < c_b
                   if i(posy+-2,posx+-2) < c_b
                    if i(posy+-1,posx+-3) < c_b
                     if i(posy+0,posx+-3) < c_b
                      if i(posy+1,posx+-3) < c_b
                       if i(posy+3,posx+-1) < c_b
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              elseif i(posy+-2,posx+2) < c_b 
               if i(posy+3,posx+-1) > cb 
                if i(posy+1,posx+-3) > cb 
                 if i(posy+2,posx+-2) > cb 
                  c=1; return
                 else
                  c=0; return
                 end
                elseif i(posy+1,posx+-3) < c_b 
                 if i(posy+-3,posx+1) < c_b
                  if i(posy+-3,posx+0) < c_b
                   if i(posy+-3,posx+-1) < c_b
                    if i(posy+-2,posx+-2) < c_b
                     if i(posy+-1,posx+-3) < c_b
                      if i(posy+0,posx+-3) < c_b
                       if i(posy+2,posx+-2) < c_b
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                if i(posy+-3,posx+1) < c_b
                 if i(posy+-3,posx+0) < c_b
                  if i(posy+-3,posx+-1) < c_b
                   if i(posy+-2,posx+-2) < c_b
                    if i(posy+-1,posx+-3) < c_b
                     if i(posy+0,posx+-3) < c_b
                      if i(posy+1,posx+-3) < c_b
                       if i(posy+2,posx+-2) < c_b
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+1,posx+-3) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               elseif i(posy+1,posx+-3) < c_b 
                if i(posy+-3,posx+1) < c_b
                 if i(posy+-3,posx+0) < c_b
                  if i(posy+-3,posx+-1) < c_b
                   if i(posy+-2,posx+-2) < c_b
                    if i(posy+-1,posx+-3) < c_b
                     if i(posy+0,posx+-3) < c_b
                      if i(posy+2,posx+-2) < c_b
                       if i(posy+3,posx+-1) < c_b
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             elseif i(posy+-1,posx+3) < c_b 
              if i(posy+2,posx+-2) > cb 
               if i(posy+0,posx+-3) > cb 
                if i(posy+1,posx+-3) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      if i(posy+-2,posx+-2) > cb 
                       if i(posy+-1,posx+-3) > cb 
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 c=0; return
                end
               elseif i(posy+0,posx+-3) < c_b 
                if i(posy+-2,posx+2) < c_b
                 if i(posy+-3,posx+1) < c_b
                  if i(posy+-3,posx+0) < c_b
                   if i(posy+-3,posx+-1) < c_b
                    if i(posy+-2,posx+-2) < c_b
                     if i(posy+-1,posx+-3) < c_b
                      if i(posy+1,posx+-3) < c_b
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              elseif i(posy+2,posx+-2) < c_b 
               if i(posy+-3,posx+1) < c_b
                if i(posy+-3,posx+0) < c_b
                 if i(posy+-3,posx+-1) < c_b
                  if i(posy+-2,posx+-2) < c_b
                   if i(posy+-1,posx+-3) < c_b
                    if i(posy+0,posx+-3) < c_b
                     if i(posy+1,posx+-3) < c_b
                      if i(posy+-2,posx+2) < c_b
                       c=1; return
                      else
                       if i(posy+3,posx+-1) < c_b
                        c=1; return
                       else
                        c=0; return
                       end
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               if i(posy+-2,posx+2) < c_b
                if i(posy+-3,posx+1) < c_b
                 if i(posy+-3,posx+0) < c_b
                  if i(posy+-3,posx+-1) < c_b
                   if i(posy+-2,posx+-2) < c_b
                    if i(posy+-1,posx+-3) < c_b
                     if i(posy+0,posx+-3) < c_b
                      if i(posy+1,posx+-3) < c_b
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              if i(posy+0,posx+-3) > cb 
               if i(posy+1,posx+-3) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      if i(posy+-2,posx+-2) > cb 
                       if i(posy+-1,posx+-3) > cb 
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              elseif i(posy+0,posx+-3) < c_b 
               if i(posy+-3,posx+1) < c_b
                if i(posy+-3,posx+0) < c_b
                 if i(posy+-3,posx+-1) < c_b
                  if i(posy+-2,posx+-2) < c_b
                   if i(posy+-1,posx+-3) < c_b
                    if i(posy+1,posx+-3) < c_b
                     if i(posy+2,posx+-2) < c_b
                      if i(posy+-2,posx+2) < c_b
                       c=1; return
                      else
                       if i(posy+3,posx+-1) < c_b
                        c=1; return
                       else
                        c=0; return
                       end
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            elseif i(posy+0,posx+3) < c_b 
             if i(posy+1,posx+-3) > cb 
              if i(posy+-1,posx+-3) > cb 
               if i(posy+0,posx+-3) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      if i(posy+-2,posx+-2) > cb 
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      if i(posy+-2,posx+-2) > cb 
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                c=0; return
               end
              elseif i(posy+-1,posx+-3) < c_b 
               if i(posy+-1,posx+3) < c_b
                if i(posy+-2,posx+2) < c_b
                 if i(posy+-3,posx+1) < c_b
                  if i(posy+-3,posx+0) < c_b
                   if i(posy+-3,posx+-1) < c_b
                    if i(posy+-2,posx+-2) < c_b
                     if i(posy+0,posx+-3) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             elseif i(posy+1,posx+-3) < c_b 
              if i(posy+-3,posx+1) < c_b
               if i(posy+-3,posx+0) < c_b
                if i(posy+-3,posx+-1) < c_b
                 if i(posy+-2,posx+-2) < c_b
                  if i(posy+-1,posx+-3) < c_b
                   if i(posy+0,posx+-3) < c_b
                    if i(posy+-2,posx+2) < c_b
                     if i(posy+-1,posx+3) < c_b
                      c=1; return
                     else
                      if i(posy+2,posx+-2) < c_b
                       c=1; return
                      else
                       c=0; return
                      end
                     end
                    else
                     if i(posy+2,posx+-2) < c_b
                      if i(posy+3,posx+-1) < c_b
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              if i(posy+-1,posx+3) < c_b
               if i(posy+-2,posx+2) < c_b
                if i(posy+-3,posx+1) < c_b
                 if i(posy+-3,posx+0) < c_b
                  if i(posy+-3,posx+-1) < c_b
                   if i(posy+-2,posx+-2) < c_b
                    if i(posy+-1,posx+-3) < c_b
                     if i(posy+0,posx+-3) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            else
             if i(posy+-1,posx+-3) > cb 
              if i(posy+0,posx+-3) > cb 
               if i(posy+1,posx+-3) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      if i(posy+-2,posx+-2) > cb 
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      if i(posy+-2,posx+-2) > cb 
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             elseif i(posy+-1,posx+-3) < c_b 
              if i(posy+-3,posx+1) < c_b
               if i(posy+-3,posx+0) < c_b
                if i(posy+-3,posx+-1) < c_b
                 if i(posy+-2,posx+-2) < c_b
                  if i(posy+0,posx+-3) < c_b
                   if i(posy+1,posx+-3) < c_b
                    if i(posy+-2,posx+2) < c_b
                     if i(posy+-1,posx+3) < c_b
                      c=1; return
                     else
                      if i(posy+2,posx+-2) < c_b
                       c=1; return
                      else
                       c=0; return
                      end
                     end
                    else
                     if i(posy+2,posx+-2) < c_b
                      if i(posy+3,posx+-1) < c_b
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            end
           elseif i(posy+1,posx+3) < c_b 
            if i(posy+-2,posx+-2) > cb 
             if i(posy+-1,posx+-3) > cb 
              if i(posy+0,posx+-3) > cb 
               if i(posy+1,posx+-3) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            elseif i(posy+-2,posx+-2) < c_b 
             if i(posy+-3,posx+1) < c_b
              if i(posy+-3,posx+0) < c_b
               if i(posy+-3,posx+-1) < c_b
                if i(posy+-1,posx+-3) < c_b
                 if i(posy+-2,posx+2) < c_b
                  if i(posy+-1,posx+3) < c_b
                   if i(posy+0,posx+3) < c_b
                    c=1; return
                   else
                    if i(posy+0,posx+-3) < c_b
                     if i(posy+1,posx+-3) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   end
                  else
                   if i(posy+0,posx+-3) < c_b
                    if i(posy+1,posx+-3) < c_b
                     if i(posy+2,posx+-2) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  end
                 else
                  if i(posy+0,posx+-3) < c_b
                   if i(posy+1,posx+-3) < c_b
                    if i(posy+2,posx+-2) < c_b
                     if i(posy+3,posx+-1) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           else
            if i(posy+-2,posx+-2) > cb 
             if i(posy+-1,posx+-3) > cb 
              if i(posy+0,posx+-3) > cb 
               if i(posy+1,posx+-3) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     if i(posy+-3,posx+-1) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            elseif i(posy+-2,posx+-2) < c_b 
             if i(posy+-3,posx+1) < c_b
              if i(posy+-3,posx+0) < c_b
               if i(posy+-3,posx+-1) < c_b
                if i(posy+-1,posx+-3) < c_b
                 if i(posy+0,posx+-3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-1,posx+3) < c_b
                    if i(posy+0,posx+3) < c_b
                     c=1; return
                    else
                     if i(posy+1,posx+-3) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    end
                   else
                    if i(posy+1,posx+-3) < c_b
                     if i(posy+2,posx+-2) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   end
                  else
                   if i(posy+1,posx+-3) < c_b
                    if i(posy+2,posx+-2) < c_b
                     if i(posy+3,posx+-1) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           end
          elseif i(posy+2,posx+2) < c_b 
           if i(posy+-3,posx+-1) > cb 
            if i(posy+-2,posx+-2) > cb 
             if i(posy+-1,posx+-3) > cb 
              if i(posy+0,posx+-3) > cb 
               if i(posy+1,posx+-3) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+1,posx+3) > cb 
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           elseif i(posy+-3,posx+-1) < c_b 
            if i(posy+-3,posx+1) < c_b
             if i(posy+-3,posx+0) < c_b
              if i(posy+-2,posx+-2) < c_b
               if i(posy+-2,posx+2) < c_b
                if i(posy+-1,posx+3) < c_b
                 if i(posy+0,posx+3) < c_b
                  if i(posy+1,posx+3) < c_b
                   c=1; return
                  else
                   if i(posy+-1,posx+-3) < c_b
                    if i(posy+0,posx+-3) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  end
                 else
                  if i(posy+-1,posx+-3) < c_b
                   if i(posy+0,posx+-3) < c_b
                    if i(posy+1,posx+-3) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+-3) < c_b
                  if i(posy+0,posx+-3) < c_b
                   if i(posy+1,posx+-3) < c_b
                    if i(posy+2,posx+-2) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+-1,posx+-3) < c_b
                 if i(posy+0,posx+-3) < c_b
                  if i(posy+1,posx+-3) < c_b
                   if i(posy+2,posx+-2) < c_b
                    if i(posy+3,posx+-1) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          else
           if i(posy+-3,posx+-1) > cb 
            if i(posy+-2,posx+-2) > cb 
             if i(posy+-1,posx+-3) > cb 
              if i(posy+0,posx+-3) > cb 
               if i(posy+1,posx+-3) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+1,posx+3) > cb 
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    if i(posy+-3,posx+0) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           elseif i(posy+-3,posx+-1) < c_b 
            if i(posy+-3,posx+1) < c_b
             if i(posy+-3,posx+0) < c_b
              if i(posy+-2,posx+-2) < c_b
               if i(posy+-1,posx+-3) < c_b
                if i(posy+-2,posx+2) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+0,posx+3) < c_b
                   if i(posy+1,posx+3) < c_b
                    c=1; return
                   else
                    if i(posy+0,posx+-3) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   end
                  else
                   if i(posy+0,posx+-3) < c_b
                    if i(posy+1,posx+-3) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  end
                 else
                  if i(posy+0,posx+-3) < c_b
                   if i(posy+1,posx+-3) < c_b
                    if i(posy+2,posx+-2) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+0,posx+-3) < c_b
                  if i(posy+1,posx+-3) < c_b
                   if i(posy+2,posx+-2) < c_b
                    if i(posy+3,posx+-1) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          end
         elseif i(posy+3,posx+1) < c_b 
          if i(posy+-3,posx+0) > cb 
           if i(posy+-3,posx+-1) > cb 
            if i(posy+-2,posx+-2) > cb 
             if i(posy+-1,posx+-3) > cb 
              if i(posy+0,posx+-3) > cb 
               if i(posy+1,posx+-3) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+1,posx+3) > cb 
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              if i(posy+2,posx+2) > cb 
               if i(posy+1,posx+3) > cb 
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          elseif i(posy+-3,posx+0) < c_b 
           if i(posy+-3,posx+1) < c_b
            if i(posy+-3,posx+-1) < c_b
             if i(posy+-2,posx+2) < c_b
              if i(posy+-1,posx+3) < c_b
               if i(posy+0,posx+3) < c_b
                if i(posy+1,posx+3) < c_b
                 if i(posy+2,posx+2) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+-2) < c_b
                   if i(posy+-1,posx+-3) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-2,posx+-2) < c_b
                  if i(posy+-1,posx+-3) < c_b
                   if i(posy+0,posx+-3) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+-2,posx+-2) < c_b
                 if i(posy+-1,posx+-3) < c_b
                  if i(posy+0,posx+-3) < c_b
                   if i(posy+1,posx+-3) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+-2,posx+-2) < c_b
                if i(posy+-1,posx+-3) < c_b
                 if i(posy+0,posx+-3) < c_b
                  if i(posy+1,posx+-3) < c_b
                   if i(posy+2,posx+-2) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              if i(posy+-2,posx+-2) < c_b
               if i(posy+-1,posx+-3) < c_b
                if i(posy+0,posx+-3) < c_b
                 if i(posy+1,posx+-3) < c_b
                  if i(posy+2,posx+-2) < c_b
                   if i(posy+3,posx+-1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          else
           c=0; return
          end
         else
          if i(posy+-3,posx+0) > cb 
           if i(posy+-3,posx+-1) > cb 
            if i(posy+-2,posx+-2) > cb 
             if i(posy+-1,posx+-3) > cb 
              if i(posy+0,posx+-3) > cb 
               if i(posy+1,posx+-3) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+3,posx+-1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+1,posx+3) > cb 
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              if i(posy+2,posx+2) > cb 
               if i(posy+1,posx+3) > cb 
                if i(posy+0,posx+3) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-3,posx+1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          elseif i(posy+-3,posx+0) < c_b 
           if i(posy+-3,posx+1) < c_b
            if i(posy+-3,posx+-1) < c_b
             if i(posy+-2,posx+-2) < c_b
              if i(posy+-2,posx+2) < c_b
               if i(posy+-1,posx+3) < c_b
                if i(posy+0,posx+3) < c_b
                 if i(posy+1,posx+3) < c_b
                  if i(posy+2,posx+2) < c_b
                   c=1; return
                  else
                   if i(posy+-1,posx+-3) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  end
                 else
                  if i(posy+-1,posx+-3) < c_b
                   if i(posy+0,posx+-3) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+-3) < c_b
                  if i(posy+0,posx+-3) < c_b
                   if i(posy+1,posx+-3) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+-1,posx+-3) < c_b
                 if i(posy+0,posx+-3) < c_b
                  if i(posy+1,posx+-3) < c_b
                   if i(posy+2,posx+-2) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+-1,posx+-3) < c_b
                if i(posy+0,posx+-3) < c_b
                 if i(posy+1,posx+-3) < c_b
                  if i(posy+2,posx+-2) < c_b
                   if i(posy+3,posx+-1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          else
           c=0; return
          end
         end
        elseif i(posy+3,posx+0) < c_b 
         if i(posy+3,posx+1) > cb 
          if i(posy+-3,posx+0) > cb 
           if i(posy+-3,posx+1) > cb 
            if i(posy+-3,posx+-1) > cb 
             if i(posy+-2,posx+2) > cb 
              if i(posy+-1,posx+3) > cb 
               if i(posy+0,posx+3) > cb 
                if i(posy+1,posx+3) > cb 
                 if i(posy+2,posx+2) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+-2) > cb 
                   if i(posy+-1,posx+-3) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-2,posx+-2) > cb 
                  if i(posy+-1,posx+-3) > cb 
                   if i(posy+0,posx+-3) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+-2,posx+-2) > cb 
                 if i(posy+-1,posx+-3) > cb 
                  if i(posy+0,posx+-3) > cb 
                   if i(posy+1,posx+-3) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+-2,posx+-2) > cb 
                if i(posy+-1,posx+-3) > cb 
                 if i(posy+0,posx+-3) > cb 
                  if i(posy+1,posx+-3) > cb 
                   if i(posy+2,posx+-2) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              if i(posy+-2,posx+-2) > cb 
               if i(posy+-1,posx+-3) > cb 
                if i(posy+0,posx+-3) > cb 
                 if i(posy+1,posx+-3) > cb 
                  if i(posy+2,posx+-2) > cb 
                   if i(posy+3,posx+-1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          elseif i(posy+-3,posx+0) < c_b 
           if i(posy+-3,posx+-1) < c_b
            if i(posy+-2,posx+-2) < c_b
             if i(posy+-1,posx+-3) < c_b
              if i(posy+0,posx+-3) < c_b
               if i(posy+1,posx+-3) < c_b
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+1,posx+3) < c_b
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              if i(posy+2,posx+2) < c_b
               if i(posy+1,posx+3) < c_b
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          else
           c=0; return
          end
         elseif i(posy+3,posx+1) < c_b 
          if i(posy+2,posx+2) > cb 
           if i(posy+-3,posx+-1) > cb 
            if i(posy+-3,posx+1) > cb 
             if i(posy+-3,posx+0) > cb 
              if i(posy+-2,posx+-2) > cb 
               if i(posy+-2,posx+2) > cb 
                if i(posy+-1,posx+3) > cb 
                 if i(posy+0,posx+3) > cb 
                  if i(posy+1,posx+3) > cb 
                   c=1; return
                  else
                   if i(posy+-1,posx+-3) > cb 
                    if i(posy+0,posx+-3) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  end
                 else
                  if i(posy+-1,posx+-3) > cb 
                   if i(posy+0,posx+-3) > cb 
                    if i(posy+1,posx+-3) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+-3) > cb 
                  if i(posy+0,posx+-3) > cb 
                   if i(posy+1,posx+-3) > cb 
                    if i(posy+2,posx+-2) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+-1,posx+-3) > cb 
                 if i(posy+0,posx+-3) > cb 
                  if i(posy+1,posx+-3) > cb 
                   if i(posy+2,posx+-2) > cb 
                    if i(posy+3,posx+-1) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           elseif i(posy+-3,posx+-1) < c_b 
            if i(posy+-2,posx+-2) < c_b
             if i(posy+-1,posx+-3) < c_b
              if i(posy+0,posx+-3) < c_b
               if i(posy+1,posx+-3) < c_b
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+1,posx+3) < c_b
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          elseif i(posy+2,posx+2) < c_b 
           if i(posy+1,posx+3) > cb 
            if i(posy+-2,posx+-2) > cb 
             if i(posy+-3,posx+1) > cb 
              if i(posy+-3,posx+0) > cb 
               if i(posy+-3,posx+-1) > cb 
                if i(posy+-1,posx+-3) > cb 
                 if i(posy+-2,posx+2) > cb 
                  if i(posy+-1,posx+3) > cb 
                   if i(posy+0,posx+3) > cb 
                    c=1; return
                   else
                    if i(posy+0,posx+-3) > cb 
                     if i(posy+1,posx+-3) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   end
                  else
                   if i(posy+0,posx+-3) > cb 
                    if i(posy+1,posx+-3) > cb 
                     if i(posy+2,posx+-2) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  end
                 else
                  if i(posy+0,posx+-3) > cb 
                   if i(posy+1,posx+-3) > cb 
                    if i(posy+2,posx+-2) > cb 
                     if i(posy+3,posx+-1) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            elseif i(posy+-2,posx+-2) < c_b 
             if i(posy+-1,posx+-3) < c_b
              if i(posy+0,posx+-3) < c_b
               if i(posy+1,posx+-3) < c_b
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           elseif i(posy+1,posx+3) < c_b 
            if i(posy+0,posx+3) > cb 
             if i(posy+1,posx+-3) > cb 
              if i(posy+-3,posx+1) > cb 
               if i(posy+-3,posx+0) > cb 
                if i(posy+-3,posx+-1) > cb 
                 if i(posy+-2,posx+-2) > cb 
                  if i(posy+-1,posx+-3) > cb 
                   if i(posy+0,posx+-3) > cb 
                    if i(posy+-2,posx+2) > cb 
                     if i(posy+-1,posx+3) > cb 
                      c=1; return
                     else
                      if i(posy+2,posx+-2) > cb 
                       c=1; return
                      else
                       c=0; return
                      end
                     end
                    else
                     if i(posy+2,posx+-2) > cb 
                      if i(posy+3,posx+-1) > cb 
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             elseif i(posy+1,posx+-3) < c_b 
              if i(posy+-1,posx+-3) > cb 
               if i(posy+-1,posx+3) > cb 
                if i(posy+-2,posx+2) > cb 
                 if i(posy+-3,posx+1) > cb 
                  if i(posy+-3,posx+0) > cb 
                   if i(posy+-3,posx+-1) > cb 
                    if i(posy+-2,posx+-2) > cb 
                     if i(posy+0,posx+-3) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              elseif i(posy+-1,posx+-3) < c_b 
               if i(posy+0,posx+-3) < c_b
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      if i(posy+-2,posx+-2) < c_b
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      if i(posy+-2,posx+-2) < c_b
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              if i(posy+-1,posx+3) > cb 
               if i(posy+-2,posx+2) > cb 
                if i(posy+-3,posx+1) > cb 
                 if i(posy+-3,posx+0) > cb 
                  if i(posy+-3,posx+-1) > cb 
                   if i(posy+-2,posx+-2) > cb 
                    if i(posy+-1,posx+-3) > cb 
                     if i(posy+0,posx+-3) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            elseif i(posy+0,posx+3) < c_b 
             if i(posy+-1,posx+3) > cb 
              if i(posy+2,posx+-2) > cb 
               if i(posy+-3,posx+1) > cb 
                if i(posy+-3,posx+0) > cb 
                 if i(posy+-3,posx+-1) > cb 
                  if i(posy+-2,posx+-2) > cb 
                   if i(posy+-1,posx+-3) > cb 
                    if i(posy+0,posx+-3) > cb 
                     if i(posy+1,posx+-3) > cb 
                      if i(posy+-2,posx+2) > cb 
                       c=1; return
                      else
                       if i(posy+3,posx+-1) > cb 
                        c=1; return
                       else
                        c=0; return
                       end
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              elseif i(posy+2,posx+-2) < c_b 
               if i(posy+0,posx+-3) > cb 
                if i(posy+-2,posx+2) > cb 
                 if i(posy+-3,posx+1) > cb 
                  if i(posy+-3,posx+0) > cb 
                   if i(posy+-3,posx+-1) > cb 
                    if i(posy+-2,posx+-2) > cb 
                     if i(posy+-1,posx+-3) > cb 
                      if i(posy+1,posx+-3) > cb 
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               elseif i(posy+0,posx+-3) < c_b 
                if i(posy+1,posx+-3) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      if i(posy+-2,posx+-2) < c_b
                       if i(posy+-1,posx+-3) < c_b
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               if i(posy+-2,posx+2) > cb 
                if i(posy+-3,posx+1) > cb 
                 if i(posy+-3,posx+0) > cb 
                  if i(posy+-3,posx+-1) > cb 
                   if i(posy+-2,posx+-2) > cb 
                    if i(posy+-1,posx+-3) > cb 
                     if i(posy+0,posx+-3) > cb 
                      if i(posy+1,posx+-3) > cb 
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             elseif i(posy+-1,posx+3) < c_b 
              if i(posy+-2,posx+2) > cb 
               if i(posy+3,posx+-1) < c_b
                if i(posy+1,posx+-3) > cb 
                 if i(posy+-3,posx+1) > cb 
                  if i(posy+-3,posx+0) > cb 
                   if i(posy+-3,posx+-1) > cb 
                    if i(posy+-2,posx+-2) > cb 
                     if i(posy+-1,posx+-3) > cb 
                      if i(posy+0,posx+-3) > cb 
                       if i(posy+2,posx+-2) > cb 
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                elseif i(posy+1,posx+-3) < c_b 
                 if i(posy+2,posx+-2) < c_b
                  c=1; return
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                if i(posy+-3,posx+1) > cb 
                 if i(posy+-3,posx+0) > cb 
                  if i(posy+-3,posx+-1) > cb 
                   if i(posy+-2,posx+-2) > cb 
                    if i(posy+-1,posx+-3) > cb 
                     if i(posy+0,posx+-3) > cb 
                      if i(posy+1,posx+-3) > cb 
                       if i(posy+2,posx+-2) > cb 
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              elseif i(posy+-2,posx+2) < c_b 
               if i(posy+-3,posx+1) > cb 
                if i(posy+2,posx+-2) > cb 
                 if i(posy+-3,posx+0) > cb 
                  if i(posy+-3,posx+-1) > cb 
                   if i(posy+-2,posx+-2) > cb 
                    if i(posy+-1,posx+-3) > cb 
                     if i(posy+0,posx+-3) > cb 
                      if i(posy+1,posx+-3) > cb 
                       if i(posy+3,posx+-1) > cb 
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                elseif i(posy+2,posx+-2) < c_b 
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               elseif i(posy+-3,posx+1) < c_b 
                if i(posy+-3,posx+0) < c_b
                 c=1; return
                else
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+1,posx+-3) > cb 
                if i(posy+-3,posx+1) > cb 
                 if i(posy+-3,posx+0) > cb 
                  if i(posy+-3,posx+-1) > cb 
                   if i(posy+-2,posx+-2) > cb 
                    if i(posy+-1,posx+-3) > cb 
                     if i(posy+0,posx+-3) > cb 
                      if i(posy+2,posx+-2) > cb 
                       if i(posy+3,posx+-1) > cb 
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               elseif i(posy+1,posx+-3) < c_b 
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              if i(posy+0,posx+-3) > cb 
               if i(posy+-3,posx+1) > cb 
                if i(posy+-3,posx+0) > cb 
                 if i(posy+-3,posx+-1) > cb 
                  if i(posy+-2,posx+-2) > cb 
                   if i(posy+-1,posx+-3) > cb 
                    if i(posy+1,posx+-3) > cb 
                     if i(posy+2,posx+-2) > cb 
                      if i(posy+-2,posx+2) > cb 
                       c=1; return
                      else
                       if i(posy+3,posx+-1) > cb 
                        c=1; return
                       else
                        c=0; return
                       end
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              elseif i(posy+0,posx+-3) < c_b 
               if i(posy+1,posx+-3) < c_b
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      if i(posy+-2,posx+-2) < c_b
                       if i(posy+-1,posx+-3) < c_b
                        c=1; return
                       else
                        c=0; return
                       end
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            else
             if i(posy+-1,posx+-3) > cb 
              if i(posy+-3,posx+1) > cb 
               if i(posy+-3,posx+0) > cb 
                if i(posy+-3,posx+-1) > cb 
                 if i(posy+-2,posx+-2) > cb 
                  if i(posy+0,posx+-3) > cb 
                   if i(posy+1,posx+-3) > cb 
                    if i(posy+-2,posx+2) > cb 
                     if i(posy+-1,posx+3) > cb 
                      c=1; return
                     else
                      if i(posy+2,posx+-2) > cb 
                       c=1; return
                      else
                       c=0; return
                      end
                     end
                    else
                     if i(posy+2,posx+-2) > cb 
                      if i(posy+3,posx+-1) > cb 
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             elseif i(posy+-1,posx+-3) < c_b 
              if i(posy+0,posx+-3) < c_b
               if i(posy+1,posx+-3) < c_b
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      if i(posy+-2,posx+-2) < c_b
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      if i(posy+-2,posx+-2) < c_b
                       c=1; return
                      else
                       c=0; return
                      end
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            end
           else
            if i(posy+-2,posx+-2) > cb 
             if i(posy+-3,posx+1) > cb 
              if i(posy+-3,posx+0) > cb 
               if i(posy+-3,posx+-1) > cb 
                if i(posy+-1,posx+-3) > cb 
                 if i(posy+0,posx+-3) > cb 
                  if i(posy+-2,posx+2) > cb 
                   if i(posy+-1,posx+3) > cb 
                    if i(posy+0,posx+3) > cb 
                     c=1; return
                    else
                     if i(posy+1,posx+-3) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    end
                   else
                    if i(posy+1,posx+-3) > cb 
                     if i(posy+2,posx+-2) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   end
                  else
                   if i(posy+1,posx+-3) > cb 
                    if i(posy+2,posx+-2) > cb 
                     if i(posy+3,posx+-1) > cb 
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            elseif i(posy+-2,posx+-2) < c_b 
             if i(posy+-1,posx+-3) < c_b
              if i(posy+0,posx+-3) < c_b
               if i(posy+1,posx+-3) < c_b
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     if i(posy+-3,posx+-1) < c_b
                      c=1; return
                     else
                      c=0; return
                     end
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           end
          else
           if i(posy+-3,posx+-1) > cb 
            if i(posy+-3,posx+1) > cb 
             if i(posy+-3,posx+0) > cb 
              if i(posy+-2,posx+-2) > cb 
               if i(posy+-1,posx+-3) > cb 
                if i(posy+-2,posx+2) > cb 
                 if i(posy+-1,posx+3) > cb 
                  if i(posy+0,posx+3) > cb 
                   if i(posy+1,posx+3) > cb 
                    c=1; return
                   else
                    if i(posy+0,posx+-3) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   end
                  else
                   if i(posy+0,posx+-3) > cb 
                    if i(posy+1,posx+-3) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  end
                 else
                  if i(posy+0,posx+-3) > cb 
                   if i(posy+1,posx+-3) > cb 
                    if i(posy+2,posx+-2) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+0,posx+-3) > cb 
                  if i(posy+1,posx+-3) > cb 
                   if i(posy+2,posx+-2) > cb 
                    if i(posy+3,posx+-1) > cb 
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           elseif i(posy+-3,posx+-1) < c_b 
            if i(posy+-2,posx+-2) < c_b
             if i(posy+-1,posx+-3) < c_b
              if i(posy+0,posx+-3) < c_b
               if i(posy+1,posx+-3) < c_b
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+1,posx+3) < c_b
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    if i(posy+-3,posx+0) < c_b
                     c=1; return
                    else
                     c=0; return
                    end
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          end
         else
          if i(posy+-3,posx+0) > cb 
           if i(posy+-3,posx+1) > cb 
            if i(posy+-3,posx+-1) > cb 
             if i(posy+-2,posx+-2) > cb 
              if i(posy+-2,posx+2) > cb 
               if i(posy+-1,posx+3) > cb 
                if i(posy+0,posx+3) > cb 
                 if i(posy+1,posx+3) > cb 
                  if i(posy+2,posx+2) > cb 
                   c=1; return
                  else
                   if i(posy+-1,posx+-3) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  end
                 else
                  if i(posy+-1,posx+-3) > cb 
                   if i(posy+0,posx+-3) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+-3) > cb 
                  if i(posy+0,posx+-3) > cb 
                   if i(posy+1,posx+-3) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+-1,posx+-3) > cb 
                 if i(posy+0,posx+-3) > cb 
                  if i(posy+1,posx+-3) > cb 
                   if i(posy+2,posx+-2) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+-1,posx+-3) > cb 
                if i(posy+0,posx+-3) > cb 
                 if i(posy+1,posx+-3) > cb 
                  if i(posy+2,posx+-2) > cb 
                   if i(posy+3,posx+-1) > cb 
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              c=0; return
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          elseif i(posy+-3,posx+0) < c_b 
           if i(posy+-3,posx+-1) < c_b
            if i(posy+-2,posx+-2) < c_b
             if i(posy+-1,posx+-3) < c_b
              if i(posy+0,posx+-3) < c_b
               if i(posy+1,posx+-3) < c_b
                if i(posy+2,posx+-2) < c_b
                 if i(posy+3,posx+-1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+1,posx+3) < c_b
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              if i(posy+2,posx+2) < c_b
               if i(posy+1,posx+3) < c_b
                if i(posy+0,posx+3) < c_b
                 if i(posy+-1,posx+3) < c_b
                  if i(posy+-2,posx+2) < c_b
                   if i(posy+-3,posx+1) < c_b
                    c=1; return
                   else
                    c=0; return
                   end
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            else
             c=0; return
            end
           else
            c=0; return
           end
          else
           c=0; return
          end
         end
        else
         if i(posy+-3,posx+1) > cb 
          if i(posy+-3,posx+0) > cb 
           if i(posy+-3,posx+-1) > cb 
            if i(posy+-2,posx+2) > cb 
             if i(posy+-1,posx+3) > cb 
              if i(posy+0,posx+3) > cb 
               if i(posy+1,posx+3) > cb 
                if i(posy+2,posx+2) > cb 
                 if i(posy+3,posx+1) > cb 
                  c=1; return
                 else
                  if i(posy+-2,posx+-2) > cb 
                   c=1; return
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-2,posx+-2) > cb 
                  if i(posy+-1,posx+-3) > cb 
                   c=1; return
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+-2,posx+-2) > cb 
                 if i(posy+-1,posx+-3) > cb 
                  if i(posy+0,posx+-3) > cb 
                   c=1; return
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+-2,posx+-2) > cb 
                if i(posy+-1,posx+-3) > cb 
                 if i(posy+0,posx+-3) > cb 
                  if i(posy+1,posx+-3) > cb 
                   c=1; return
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              if i(posy+-2,posx+-2) > cb 
               if i(posy+-1,posx+-3) > cb 
                if i(posy+0,posx+-3) > cb 
                 if i(posy+1,posx+-3) > cb 
                  if i(posy+2,posx+-2) > cb 
                   c=1; return
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            else
             if i(posy+-2,posx+-2) > cb 
              if i(posy+-1,posx+-3) > cb 
               if i(posy+0,posx+-3) > cb 
                if i(posy+1,posx+-3) > cb 
                 if i(posy+2,posx+-2) > cb 
                  if i(posy+3,posx+-1) > cb 
                   c=1; return
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            end
           else
            c=0; return
           end
          else
           c=0; return
          end
         elseif i(posy+-3,posx+1) < c_b 
          if i(posy+-3,posx+0) < c_b
           if i(posy+-3,posx+-1) < c_b
            if i(posy+-2,posx+2) < c_b
             if i(posy+-1,posx+3) < c_b
              if i(posy+0,posx+3) < c_b
               if i(posy+1,posx+3) < c_b
                if i(posy+2,posx+2) < c_b
                 if i(posy+3,posx+1) < c_b
                  c=1; return
                 else
                  if i(posy+-2,posx+-2) < c_b
                   c=1; return
                  else
                   c=0; return
                  end
                 end
                else
                 if i(posy+-2,posx+-2) < c_b
                  if i(posy+-1,posx+-3) < c_b
                   c=1; return
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                end
               else
                if i(posy+-2,posx+-2) < c_b
                 if i(posy+-1,posx+-3) < c_b
                  if i(posy+0,posx+-3) < c_b
                   c=1; return
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               end
              else
               if i(posy+-2,posx+-2) < c_b
                if i(posy+-1,posx+-3) < c_b
                 if i(posy+0,posx+-3) < c_b
                  if i(posy+1,posx+-3) < c_b
                   c=1; return
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              end
             else
              if i(posy+-2,posx+-2) < c_b
               if i(posy+-1,posx+-3) < c_b
                if i(posy+0,posx+-3) < c_b
                 if i(posy+1,posx+-3) < c_b
                  if i(posy+2,posx+-2) < c_b
                   c=1; return
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             end
            else
             if i(posy+-2,posx+-2) < c_b
              if i(posy+-1,posx+-3) < c_b
               if i(posy+0,posx+-3) < c_b
                if i(posy+1,posx+-3) < c_b
                 if i(posy+2,posx+-2) < c_b
                  if i(posy+3,posx+-1) < c_b
                   c=1; return
                  else
                   c=0; return
                  end
                 else
                  c=0; return
                 end
                else
                 c=0; return
                end
               else
                c=0; return
               end
              else
               c=0; return
              end
             else
              c=0; return
             end
            end
           else
            c=0; return
           end
          else
           c=0; return
          end
         else
          c=0; return
         end
        end

function bmin = corner_score(i, posx, posy)
    
    bmin = 0;
    bmax = 255;
    b = floor((bmax + bmin)/2);
    
    %Compute the score using binary search
	while(1)
    
		if(is_a_corner(i, posx, posy, b))
           	bmin = b;
		else
            bmax = b;
		end
        
		if bmin == bmax - 1 | bmin == bmax 
			return
		end
		b = floor((bmin + bmax) / 2);
    end
    