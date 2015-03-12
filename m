Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YW4I1-0005eR-WA
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 14:40:48 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 12 Mar 2015 15:39:59 +0100
Message-Id: <1426171199-2729-5-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 4/4] FIT: add test config and data [do not merge]
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/sandbox/configs/sandbox_defconfig |  33 +++++++++++++++++++++------------
 key.dtb                                | Bin 0 -> 1023 bytes
 key.dts                                |  27 +++++++++++++++++++++++++++
 sign-configs.itb                       | Bin 0 -> 2453 bytes
 4 files changed, 48 insertions(+), 12 deletions(-)
 create mode 100644 key.dtb
 create mode 100644 key.dts
 create mode 100644 sign-configs.itb

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 7ce256950192..ec9d729127cb 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -5,25 +5,34 @@ CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/sandbox/board/env"
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_BOOTM_FITIMAGE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
 CONFIG_DRIVER_NET_TAP=y
 # CONFIG_SPI is not set
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_TFTP=y
+CONFIG_DIGEST=y
diff --git a/key.dtb b/key.dtb
new file mode 100644
index 0000000000000000000000000000000000000000..9a3294e9f0b2ad30362127b9cc4e0d7e67d2f7b6
GIT binary patch
literal 1023
zcmcb>`|m9S1M`0d1_lctodcvbfLIWS1%Ma?CIiJyAWRgJ5z1o*(kxImNDRj32eOg*
z(nx$xAX~@HGejXIwYUVx1_6*hkiAApiAAYN`4u{8nI*a<2zkch%=Em(lG377kZPdW
z*{PMfDXC>3Hb^fo5Ze}KBpT`z6(<@Qm;n6)20%HmQ=PU1Z(bo{!?H7Tdz#ejmnRlI
z*Li3@Va_e-M)%VlOm~iQ_kP?u?UU4(@X|fcChNYldzd?OrF@m3aRtk)SzFdUW!+!?
zl-;3HSLVh<<+sd5o02*7=SzIKV|d40?ad2ceWi~DtZ5tFYN8q6C^<MSWBIrCh{QFH
z<~t|qZHnHpg+vMT7Kz<|8F1LSjOBJ)ZR)RsY<s!Zy<d9r{$t+BeG)#$+t@m%cJJJx
z_}*LU{(1{}GymD2jc0s$;lik<CTroiYs={yo;k|v3oi1ov<X&aZ#%rNLiDE`)6^N~
z)q|Nb?-ai;T)=uN?}Os3d3Hbc<+@sAs$6zFbLsfMM1hp~$t$yUop)(32ZjbLECOzJ
zyk9$KTknPl+iL5pC88Hp0~fF!l4webd1B%d{h)k7#oH58YEyH$%r}=S*E%vvzvEIl
zo8#>*V=*n`#cf5u&q5*JI&8RS8~vQaDY?4xN5_TL2G1AY%>Ee>H*s%{<MF%mn50ge
zlzndS;9cpeYajPaS{D-Wn~_7Q(#OzzTZ_bkXA8tl{pP>9v}P}Vb>2z!>x;GZbD5V!
zD@U%<UeYa@ZFr^U&+@lF<ZhHaekJf&_~z@YXFWbX=zPuc_U-ReDiPMtd|MvvXZ@qT
z@}vPP-_{1vJ0i(%TI?IwiiUrhx;>li-_^MM-&#?dBi{rqy}D%eiM)?zCY@t1nqDk*
zL~5!3yui7K?nA<Yfdfd#fKv%0N?OgV>}-1oRRc=f6%1gd@U-0uO?ON{IS^({&d4uL
z%>%Na{KTBh#NyOq7$2mDQ#mmur6{$yST{K}C#RS}xj3^b70S-cD@iRXDlI6{EdVC|
zyb^}o{FKxjhUEO*g2a-{q?}ZS#GLee24KS0Dbg)2ECnh`0rP<BN^?q!!R*wEg8V#?
nW{|Qx1KrHLvecsDR0y{;S2roMq?iGeY4Q?tQ*|?db}|3}pHW%$

literal 0
HcmV?d00001

diff --git a/key.dts b/key.dts
new file mode 100644
index 000000000000..c6f1e7cd4699
--- /dev/null
+++ b/key.dts
@@ -0,0 +1,27 @@
+/dts-v1/;
+
+/ {
+	#address-cells = <0x1>;
+	#size-cells = <0x1>;
+	interrupt-parent = <0x1>;
+	model = "FIT Test";
+	compatible = "barebox,fit-test";
+
+	signature {
+		key-dev {
+			algo = "sha1,rsa2048";
+			rsa,r-squared = <0xb453b3a8 0x143c04b9 0x69b7661a 0x9be9c8a2 0xe72ce137 0x909cda1b 0x8147cb88 0x2dcc50b 0x8df1b596 0xf21af457 0x75bce693 0x2dee3ee1 0x6d99a91f 0x7a113378 0x49a9ab4 0xaee505bf 0x77e50740 0x792d1cd8 0x9123ed03 0x72b26308 0x2f9f18f4 0xdc31dc37 0x26ece84d 0x2f22f170 0x566b146 0x7c5b01ec 0x224042a6 0x4feadc4 0x18d60883 0xdcc87f3c 0x72ee0654 0x5a108d72 0x16dfe950 0xc3437604 0xdb867d65 0xfac106bd 0xaaeefa5 0xc9dfe30d 0x938e184c 0xc7860689 0x958bb9b4 0x21ef4b1a 0xdfaf381f 0x364f9bf3 0x3398f4e8 0x44012626 0x1d3841ba 0xb4cbd849 0x6c23af70 0xd10c0486 0x117a6bb6 0xc3be7815 0xf91e0295 0x98cf2753 0x269dc73 0xef71a005 0xca6ef021 0x9a9e3ef8 0xbe6d4538 0x6924d341 0xccd2c7fe 0x6110649f 0x63a96b2d 0x43ba2ba7>;
+			rsa,modulus = <0xd988efad 0x9cb68db0 0x583d7b3b 0xd57415d0 0x2551a005 0xc2188262 0x5ce4344c 0x5be077a0 0x78edc894 0x7d656d0a 0x37b37723 0x7d41011b 0xee0a24cd 0x6c4b4b1c 0x389668e8 0xdb214ef3 0x1254f688 0x3c0b9b32 0xf99c0919 0xab79f888 0xd0ab30e7 0xa3d96bf9 0x585e91bd 0x6c41c7dd 0x9e021ac8 0xc91de730 0xe0ee75aa 0xd6f1bc92 0xae5458fb 0x1082279 0x4c3137b6 0x8418a0e6 0xa017354e 0x9fecd2ac 0xbd0f7b6e 0xc927d7a3 0x2b2f6d03 0xa45b2359 0xaa2ba48b 0x196b31d4 0x8cfca7ed 0xf81ed874 0xe3ea10e3 0x13d9ebd5 0xcd48f1e0 0x89eb04ed 0xedfbca24 0x583be64d 0x84e2bf05 0xfc27a9c9 0x30050eb5 0x8015dc14 0x63ec843f 0x81ad1557 0xf295b76b 0x6fed55e 0x6ffb2a5a 0xb359ec52 0xa5d5a4ab 0xc86ef1cc 0x92ce0772 0x97731ac4 0x1aa54f9e 0x519dc2df>;
+			rsa,exponent = <0x0 0x10001>;
+			rsa,n0-inverse = <0x798986e1>;
+			rsa,num-bits = <0x800>;
+			key-name-hint = "dev";
+		};
+	};
+
+	chosen {
+	};
+
+	aliases {
+	};
+};
diff --git a/sign-configs.itb b/sign-configs.itb
new file mode 100644
index 0000000000000000000000000000000000000000..fd4c0c984102d384835d1eaf40cd27c542a5e71e
GIT binary patch
literal 2453
zcmeHHTWl0n7(QFKl~T3=TN(@+$C4@#hMiptw4^q)pwKi;C2eUR49)4z*`2YoGrMzU
zw=U7hi>4|NXu<<lf~GZc(T0l&4YY|=FqS~5LMX^3F$N-pOSEb*hT{Lvr52-!55}jS
z<eUF;{_|hYnUTQwZ9;Ol6GF-e$zB6=K42DLCIHt3(0jb2alSrRcm${)u&wds;T)hS
zhXG`zVj6KK)Hew2%+#4CsBs!&LWgQ8f}u0PFon2bGU3HljY6Adv~fJ-oJW5%02sq(
zA9FT+j;9qN(Br~b0$^@k`)a<ns;>N%nZMM&^+Uz-_0ku^r_ZE^8b+R(Q}p)0Vb?Yv
z?HwPjx}h0V1_dniGYwF}sV=t}uX;MHXQ8I*DO>YrZlboq@N6*GasX1V7nQ)HKTlo-
zyj_bzx#DJzdxe1Ru018qwLkjbnf^iVHwD|vwpMOBQ|F$|2HL<C>eZVCGQt;?Ew2ga
z2ki*gjSi%+P$vNXZC@}~A*xZURkncr$9`ZOQHSB75iGC17U2KO`s^Abh8|U8DU({N
zp*!=(c#i^P+;bb?o5bUOE<pR6dxEp%lltc4YD}kA%4CisJd1r82H--9I;?ddNP-Wi
zV~cPw=-ker<M<&d=nmUcPUQ4gg=hHLcYEEKc$X%>r(%#l4NIZY#UV+Qq$SIq6Jwze
zm1%i6yo839in3~28M5H0dmiifFy3zG1}xTr<00KoUg=NH>hqs!{HW{s#n}t1Y9MC*
zjJ%WT_cvNg>iY)|kBxqPfOJ;hPnl28UN(O9>{G{gHcY$xSa#E~b)jwN{8HYW>zj*D
zzQ0?V-k+)H8b7=B+F)riF}G@C?3Taa!fSz?BYM#y<?b6}t<{%rjeSy-dvwjYeY>By
z^X&Y==Bz8P*SsJ#Ukfm;I#m66bkFS4l`U60Yl`pPxxVgZkCZoRWj^kFH(B^?a((ZE
z<d&Dd+<0?n$H998(PI~r6$dUArb%D;#1UU-eoN2D??XHIf<C2x)6ZWO1U57s>dsld
zIcsNG&x%XG9&d|`)>STj@BFT&uE*yY^}n4+{zP}(=&jwq#pwkJ0JY!MB9qgwR9c43
zfrazN-gn3>?a6t-yb0qa&iqhqzd`RUBF&W<kC<u#Zz`EbW!Yq$ixH-2oXFIo#L6TX
zp=LxO1}70Co<IXMw*Ns)x6F*|UraO8-l1B|AP{##A+sn=X%l%kDP=^R#+j(7x<&9p
zi|*gjQsazUG@c-7s->8{$4uMU<Gnz5O_>bO8j2vUz%5hNW9}c>E_v!R)q$xF{4X8&
E1I{~<CjbBd

literal 0
HcmV?d00001

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
