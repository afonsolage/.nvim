Vim�UnDo� �9+���%�6���/�s�:L���يm(>:�d              !                       e�!3   	 _�                             ����                                                                                                                                                                                                                                                                                                                                                             e��     �      &          �             �                   �             �             �                   5��                        	                   	       �                                                �                          	                      �                          	                      �                                        �       �                                       �      5�_�                    %        ����                                                                                                                                                                                                                                                                                                                                                             e��    �               &   return {       {     "RRethy/vim-illuminate",     event = "LazyFile",   
  opts = {       delay = 200,       large_file_cutoff = 2000,       large_file_overrides = {         providers = { "lsp" },       },     },     config = function(_, opts)   )    require("illuminate").configure(opts)       (    local function map(key, dir, buffer)   )      vim.keymap.set("n", key, function()   D        require("illuminate")["goto_" .. dir .. "_reference"](false)   [      end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })       end           map("]]", "next")       map("[[", "prev")       K    -- also set it after loading ftplugins, since a lot overwrite [[ and ]]   -    vim.api.nvim_create_autocmd("FileType", {         callback = function()   5        local buffer = vim.api.nvim_get_current_buf()   !        map("]]", "next", buffer)   !        map("[[", "prev", buffer)   
      end,       })     end,   
  keys = {   &    { "]]", desc = "Next Reference" },   &    { "[[", desc = "Prev Reference" },     },   }   }5��           %      &              �      �      5�_�                    '        ����                                                                                                                                                                                                                                                                                                                                                             e��    �               '   return {       {            "RRethy/vim-illuminate",           event = "LazyFile",           opts = {               delay = 200,   %            large_file_cutoff = 2000,   $            large_file_overrides = {   &                providers = { "lsp" },               },   
        },   "        config = function(_, opts)   1            require("illuminate").configure(opts)       0            local function map(key, dir, buffer)   3                vim.keymap.set("n", key, function()   P                    require("illuminate")["goto_" .. dir .. "_reference"](false)   e                end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })               end                   map("]]", "next")               map("[[", "prev")       S            -- also set it after loading ftplugins, since a lot overwrite [[ and ]]   5            vim.api.nvim_create_autocmd("FileType", {   %                callback = function()   A                    local buffer = vim.api.nvim_get_current_buf()   -                    map("]]", "next", buffer)   -                    map("[[", "prev", buffer)                   end,               })           end,           keys = {   .            { "]]", desc = "Next Reference" },   .            { "[[", desc = "Prev Reference" },   
        },       }   }    5��           &       &              �      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e�	     �         '              event = "LazyFile",5��                          0                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        e�     �                       event = "LazyFile",5��                          0                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        e�    �               &   return {       {            "RRethy/vim-illuminate",           opts = {               delay = 200,   %            large_file_cutoff = 2000,   $            large_file_overrides = {   &                providers = { "lsp" },               },   
        },   "        config = function(_, opts)   1            require("illuminate").configure(opts)       0            local function map(key, dir, buffer)   3                vim.keymap.set("n", key, function()   P                    require("illuminate")["goto_" .. dir .. "_reference"](false)   e                end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })               end                   map("]]", "next")               map("[[", "prev")       S            -- also set it after loading ftplugins, since a lot overwrite [[ and ]]   5            vim.api.nvim_create_autocmd("FileType", {   %                callback = function()   A                    local buffer = vim.api.nvim_get_current_buf()   -                    map("]]", "next", buffer)   -                    map("[[", "prev", buffer)                   end,               })           end,           keys = {   .            { "]]", desc = "Next Reference" },   .            { "[[", desc = "Prev Reference" },   
        },       }   }    5��           %       %              �      �      5�_�      
                      ����                                                                                                                                                                                                                                                                                                                                                  V        e�    �               &   return {       {            "RRethy/vim-illuminate",           opts = {               delay = 200,   %            large_file_cutoff = 2000,   $            large_file_overrides = {   &                providers = { "lsp" },               },   
        },   "        config = function(_, opts)   1            require("illuminate").configure(opts)       0            local function map(key, dir, buffer)   3                vim.keymap.set("n", key, function()   P                    require("illuminate")["goto_" .. dir .. "_reference"](false)   e                end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })               end                   map("]]", "next")               map("[[", "prev")       S            -- also set it after loading ftplugins, since a lot overwrite [[ and ]]   5            vim.api.nvim_create_autocmd("FileType", {   %                callback = function()   A                    local buffer = vim.api.nvim_get_current_buf()   -                    map("]]", "next", buffer)   -                    map("[[", "prev", buffer)                   end,               })           end,           keys = {   .            { "]]", desc = "Next Reference" },   .            { "[[", desc = "Prev Reference" },   
        },       }   }    5��           %       %              �      �      5�_�                
          ����                                                                                                                                                                                                                                                                                                                                      
          V       e�+     �   	      &      
        },�      
   &                  },�      	   &      &                providers = { "lsp" },�         &      $            large_file_overrides = {�         &      %            large_file_cutoff = 2000,�         &                  delay = 200,�         &              opts = {5��                         8                      �                         O                      �                         j                      �                         �                      �                         �                      �                         �                      �    	                     �                      5�_�   
                 
   	    ����                                                                                                                                                                                                                                                                                                                                      
          V       e�,    �               &   return {       {            "RRethy/vim-illuminate",           --opts = {               --delay = 200,   '            --large_file_cutoff = 2000,   &            --large_file_overrides = {   (                --providers = { "lsp" },               --},           --},   "        config = function(_, opts)   1            require("illuminate").configure(opts)       0            local function map(key, dir, buffer)   3                vim.keymap.set("n", key, function()   P                    require("illuminate")["goto_" .. dir .. "_reference"](false)   e                end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })               end                   map("]]", "next")               map("[[", "prev")       S            -- also set it after loading ftplugins, since a lot overwrite [[ and ]]   5            vim.api.nvim_create_autocmd("FileType", {   %                callback = function()   A                    local buffer = vim.api.nvim_get_current_buf()   -                    map("]]", "next", buffer)   -                    map("[[", "prev", buffer)                   end,               })           end,           keys = {   .            { "]]", desc = "Next Reference" },   .            { "[[", desc = "Prev Reference" },   
        },       }   }    5��           %       %              �      �      5�_�                       4    ����                                                                                                                                                                                                                                                                                                                                                V       e��     �         '                      �         &    5��                          &                     �                         &                    �                        B                    5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                V       e��     �         '      ,                print("Hello from FileType")5��       ,                  R                     5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                V       e��    �               '   return {       {            "RRethy/vim-illuminate",           --opts = {           --delay = 200,   #        --large_file_cutoff = 2000,   "        --large_file_overrides = {            --providers = { "lsp" },           --},           --},   "        config = function(_, opts)   1            require("illuminate").configure(opts)       0            local function map(key, dir, buffer)   3                vim.keymap.set("n", key, function()   P                    require("illuminate")["goto_" .. dir .. "_reference"](false)   e                end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })               end                   map("]]", "next")               map("[[", "prev")       S            -- also set it after loading ftplugins, since a lot overwrite [[ and ]]   5            vim.api.nvim_create_autocmd("FileType", {   -                print("Hello from FileType");   %                callback = function()   A                    local buffer = vim.api.nvim_get_current_buf()   -                    map("]]", "next", buffer)   -                    map("[[", "prev", buffer)                   end,               })           end,           keys = {   .            { "]]", desc = "Next Reference" },   .            { "[[", desc = "Prev Reference" },   
        },       }   }    5��           &       &              �      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                               ,          ,       V   ,    e��     �                -                print("Hello from FileType"),5��                          &      .               5�_�                       $    ����                                                                                                                                                                                                                                                                                                                               ,          ,       V   ,    e��     �         &    �         &    5��                          L              .       5�_�                           ����                                                                                                                                                                                                                                                                                                                               ,          ,       V   ,    e��     �         '      -                print("Hello from FileType"),5��                         \                     5�_�                       1    ����                                                                                                                                                                                                                                                                                                                               ,          ,       V   ,    e��     �         '      1                    print("Hello from FileType"),5��       0                 |                    �       0                  |                     5�_�                       /    ����                                                                                                                                                                                                                                                                                                                               ,          ,       V   ,    e��    �               '   return {       {            "RRethy/vim-illuminate",           --opts = {           --delay = 200,   #        --large_file_cutoff = 2000,   "        --large_file_overrides = {            --providers = { "lsp" },           --},           --},   "        config = function(_, opts)   1            require("illuminate").configure(opts)       0            local function map(key, dir, buffer)   3                vim.keymap.set("n", key, function()   P                    require("illuminate")["goto_" .. dir .. "_reference"](false)   e                end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })               end                   map("]]", "next")               map("[[", "prev")       S            -- also set it after loading ftplugins, since a lot overwrite [[ and ]]   5            vim.api.nvim_create_autocmd("FileType", {   %                callback = function()   0                    print("Hello from FileType")   A                    local buffer = vim.api.nvim_get_current_buf()   -                    map("]]", "next", buffer)   -                    map("[[", "prev", buffer)                   end,               })           end,           keys = {   .            { "]]", desc = "Next Reference" },   .            { "[[", desc = "Prev Reference" },   
        },       }   }    5��           &       &              �      �      5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             e�!'     �   
      '      "        config = function(_, opts)5��    
   !                  �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                      $   
       V        e�!0     �             !           --opts = {           --delay = 200,   #        --large_file_cutoff = 2000,   "        --large_file_overrides = {            --providers = { "lsp" },           --},           --},   !        config = function(_, opts   1            require("illuminate").configure(opts)       0            local function map(key, dir, buffer)   3                vim.keymap.set("n", key, function()   P                    require("illuminate")["goto_" .. dir .. "_reference"](false)   e                end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })               end                   map("]]", "next")               map("[[", "prev")       S            -- also set it after loading ftplugins, since a lot overwrite [[ and ]]   5            vim.api.nvim_create_autocmd("FileType", {   %                callback = function()   0                    print("Hello from FileType")   A                    local buffer = vim.api.nvim_get_current_buf()   -                    map("]]", "next", buffer)   -                    map("[[", "prev", buffer)                   end,               })           end,           keys = {   .            { "]]", desc = "Next Reference" },   .            { "[[", desc = "Prev Reference" },   
        },5��           !               0       �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                         
       V        e�!2   	 �                  return {       {            "RRethy/vim-illuminate",       }   }    5��                                0       0       5�_�      	       
             ����                                                                                                                                                                                                                                                                                                                                      #   
       V       e��     �         &              --opts = {�         &                  --delay = 200,�         &      '            --large_file_cutoff = 2000,�         &      &            --large_file_overrides = {�      	   &      (                --providers = { "lsp" },�      
   &                  --},�   	      &              --},�   
      &      $        --config = function(_, opts)�         &      3            --require("illuminate").configure(opts)�         &      --�         &      2            --local function map(key, dir, buffer)�         &      5                --vim.keymap.set("n", key, function()�         &      R                    --require("illuminate")["goto_" .. dir .. "_reference"](false)�         &      g                --end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })�         &                  --end�         &      --�         &                  --map("]]", "next")�         &                  --map("[[", "prev")�         &      --�         &      U            ---- also set it after loading ftplugins, since a lot overwrite [[ and ]]�         &      7            --vim.api.nvim_create_autocmd("FileType", {�         &      '                --callback = function()�         &      C                    --local buffer = vim.api.nvim_get_current_buf()�         &      /                    --map("]]", "next", buffer)�         &      /                    --map("[[", "prev", buffer)�         &                      --end,�         &                  --})�          &              --end,�      !   &              --keys = {�       "   &      0            --{ "]]", desc = "Next Reference" },�   !   #   &      0            --{ "[[", desc = "Prev Reference" },�   "   $   &              --},5��                         8                      �                         O                      �                         j                      �                         �                      �                         �                      �                         �                      �    	                     �                      �    
                     �                      �                         %                     �                          M                     �                         \                     �                         �                     �                         �                     �                                              �                         �                     �                          �                     �                         �                     �                         �                     �                          �                     �                         �                     �                         .                     �                         j                     �                         �                     �                         �                     �                         
                     �                         6                     �                         I                     �                         V                     �                         e                     �                          |                     �    !                     �                     �    "                     �                     5�_�                  	   #   	    ����                                                                                                                                                                                                                                                                                                                                                             e��    �       '       &   return {       {            "RRethy/vim-illuminate",           --opts = {           --delay = 200,   #        --large_file_cutoff = 2000,   "        --large_file_overrides = {            --providers = { "lsp" },           --},           --},   $        --config = function(_, opts)   /        --require("illuminate").configure(opts)   
        --   .        --local function map(key, dir, buffer)   -        --vim.keymap.set("n", key, function()   F        --require("illuminate")["goto_" .. dir .. "_reference"](false)   _        --end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })           --end   
        --           --map("]]", "next")           --map("[[", "prev")   
        --   Q        ---- also set it after loading ftplugins, since a lot overwrite [[ and ]]   3        --vim.api.nvim_create_autocmd("FileType", {           --callback = function()   7        --local buffer = vim.api.nvim_get_current_buf()   #        --map("]]", "next", buffer)   #        --map("[[", "prev", buffer)           --end,           --})           --end,           --keys = {   ,        --{ "]]", desc = "Next Reference" },   ,        --{ "[[", desc = "Prev Reference" },           --},       }   }    5��           %       %              �      g      5��