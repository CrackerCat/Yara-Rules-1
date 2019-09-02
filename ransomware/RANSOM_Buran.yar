rule buran_ransomware
{
      meta:

            description = "Rule to detect Buran ransomware"
            author = "Marc Rivero | McAfee ATR Team"


      strings:

            $s1 = { 5? 8B ?? 81 C? ?? ?? ?? ?? 5? 5? 5? 33 ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? 89 ?? ?? 89 ?? ?? 89 ?? ?? 89 ?? ?? 89 ?? ?? 89 ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? C6 ?? ?? ?? ?? ?? ?? 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? 8D ?? ?? ?? ?? ?? BA ?? ?? ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 6A ?? 8B ?? ?? E8 ?? ?? ?? ?? 5? E8 ?? ?? ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 84 ?? 0F 85 }
            $s2 = { A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? A3 ?? ?? ?? ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? 33 ?? E8 ?? ?? ?? ?? 8B ?? ?? B1 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? A3 ?? ?? ?? ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? A3 ?? ?? ?? ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? 6A ?? 8D ?? ?? 33 ?? E8 ?? ?? ?? ?? 8B ?? ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? 89 ?? ?? ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 6A ?? 8D ?? ?? ?? ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? 89 ?? ?? ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? C7 ?? ?? ?? ?? ?? ?? ?? ?? ?? A1 ?? ?? ?? ?? 8B ?? ?? 8B ?? FF 5? ?? 4? 85 ?? 0F 8C }
            $s3 = { 4? 33 ?? 8D ?? ?? 0F B6 ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 7? ?? 8D ?? ?? 8B ?? ?? 8B ?? ?? 8B ?? 8B ?? FF 5? ?? FF 7? ?? 8D ?? ?? 0F B6 ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 7? ?? 8D ?? ?? BA ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 5? 8D ?? ?? 0F B6 ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 7? ?? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? FF 7? ?? 8D ?? ?? 0F B6 ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 7? ?? 8D ?? ?? BA ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 5? E8 ?? ?? ?? ?? 85 ?? 74 }
            $s4 = { 8D ?? ?? 0F B6 ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 7? ?? 8D ?? ?? 8B ?? ?? 8B ?? ?? 8B ?? 8B ?? FF 5? ?? FF 7? ?? 8D ?? ?? 0F B6 ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 7? ?? 8D ?? ?? BA ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 5? 8D ?? ?? 0F B6 ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 7? ?? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? FF 7? ?? 8D ?? ?? 0F B6 ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 7? ?? 8D ?? ?? BA ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 5? E8 ?? ?? ?? ?? 85 ?? 74 }
            $s5 = { A1 ?? ?? ?? ?? 99 5? 5? A1 ?? ?? ?? ?? 99 5? 5? 8B ?? ?? 8B ?? ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 5? 5? 8B ?? ?? 8B ?? ?? ?? 8B ?? ?? ?? 03 ?? ?? 13 ?? ?? ?? 83 ?? ?? E8 ?? ?? ?? ?? 5? 5? 8B ?? ?? 8B ?? ?? ?? 8B ?? ?? ?? 03 ?? ?? 13 ?? ?? ?? 83 ?? ?? 89 ?? ?? 89 ?? ?? A1 ?? ?? ?? ?? 99 5? 5? 8B ?? ?? 8B ?? ?? 8B ?? ?? ?? 8B ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8B ?? ?? 03 ?? ?? ?? 13 ?? ?? ?? 89 ?? ?? 89 ?? ?? A1 ?? ?? ?? ?? 4? 99 89 ?? ?? 89 ?? ?? FF 7? ?? FF 7? ?? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 3B ?? ?? 75 }
            $s6 = { 5? 5? 5? 5? 8B ?? 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? 68 ?? ?? ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? 89 ?? ?? 8D ?? ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 ?? ?? ?? 0F 84 }
            $s7 = { 5? 8B ?? 83 ?? ?? 5? 5? 5? 89 ?? ?? 8B ?? 89 ?? ?? 8B ?? ?? 8B ?? ?? 8B ?? ?? 8B ?? ?? ?? 8B ?? ?? ?? 83 ?? ?? 83 ?? ?? 5? 5? A1 ?? ?? ?? ?? 99 E8 ?? ?? ?? ?? 89 ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? 8B ?? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? 8B ?? ?? 8B ?? E8 ?? ?? ?? ?? 8B ?? ?? 8B ?? E8 ?? ?? ?? ?? 8B ?? ?? 2B ?? 8B ?? 4? 5? 8B ?? ?? 8B ?? 83 ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 ?? ?? 83 ?? ?? 0F 8C }
            $s8 = { 0F B6 ?? 8B ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 8D ?? ?? 0F B6 ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 03 ?? 0F B6 ?? ?? ?? ?? ?? C1 ?? ?? 24 ?? 0F B6 ?? C1 ?? ?? 0F B6 ?? ?? ?? ?? ?? 03 ?? 8D ?? ?? 0F B6 ?? 24 ?? 0F B6 ?? 03 ?? 03 ?? 8D ?? ?? 0F B6 ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 03 ?? 0F B6 ?? ?? ?? ?? ?? C1 ?? ?? 03 ?? 8D ?? ?? 0F B6 ?? 24 ?? 0F B6 ?? 0F B6 ?? ?? ?? ?? ?? C1 ?? ?? 03 ?? 89 ?? 83 ?? ?? 83 ?? ?? 4? 0F 85 }
            $s9 = { A1 ?? ?? ?? ?? 99 5? 5? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 5? 5? 8B ?? ?? 8B ?? ?? 8B ?? ?? ?? 8B ?? ?? 03 ?? ?? 13 ?? ?? ?? 83 ?? ?? 89 ?? ?? 89 ?? ?? 8B ?? 99 5? 5? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? 8B ?? ?? 89 ?? ?? 89 ?? ?? ?? 8B ?? ?? 8B ?? ?? 5? 5? 8B ?? 99 5? 5? 8B ?? 8B ?? ?? 8B ?? ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 29 ?? ?? 19 ?? ?? ?? 5? 5? 89 ?? ?? 89 ?? ?? 4? 83 ?? ?? 0F 85 }
            $s10 = { 8D ?? ?? ?? ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? BA ?? ?? ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 99 5? 5? 33 ?? 8B ?? ?? ?? ?? ?? 8B ?? FF 5? ?? 8D ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? 8B ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? FF 8? ?? ?? ?? ?? 4? 0F 85 }
            $s11 = { 5? 8B ?? 81 C? ?? ?? ?? ?? 5? 83 ?? ?? 5? 5? 33 ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 89 ?? ?? 8B ?? 89 ?? ?? 89 ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? 8B ?? E8 ?? ?? ?? ?? 6A ?? 6A ?? 6A ?? 6A ?? 6A ?? E8 ?? ?? ?? ?? 89 ?? ?? 83 ?? ?? ?? 0F 84 }
            $s12 = { 8D ?? ?? ?? ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 99 5? 5? 33 ?? 8B ?? ?? ?? ?? ?? 8B ?? FF 5? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 4? 0F AF ?? ?? ?? ?? ?? 4? 8D ?? ?? ?? 8B ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 8? ?? ?? ?? ?? 4? 75 }
            $s13 = { 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? 8D ?? ?? 8B ?? E8 ?? ?? ?? ?? 8D ?? ?? 8B ?? ?? 0F B6 ?? 88 ?? ?? C6 ?? ?? 8D ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? 8B ?? ?? 0F B6 ?? ?? 88 ?? ?? C6 ?? ?? 8D ?? ?? 8D ?? ?? B1 ?? E8 ?? ?? ?? ?? 8D ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 5? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 5? E8 ?? ?? ?? ?? 75 }
            $s14 = { 8D ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? 8B ?? FF 5? ?? 8B ?? 83 ?? ?? 8D ?? ?? 8B ?? 8D ?? ?? 31 ?? 8D ?? ?? 8B ?? 8D ?? ?? 31 ?? 8D ?? ?? 8B ?? 8D ?? ?? 31 ?? 8D ?? ?? 8B ?? 8D ?? ?? 31 ?? 8D ?? ?? 8B ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? 8B ?? FF 5? ?? 8B ?? 83 ?? ?? 5? 8D ?? ?? 8D ?? ?? A5 A5 A5 A5 5? 83 ?? ?? 83 ?? ?? 73 }
            $s15 = { 8B ?? ?? 03 ?? 8B ?? ?? 8B ?? 8B ?? ?? 8B ?? ?? 8B ?? ?? 8B ?? ?? 2B ?? ?? 2B ?? 03 ?? ?? ?? ?? ?? 8B ?? 99 F7 ?? ?? ?? ?? ?? 99 89 ?? ?? 89 ?? ?? 8B ?? 99 5? 5? A1 ?? ?? ?? ?? 99 5? 5? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 29 ?? ?? 19 ?? ?? ?? 5? 5? 8B ?? ?? 03 ?? 8B ?? ?? 8B ?? 8B ?? ?? 89 ?? ?? 89 ?? ?? ?? B8 ?? ?? ?? ?? 2B ?? ?? 4? 4? 75 }
            $s16 = { 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A ?? E8 ?? ?? ?? ?? DB ?? ?? ?? 9B 8B ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? ?? DB ?? ?? ?? DB ?? ?? ?? DE ?? E8 ?? ?? ?? ?? 89 ?? ?? 8B ?? E8 ?? ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 83 ?? ?? 5? 5? 5? 5? C3 }
            $s17 = { 5? 8B ?? 83 ?? ?? 5? 5? 33 ?? 89 ?? ?? 89 ?? ?? 89 ?? ?? 89 ?? ?? 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A ?? E8 ?? ?? ?? ?? DB ?? ?? 9B 8B ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? DB ?? ?? DB ?? ?? DE ?? E8 ?? ?? ?? ?? 89 ?? ?? 8B ?? ?? 85 ?? 74 }
            $s18 = { 5? 5? 5? 5? 83 ?? ?? 89 ?? ?? ?? 89 ?? ?? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? 8B ?? ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? 8B ?? ?? ?? 8B ?? ?? 8B ?? ?? F7 ?? ?? 89 ?? ?? 8B ?? ?? ?? 03 ?? 83 ?? ?? 5? 8D ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 ?? ?? 85 ?? 0F 8C }
            $s19 = { 8B ?? E8 ?? ?? ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? ?? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? 8B ?? ?? 8B ?? ?? 8B ?? ?? 89 ?? ?? ?? 8B ?? ?? ?? 89 ?? ?? ?? DF ?? ?? ?? 83 ?? ?? DB ?? ?? 9B E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? 0F AF ?? ?? ?? 4? 03 ?? 89 ?? ?? ?? 4? 8B ?? ?? 83 ?? ?? ?? 7E }
            $s20 = { 0F B6 ?? 8B ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 8D ?? ?? 0F B6 ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 03 ?? 0F B6 ?? ?? ?? ?? ?? C1 ?? ?? 24 ?? 0F B6 ?? C1 ?? ?? 0F B6 ?? ?? ?? ?? ?? 03 ?? 4? 0F B6 ?? 24 ?? 0F B6 ?? 03 ?? 03 ?? 0F B6 ?? ?? ?? ?? ?? C1 ?? ?? 03 ?? 0F B6 ?? ?? ?? ?? ?? C1 ?? ?? 03 ?? 89 }
            $s21 = { 6A ?? 8B ?? ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 8B ?? FF 1? 89 ?? ?? ?? ?? ?? A1 ?? ?? ?? ?? 03 ?? 8D ?? ?? 5? 8B ?? ?? ?? ?? ?? 5? 8B ?? 99 F7 ?? 89 ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? F7 ?? ?? ?? ?? ?? 3B ?? ?? ?? ?? ?? 7E }
            $s22 = { 8B ?? E8 ?? ?? ?? ?? 8B ?? ?? 0F B6 ?? ?? ?? 88 ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 8B ?? ?? 0F B6 ?? ?? ?? 88 ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 8B ?? ?? 0F B6 ?? ?? ?? 88 ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 0F B6 ?? ?? ?? ?? ?? 88 ?? ?? ?? 83 ?? ?? 83 ?? ?? FF 4? ?? ?? 75 }
            $s23 = { 89 ?? ?? 8B ?? 8B ?? 8D ?? ?? E8 ?? ?? ?? ?? 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? 8D ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 0F B6 ?? ?? 88 ?? ?? B1 ?? 33 ?? 8B ?? E8 ?? ?? ?? ?? 33 ?? 5? 5? 5? 64 ?? ?? 68 ?? ?? ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? C3 }
            $s24 = { 8D ?? ?? ?? ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? BA ?? ?? ?? ?? E8 ?? ?? ?? ?? 85 ?? 0F 85 }
            $s25 = { 0F B6 ?? ?? 24 ?? 0F B6 ?? C1 ?? ?? 0F B6 ?? ?? 03 ?? 03 ?? 03 ?? 0F B6 ?? ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 03 ?? 0F B6 ?? ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 03 ?? 0F B6 ?? ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 03 ?? 0F B6 ?? ?? C1 ?? ?? 03 ?? 89 ?? 83 }
            $s26 = { 6A ?? 6A ?? 8B ?? ?? ?? 8B ?? ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? ?? 89 ?? ?? ?? 0F B6 ?? ?? ?? 0F B6 ?? ?? ?? 03 ?? 8D ?? ?? 2A ?? 8B ?? ?? ?? 89 ?? ?? ?? 8B ?? ?? ?? 89 ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 80 C? ?? 88 ?? ?? ?? 4? 3B ?? ?? ?? 7F }
            $s27 = { 5? 8B ?? 83 ?? ?? 5? 5? 5? 8B ?? 89 ?? ?? 8B ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? 8B ?? E8 ?? ?? ?? ?? C7 ?? ?? ?? ?? ?? ?? C7 ?? ?? ?? ?? ?? ?? 5? 8B ?? 83 ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 ?? ?? 4? 83 ?? ?? 0F 8C }
            $s28 = { 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? BE ?? ?? ?? ?? 6A ?? 5? 6A ?? 6A ?? 6A ?? 8B ?? ?? E8 ?? ?? ?? ?? 5? 8B ?? ?? E8 ?? ?? ?? ?? 5? 8B ?? ?? 5? E8 ?? ?? ?? ?? 89 ?? ?? 83 ?? ?? ?? 0F 84 }
            $s29 = { 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? BE ?? ?? ?? ?? 6A ?? 6A ?? 6A ?? 6A ?? 6A ?? 5? 8D ?? ?? ?? ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 5? 8B ?? ?? 5? E8 ?? ?? ?? ?? 89 ?? ?? 83 ?? ?? ?? 0F 84 }
            $s30 = { 6A ?? 6A ?? 8B ?? ?? ?? 8B ?? ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? ?? 89 ?? ?? ?? 0F B6 ?? ?? ?? 0F B6 ?? ?? ?? 03 ?? 8D ?? ?? 2A ?? 8B ?? ?? ?? 89 ?? ?? ?? 8B ?? ?? ?? 89 ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 80 C? ?? 88 ?? ?? ?? 4? 4? 75 }
            $s31 = { 5? 5? 5? 5? 83 ?? ?? 8B ?? 8B ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? ?? 6A ?? 6A ?? E8 ?? ?? ?? ?? 8B ?? 8B ?? ?? ?? 03 ?? ?? ?? 83 ?? ?? 5? 8D ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 ?? ?? 8B ?? ?? ?? 85 ?? 0F 8C }
            $s32 = { 8B ?? 99 89 ?? ?? 89 ?? ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? 8B ?? ?? 8B ?? E8 ?? ?? ?? ?? 8D ?? ?? 33 ?? BA ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 85 ?? 74 }
            $s33 = { 5? 5? 5? 5? 89 ?? ?? 89 ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? C6 ?? ?? ?? 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? 8B ?? ?? 8B ?? ?? 8B ?? FF 5? ?? 8B ?? 4? 85 ?? 0F 8C }
            $s34 = { 5? 8B ?? 83 ?? ?? 5? 5? 5? 89 ?? ?? 89 ?? ?? 8B ?? 8B ?? ?? E8 ?? ?? ?? ?? 99 89 ?? ?? 89 ?? ?? 8B ?? E8 ?? ?? ?? ?? C7 ?? ?? ?? ?? ?? ?? C7 ?? ?? ?? ?? ?? ?? 8B ?? 8B ?? ?? E8 ?? ?? ?? ?? 99 3B ?? ?? 75 }
            $s35 = { 5? 8B ?? 83 ?? ?? 5? 5? 5? 89 ?? ?? 6A ?? 6A ?? E8 ?? ?? ?? ?? 89 ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? E8 ?? ?? ?? ?? 8B ?? B3 ?? 8B ?? ?? 8B ?? ?? 99 89 ?? ?? 89 ?? ?? 83 ?? ?? ?? 75 }
            $s36 = { 5? 8B ?? 83 ?? ?? 5? 5? 5? B3 ?? 8D ?? ?? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? DF ?? ?? D8 ?? ?? ?? ?? ?? 83 ?? ?? DB ?? ?? 9B E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? BE ?? ?? ?? ?? BF ?? ?? ?? ?? EB }
            $s37 = { 89 ?? ?? 0F B6 ?? ?? ?? ?? ?? ?? 8B ?? ?? 8B ?? ?? ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? ?? 0F B6 ?? 8B ?? ?? 89 ?? ?? ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? ?? 8B ?? ?? 03 ?? ?? ?? ?? ?? ?? 25 ?? ?? ?? ?? 79 }
            $s38 = { 8D ?? ?? 8B ?? 8B ?? E8 ?? ?? ?? ?? 8D ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 0F B6 ?? ?? ?? ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8B ?? 8B ?? E8 ?? ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 84 ?? 74 }
            $s39 = { 8B ?? E8 ?? ?? ?? ?? 5? 8B ?? 5? 8B ?? 99 F7 ?? 4? 99 89 ?? ?? ?? 89 ?? ?? ?? 8B ?? ?? ?? 5? 8D ?? ?? B9 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 ?? ?? 8B ?? ?? ?? 4? 85 ?? 7C }
            $s40 = { 0F B6 ?? 8B ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 0F B6 ?? ?? ?? ?? ?? 24 ?? 0F B6 ?? C1 ?? ?? 0F B6 ?? ?? ?? ?? ?? C1 ?? ?? 03 ?? 0F B6 ?? ?? ?? ?? ?? 8B ?? C1 ?? ?? 03 ?? C1 ?? ?? 0B ?? 89 }
            $s41 = { C7 ?? ?? ?? ?? ?? ?? C7 ?? ?? ?? ?? ?? ?? 8B ?? ?? 5? 6A ?? E8 ?? ?? ?? ?? 89 ?? ?? 8D ?? ?? 5? 8B ?? ?? 5? 8D ?? ?? 5? 8B ?? ?? 5? E8 ?? ?? ?? ?? 89 ?? ?? 83 ?? ?? ?? 0F 85 }
            $s42 = { 5? 8B ?? 33 ?? 5? 5? 5? 5? 5? 5? 5? 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 0F B6 ?? 8B ?? ?? 0F B6 ?? ?? 2A ?? 77 }
            $s43 = { 5? 5? 5? 83 ?? ?? 8B ?? 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? 8B ?? E8 ?? ?? ?? ?? 8B ?? 0F AF ?? 8B ?? ?? 8B ?? ?? 89 ?? ?? 8B ?? ?? ?? 89 ?? ?? ?? 83 ?? ?? ?? ?? 75 }
            $s44 = { 8B ?? ?? ?? ?? ?? 99 F7 ?? ?? ?? ?? ?? 8B ?? B2 ?? A1 ?? ?? ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? ?? ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 4? 85 ?? 0F 8C }
            $s45 = { 68 ?? ?? ?? ?? 5? 8B ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 5? 8B ?? ?? 5? E8 ?? ?? ?? ?? 6A ?? 6A ?? 6A ?? 6A ?? 8B ?? ?? 5? E8 ?? ?? ?? ?? 85 ?? 0F 84 }
            $s46 = { FF 7? ?? FF 3? 8B ?? ?? 99 E8 ?? ?? ?? ?? 5? 5? 8B ?? ?? 8B ?? ?? ?? 8B ?? ?? 03 ?? ?? 13 ?? ?? ?? 83 ?? ?? 89 ?? 89 ?? ?? 4? 83 ?? ?? 75 }
            $s47 = { 8B ?? 99 89 ?? ?? 89 ?? ?? 8D ?? ?? B9 ?? ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 8D ?? ?? B9 ?? ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 8B ?? ?? 85 ?? 74 }
            $s48 = { 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? 8B ?? 8D ?? ?? 5? 5? 6A ?? E8 ?? ?? ?? ?? A9 ?? ?? ?? ?? 0F 94 ?? F6 ?? 1B ?? 85 ?? 74 }
            $s49 = { 8B ?? ?? ?? 03 ?? 4? 8B ?? ?? 8B ?? ?? ?? 8B ?? ?? 03 ?? ?? 13 ?? ?? ?? 5? 5? 8B ?? ?? 8F ?? ?? 8F ?? ?? ?? 4? FF 4? ?? ?? 0F 85 }
            $s50 = { 8D ?? ?? 8B ?? ?? 0F B6 ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 5? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 5? E8 ?? ?? ?? ?? 75 }
            $s51 = { 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 5? 8D ?? ?? B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 5? E8 ?? ?? ?? ?? 0F 85 }
            $s52 = { B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 4? BA ?? ?? ?? ?? 0F B6 ?? ?? ?? 8D ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? 8B ?? E8 ?? ?? ?? ?? 4? 75 }
            $s53 = { 8B ?? ?? 8B ?? 8B ?? ?? 8B ?? ?? 89 ?? ?? 8B ?? ?? 89 ?? ?? ?? 5? 8B ?? 8B ?? 8B ?? ?? E8 ?? ?? ?? ?? 4? 83 ?? ?? 0F 85 }
            $s54 = { 8B ?? 2B ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B ?? ?? ?? ?? ?? 0F AF ?? 2B ?? 89 ?? ?? ?? ?? ?? 83 ?? ?? ?? ?? ?? ?? 7D }
            $s55 = { 8B ?? 99 F7 ?? ?? 8B ?? 8B ?? ?? E8 ?? ?? ?? ?? 89 ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? C7 ?? ?? ?? ?? ?? ?? 85 ?? 0F 8C }
            $s56 = { FF 0? ?? ?? ?? ?? B9 ?? ?? ?? ?? 8B ?? 99 F7 ?? 89 ?? A1 ?? ?? ?? ?? 03 ?? 8D ?? ?? A3 ?? ?? ?? ?? 83 ?? ?? 7F }
            $s57 = { 8B ?? ?? BE ?? ?? ?? ?? 99 F7 ?? 8B ?? 8B ?? 03 ?? 03 ?? 89 ?? ?? ?? 8B ?? ?? BF ?? ?? ?? ?? 99 F7 ?? 85 ?? 74 }
            $s58 = { 0F B6 ?? ?? ?? 83 ?? ?? F7 ?? 99 03 ?? ?? ?? 13 ?? ?? ?? 89 ?? ?? ?? 89 ?? ?? ?? 03 ?? 8D ?? ?? 3B ?? ?? 7E }
            $s59 = { 5? 8B ?? 6A ?? 5? 5? 8B ?? 8B ?? 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? E8 ?? ?? ?? ?? 0F B6 ?? 85 ?? 7E }
            $s60 = { 4? F7 ?? ?? ?? ?? ?? F2 ?? 4? 00 ?? ?? ?? 64 ?? ?? 8B ?? ?? 8B ?? ?? 8B ?? FF 5? ?? 8B ?? 4? 85 ?? 0F 8C }
            $s61 = { 8B ?? 0F B6 ?? 8B ?? ?? ?? ?? ?? ?? 89 ?? 0F B6 ?? 89 ?? ?? ?? ?? ?? ?? 4? 83 ?? ?? 81 F? ?? ?? ?? ?? 75 }
            $s62 = { 89 ?? ?? ?? ?? ?? 6A ?? 6A ?? 33 ?? 8B ?? ?? ?? ?? ?? 8B ?? FF 5? ?? 8B ?? ?? ?? ?? ?? 85 ?? 0F 8E }
            $s63 = { 8B ?? ?? 8B ?? ?? 8B ?? 0F AC ?? ?? D1 ?? 8B ?? ?? 89 ?? 89 ?? ?? 8B ?? E8 ?? ?? ?? ?? 5? 5? C3 }
            $s64 = { 8B ?? ?? ?? 03 ?? 8B ?? ?? 8B ?? ?? ?? 89 ?? ?? ?? 8B ?? ?? ?? 89 ?? ?? ?? 4? FF 4? ?? ?? 0F 85 }
            $s65 = { 33 ?? 5? 68 ?? ?? ?? ?? 64 ?? ?? 64 ?? ?? FF 0? ?? ?? ?? ?? 81 3? ?? ?? ?? ?? ?? ?? ?? ?? 0F 8F }
            $s66 = { 8B ?? ?? 8B ?? ?? ?? 8B ?? ?? 0F AC ?? ?? D1 ?? 8B ?? ?? 89 ?? ?? 89 ?? ?? ?? 4? 85 ?? 75 }
            $s67 = { 0F B6 ?? ?? 24 ?? C1 ?? ?? 0F B6 ?? ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 02 ?? 88 ?? 4? 4? EB }
            $s68 = { 6A ?? 6A ?? 8B ?? E8 ?? ?? ?? ?? 8B ?? ?? 0F B6 ?? ?? ?? 8B ?? 80 C? ?? 80 E? ?? 73 }
            $s69 = { 6A ?? 8B ?? ?? E8 ?? ?? ?? ?? 5? E8 ?? ?? ?? ?? 8B ?? ?? E8 ?? ?? ?? ?? 84 ?? 0F 85 }
            $s70 = { 0F B6 ?? ?? 03 ?? 03 ?? 0F B6 ?? ?? 80 E? ?? 0F B6 ?? C1 ?? ?? 02 ?? 88 ?? 4? 4? EB }
            $s71 = { 8B ?? ?? E8 ?? ?? ?? ?? 5? 8B ?? ?? E8 ?? ?? ?? ?? 5? E8 ?? ?? ?? ?? 3B ?? 0F 8C }
            $s72 = { C7 ?? ?? ?? ?? ?? ?? C7 ?? ?? ?? ?? ?? ?? ?? 8D ?? ?? 8B ?? ?? ?? 2B ?? 0F 8C }
            $s73 = { 8B ?? E8 ?? ?? ?? ?? 8B ?? E8 ?? ?? ?? ?? 0F B6 ?? ?? 5? 5? 5? 8B ?? 5? C3 }
            $s74 = { C7 ?? ?? ?? ?? ?? ?? ?? C7 ?? ?? ?? ?? ?? ?? ?? 8B ?? ?? ?? 85 ?? 0F 8C }
            $s75 = { DF ?? ?? 83 ?? ?? DB ?? ?? 9B E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 4? 03 ?? 8B }
            $s76 = { 8B ?? 99 F7 ?? 8B ?? ?? 0F B6 ?? ?? 03 ?? 03 ?? 25 ?? ?? ?? ?? 79 }
            $s77 = { 0F B6 ?? ?? ?? ?? ?? ?? 8B ?? ?? 30 ?? ?? 4? FF 4? ?? 0F 85 }
            $s78 = { 8B ?? 8B ?? ?? ?? 4? B9 ?? ?? ?? ?? 99 F7 ?? 8B ?? 85 ?? 7E }
            $s79 = { 8B ?? ?? 5? 8B ?? 8D ?? ?? A5 A5 A5 A5 5? 83 ?? ?? 72 }
            $s80 = { 8B ?? ?? BE ?? ?? ?? ?? 99 F7 ?? 8B ?? 83 ?? ?? 75 }
            $s81 = { E8 ?? ?? ?? ?? FF 0? ?? ?? ?? ?? FF 4? ?? 0F 85 }
            $s82 = { 0F B6 ?? ?? 24 ?? C1 ?? ?? 02 ?? ?? 88 ?? 4? EB }
            $s83 = { 8B ?? ?? E8 ?? ?? ?? ?? 8B ?? 83 ?? ?? 0F 8C }
            $s84 = { 8B ?? ?? 0F AF ?? ?? 89 ?? ?? 8B ?? E8 }
            $s85 = { A1 ?? ?? ?? ?? 99 F7 ?? ?? ?? ?? ?? 89 }
            $s86 = { 8B ?? ?? 0F B7 ?? ?? ?? 66 ?? ?? ?? 74 }
            $s87 = { 0F B6 ?? 83 ?? ?? 83 ?? ?? 89 ?? ?? EB }
            $s88 = { 8B ?? ?? E8 ?? ?? ?? ?? 85 ?? 0F 8F }
            $s89 = { 8B ?? ?? 99 8B ?? ?? 01 ?? ?? ?? 11 }
            $s90 = { 8B ?? ?? E8 ?? ?? ?? ?? 84 ?? 0F 85 }

      condition:
      
           uint16(0) == 0x5a4d and 63 of them
}
