
function imo = Huffman_decompression(Huffman_dictionary,imc)

[w,h] = size(imc);
% imo = zeros(w,h,'uint8');
% for i = 1:w
%     for j = 1:h
%         for k = 1:255
%             if isequal(imc(i,j), Huffman_dictionary(k,2))
%                 imo(i,j) = uint8(k);
%             end
%         end
%     end
% end
imc_1D = reshape(imc,w*h,1);
out = zeros(w*h,1,'uint8');

for index = 1 : 255
    h_code = Huffman_dictionary{index,2}
    out(isequal(imc_1D{:}, h_code)) = index;
end

imo = reshape(out,w,h);
end