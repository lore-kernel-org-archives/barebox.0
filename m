Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8Ru-0001NN-5V
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 08:03:04 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 17 Sep 2019 10:02:41 +0200
Message-Id: <20190917080242.15166-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20190917080126.2sp36vixvfvlmvtk@pengutronix.de>
References: <20190917080126.2sp36vixvfvlmvtk@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1250598585286119086=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] Convert latin1 files to utf-8
To: barebox@lists.infradead.org
Cc: Stefan Lengfeld <contact@stefanchrist.eu>

--===============1250598585286119086==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

The source files are parsed by $(make docs). Currently this is done
using python2 (actually 'python' which is still python2 on most
machines). When using python3 however (which has a stricter encoding
handling) it is easier if all input is in utf-8 encoding. So convert the
few remaining latin1 encoded files to utf-8. This only affects code
comments.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 .../arm/boards/chumby_falconwing/falconwing.c |   2 +-
 lib/fonts/font_7x14.c                         | 256 +++++++++---------
 lib/fonts/font_8x16.c                         | 256 +++++++++---------
 lib/fonts/font_8x8.c                          | 256 +++++++++---------
 4 files changed, 385 insertions(+), 385 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 5554b78d6d49..42dd838d758e 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -65,7 +65,7 @@ static struct fb_videomode falconwing_vmode = {
 	.xres = 320,
 	.yres = 240,
 	.pixclock = KHZ2PICOS(6250),    /* max. 10 MHz */
-	/* line lenght should be 64 �s */
+	/* line lenght should be 64 µs */
 	.left_margin = 28,
 	.hsync_len = 24,
 	.right_margin = 28,
diff --git a/lib/fonts/font_7x14.c b/lib/fonts/font_7x14.c
index 384ba39f1779..e5ef8323ca7b 100644
--- a/lib/fonts/font_7x14.c
+++ b/lib/fonts/font_7x14.c
@@ -2058,7 +2058,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 128 0x80 '�' */
+	/* 128 0x80 '' */
 	0x00, /* 0000000 */
 	0x38, /* 0011100 */
 	0x6c, /* 0110110 */
@@ -2074,7 +2074,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x70, /* 0111000 */
 	0x00, /* 0000000 */
 
-	/* 129 0x81 '�' */
+	/* 129 0x81 '' */
 	0x00, /* 0000000 */
 	0xcc, /* 1100110 */
 	0x00, /* 0000000 */
@@ -2090,7 +2090,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 130 0x82 '�' */
+	/* 130 0x82 '' */
 	0x0c, /* 0000110 */
 	0x18, /* 0001100 */
 	0x30, /* 0011000 */
@@ -2106,7 +2106,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 131 0x83 '�' */
+	/* 131 0x83 '' */
 	0x10, /* 0001000 */
 	0x38, /* 0011100 */
 	0x6c, /* 0110110 */
@@ -2122,7 +2122,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 132 0x84 '�' */
+	/* 132 0x84 '' */
 	0x00, /* 0000000 */
 	0xcc, /* 1100110 */
 	0x00, /* 0000000 */
@@ -2138,7 +2138,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 133 0x85 '�' */
+	/* 133 0x85 '' */
 	0x60, /* 0110000 */
 	0x30, /* 0011000 */
 	0x18, /* 0001100 */
@@ -2154,7 +2154,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 134 0x86 '�' */
+	/* 134 0x86 '' */
 	0x38, /* 0011100 */
 	0x6c, /* 0110110 */
 	0x38, /* 0011100 */
@@ -2170,7 +2170,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 135 0x87 '�' */
+	/* 135 0x87 '' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -2186,7 +2186,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0xe0, /* 1110000 */
 
-	/* 136 0x88 '�' */
+	/* 136 0x88 '' */
 	0x10, /* 0001000 */
 	0x38, /* 0011100 */
 	0x6c, /* 0110110 */
@@ -2202,7 +2202,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 137 0x89 '�' */
+	/* 137 0x89 '' */
 	0x00, /* 0000000 */
 	0xcc, /* 1100110 */
 	0x00, /* 0000000 */
@@ -2218,7 +2218,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 138 0x8a '�' */
+	/* 138 0x8a '' */
 	0xc0, /* 1100000 */
 	0x60, /* 0110000 */
 	0x30, /* 0011000 */
@@ -2234,7 +2234,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 139 0x8b '�' */
+	/* 139 0x8b '' */
 	0x00, /* 0000000 */
 	0x6c, /* 0110110 */
 	0x00, /* 0000000 */
@@ -2250,7 +2250,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 140 0x8c '�' */
+	/* 140 0x8c '' */
 	0x30, /* 0011000 */
 	0x78, /* 0111100 */
 	0xcc, /* 1100110 */
@@ -2266,7 +2266,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 141 0x8d '�' */
+	/* 141 0x8d '' */
 	0xc0, /* 1100000 */
 	0x60, /* 0110000 */
 	0x30, /* 0011000 */
@@ -2282,7 +2282,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 142 0x8e '�' */
+	/* 142 0x8e '' */
 	0x00, /* 0000000 */
 	0xcc, /* 1100110 */
 	0x00, /* 0000000 */
@@ -2298,7 +2298,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 143 0x8f '�' */
+	/* 143 0x8f '' */
 	0x30, /* 0011000 */
 	0x48, /* 0100100 */
 	0x48, /* 0100100 */
@@ -2314,7 +2314,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 144 0x90 '�' */
+	/* 144 0x90 '' */
 	0x18, /* 0001100 */
 	0x30, /* 0011000 */
 	0xfc, /* 1111110 */
@@ -2330,7 +2330,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 145 0x91 '�' */
+	/* 145 0x91 '' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -2346,7 +2346,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 146 0x92 '�' */
+	/* 146 0x92 '' */
 	0x00, /* 0000000 */
 	0x3e, /* 0011111 */
 	0x6c, /* 0110110 */
@@ -2362,7 +2362,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 147 0x93 '�' */
+	/* 147 0x93 '' */
 	0x10, /* 0001000 */
 	0x38, /* 0011100 */
 	0x6c, /* 0110110 */
@@ -2378,7 +2378,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 148 0x94 '�' */
+	/* 148 0x94 '' */
 	0x00, /* 0000000 */
 	0xcc, /* 1100110 */
 	0x00, /* 0000000 */
@@ -2394,7 +2394,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 149 0x95 '�' */
+	/* 149 0x95 '' */
 	0xc0, /* 1100000 */
 	0x60, /* 0110000 */
 	0x30, /* 0011000 */
@@ -2410,7 +2410,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 150 0x96 '�' */
+	/* 150 0x96 '' */
 	0x30, /* 0011000 */
 	0x78, /* 0111100 */
 	0xcc, /* 1100110 */
@@ -2426,7 +2426,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 151 0x97 '�' */
+	/* 151 0x97 '' */
 	0x60, /* 0110000 */
 	0x30, /* 0011000 */
 	0x18, /* 0001100 */
@@ -2442,7 +2442,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 152 0x98 '�' */
+	/* 152 0x98 '' */
 	0x00, /* 0000000 */
 	0xcc, /* 1100110 */
 	0x00, /* 0000000 */
@@ -2458,7 +2458,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x18, /* 0001100 */
 	0x70, /* 0111000 */
 
-	/* 153 0x99 '�' */
+	/* 153 0x99 '' */
 	0xcc, /* 1100110 */
 	0x00, /* 0000000 */
 	0x78, /* 0111100 */
@@ -2474,7 +2474,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 154 0x9a '�' */
+	/* 154 0x9a '' */
 	0xcc, /* 1100110 */
 	0x00, /* 0000000 */
 	0xcc, /* 1100110 */
@@ -2490,7 +2490,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 155 0x9b '�' */
+	/* 155 0x9b '' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x7c, /* 0111110 */
@@ -2506,7 +2506,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 156 0x9c '�' */
+	/* 156 0x9c '' */
 	0x38, /* 0011100 */
 	0x6c, /* 0110110 */
 	0x64, /* 0110010 */
@@ -2522,7 +2522,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 157 0x9d '�' */
+	/* 157 0x9d '' */
 	0x00, /* 0000000 */
 	0xcc, /* 1100110 */
 	0xcc, /* 1100110 */
@@ -2538,7 +2538,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 158 0x9e '�' */
+	/* 158 0x9e '' */
 	0xf8, /* 1111100 */
 	0xcc, /* 1100110 */
 	0xcc, /* 1100110 */
@@ -2554,7 +2554,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 159 0x9f '�' */
+	/* 159 0x9f '' */
 	0x1c, /* 0001110 */
 	0x36, /* 0011011 */
 	0x30, /* 0011000 */
@@ -2570,7 +2570,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 160 0xa0 '�' */
+	/* 160 0xa0 ' ' */
 	0x18, /* 0001100 */
 	0x30, /* 0011000 */
 	0x60, /* 0110000 */
@@ -2586,7 +2586,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 161 0xa1 '�' */
+	/* 161 0xa1 '¡' */
 	0x18, /* 0001100 */
 	0x30, /* 0011000 */
 	0x60, /* 0110000 */
@@ -2602,7 +2602,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 162 0xa2 '�' */
+	/* 162 0xa2 '¢' */
 	0x18, /* 0001100 */
 	0x30, /* 0011000 */
 	0x60, /* 0110000 */
@@ -2618,7 +2618,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 163 0xa3 '�' */
+	/* 163 0xa3 '£' */
 	0x18, /* 0001100 */
 	0x30, /* 0011000 */
 	0x60, /* 0110000 */
@@ -2634,7 +2634,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 164 0xa4 '�' */
+	/* 164 0xa4 '¤' */
 	0x00, /* 0000000 */
 	0x76, /* 0111011 */
 	0xdc, /* 1101110 */
@@ -2650,7 +2650,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 165 0xa5 '�' */
+	/* 165 0xa5 '¥' */
 	0x76, /* 0111011 */
 	0xdc, /* 1101110 */
 	0x00, /* 0000000 */
@@ -2666,7 +2666,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 166 0xa6 '�' */
+	/* 166 0xa6 '¦' */
 	0x00, /* 0000000 */
 	0x78, /* 0111100 */
 	0xd8, /* 1101100 */
@@ -2682,7 +2682,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 167 0xa7 '�' */
+	/* 167 0xa7 '§' */
 	0x00, /* 0000000 */
 	0x70, /* 0111000 */
 	0xd8, /* 1101100 */
@@ -2698,7 +2698,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 168 0xa8 '�' */
+	/* 168 0xa8 '¨' */
 	0x00, /* 0000000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -2714,7 +2714,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 169 0xa9 '�' */
+	/* 169 0xa9 '©' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -2730,7 +2730,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 170 0xaa '�' */
+	/* 170 0xaa 'ª' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -2746,7 +2746,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 171 0xab '�' */
+	/* 171 0xab '«' */
 	0x60, /* 0110000 */
 	0xe0, /* 1110000 */
 	0x62, /* 0110001 */
@@ -2762,7 +2762,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x7c, /* 0111110 */
 
-	/* 172 0xac '�' */
+	/* 172 0xac '¬' */
 	0x60, /* 0110000 */
 	0xe0, /* 1110000 */
 	0x62, /* 0110001 */
@@ -2778,7 +2778,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x0c, /* 0000110 */
 	0x00, /* 0000000 */
 
-	/* 173 0xad '�' */
+	/* 173 0xad '­' */
 	0x00, /* 0000000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -2794,7 +2794,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 174 0xae '�' */
+	/* 174 0xae '®' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -2810,7 +2810,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 175 0xaf '�' */
+	/* 175 0xaf '¯' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -2826,7 +2826,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 176 0xb0 '�' */
+	/* 176 0xb0 '°' */
 	0x88, /* 1000100 */
 	0x22, /* 0010001 */
 	0x88, /* 1000100 */
@@ -2842,7 +2842,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x88, /* 1000100 */
 	0x22, /* 0010001 */
 
-	/* 177 0xb1 '�' */
+	/* 177 0xb1 '±' */
 	0x54, /* 0101010 */
 	0xaa, /* 1010101 */
 	0x54, /* 0101010 */
@@ -2858,7 +2858,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x54, /* 0101010 */
 	0xaa, /* 1010101 */
 
-	/* 178 0xb2 '�' */
+	/* 178 0xb2 '²' */
 	0xee, /* 1110111 */
 	0xba, /* 1011101 */
 	0xee, /* 1110111 */
@@ -2874,7 +2874,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0xee, /* 1110111 */
 	0xba, /* 1011101 */
 
-	/* 179 0xb3 '�' */
+	/* 179 0xb3 '³' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -2890,7 +2890,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 180 0xb4 '�' */
+	/* 180 0xb4 '´' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -2906,7 +2906,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 181 0xb5 '�' */
+	/* 181 0xb5 'µ' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -2922,7 +2922,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 182 0xb6 '�' */
+	/* 182 0xb6 '¶' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -2938,7 +2938,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 183 0xb7 '�' */
+	/* 183 0xb7 '·' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -2954,7 +2954,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 184 0xb8 '�' */
+	/* 184 0xb8 '¸' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -2970,7 +2970,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 185 0xb9 '�' */
+	/* 185 0xb9 '¹' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -2986,7 +2986,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 186 0xba '�' */
+	/* 186 0xba 'º' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3002,7 +3002,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 187 0xbb '�' */
+	/* 187 0xbb '»' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3018,7 +3018,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 188 0xbc '�' */
+	/* 188 0xbc '¼' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3034,7 +3034,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 189 0xbd '�' */
+	/* 189 0xbd '½' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3050,7 +3050,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 190 0xbe '�' */
+	/* 190 0xbe '¾' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -3066,7 +3066,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 191 0xbf '�' */
+	/* 191 0xbf '¿' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3082,7 +3082,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 192 0xc0 '�' */
+	/* 192 0xc0 'À' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -3098,7 +3098,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 193 0xc1 '�' */
+	/* 193 0xc1 'Á' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -3114,7 +3114,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 194 0xc2 '�' */
+	/* 194 0xc2 'Â' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3130,7 +3130,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 195 0xc3 '�' */
+	/* 195 0xc3 'Ã' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -3146,7 +3146,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 196 0xc4 '�' */
+	/* 196 0xc4 'Ä' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3162,7 +3162,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 197 0xc5 '�' */
+	/* 197 0xc5 'Å' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -3178,7 +3178,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 198 0xc6 '�' */
+	/* 198 0xc6 'Æ' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -3194,7 +3194,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 199 0xc7 '�' */
+	/* 199 0xc7 'Ç' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3210,7 +3210,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 200 0xc8 '�' */
+	/* 200 0xc8 'È' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3226,7 +3226,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 201 0xc9 '�' */
+	/* 201 0xc9 'É' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3242,7 +3242,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 202 0xca '�' */
+	/* 202 0xca 'Ê' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3258,7 +3258,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 203 0xcb '�' */
+	/* 203 0xcb 'Ë' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3274,7 +3274,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 204 0xcc '�' */
+	/* 204 0xcc 'Ì' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3290,7 +3290,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 205 0xcd '�' */
+	/* 205 0xcd 'Í' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3306,7 +3306,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 206 0xce '�' */
+	/* 206 0xce 'Î' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3322,7 +3322,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 207 0xcf '�' */
+	/* 207 0xcf 'Ï' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -3338,7 +3338,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 208 0xd0 '�' */
+	/* 208 0xd0 'Ð' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3354,7 +3354,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 209 0xd1 '�' */
+	/* 209 0xd1 'Ñ' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3370,7 +3370,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 210 0xd2 '�' */
+	/* 210 0xd2 'Ò' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3386,7 +3386,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 211 0xd3 '�' */
+	/* 211 0xd3 'Ó' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3402,7 +3402,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 212 0xd4 '�' */
+	/* 212 0xd4 'Ô' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -3418,7 +3418,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 213 0xd5 '�' */
+	/* 213 0xd5 'Õ' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3434,7 +3434,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 214 0xd6 '�' */
+	/* 214 0xd6 'Ö' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3450,7 +3450,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 215 0xd7 '�' */
+	/* 215 0xd7 '×' */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3466,7 +3466,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
 
-	/* 216 0xd8 '�' */
+	/* 216 0xd8 'Ø' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -3482,7 +3482,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 217 0xd9 '�' */
+	/* 217 0xd9 'Ù' */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
@@ -3498,7 +3498,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 218 0xda '�' */
+	/* 218 0xda 'Ú' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3514,7 +3514,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 219 0xdb '�' */
+	/* 219 0xdb 'Û' */
 	0xfe, /* 1111111 */
 	0xfe, /* 1111111 */
 	0xfe, /* 1111111 */
@@ -3530,7 +3530,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0xfe, /* 1111111 */
 	0xfe, /* 1111111 */
 
-	/* 220 0xdc '�' */
+	/* 220 0xdc 'Ü' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3546,7 +3546,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0xfe, /* 1111111 */
 	0xfe, /* 1111111 */
 
-	/* 221 0xdd '�' */
+	/* 221 0xdd 'Ý' */
 	0xe0, /* 1110000 */
 	0xe0, /* 1110000 */
 	0xe0, /* 1110000 */
@@ -3562,7 +3562,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0xe0, /* 1110000 */
 	0xe0, /* 1110000 */
 
-	/* 222 0xde '�' */
+	/* 222 0xde 'Þ' */
 	0x1e, /* 0001111 */
 	0x1e, /* 0001111 */
 	0x1e, /* 0001111 */
@@ -3578,7 +3578,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x1e, /* 0001111 */
 	0x1e, /* 0001111 */
 
-	/* 223 0xdf '�' */
+	/* 223 0xdf 'ß' */
 	0xfe, /* 1111111 */
 	0xfe, /* 1111111 */
 	0xfe, /* 1111111 */
@@ -3594,7 +3594,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 224 0xe0 '�' */
+	/* 224 0xe0 'à' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3610,7 +3610,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 225 0xe1 '�' */
+	/* 225 0xe1 'á' */
 	0x00, /* 0000000 */
 	0x78, /* 0111100 */
 	0xcc, /* 1100110 */
@@ -3626,7 +3626,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 226 0xe2 '�' */
+	/* 226 0xe2 'â' */
 	0x00, /* 0000000 */
 	0xfc, /* 1111110 */
 	0xcc, /* 1100110 */
@@ -3642,7 +3642,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 227 0xe3 '�' */
+	/* 227 0xe3 'ã' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0xfe, /* 1111111 */
@@ -3658,7 +3658,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 228 0xe4 '�' */
+	/* 228 0xe4 'ä' */
 	0x00, /* 0000000 */
 	0xfc, /* 1111110 */
 	0xcc, /* 1100110 */
@@ -3674,7 +3674,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 229 0xe5 '�' */
+	/* 229 0xe5 'å' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3690,7 +3690,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 230 0xe6 '�' */
+	/* 230 0xe6 'æ' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3706,7 +3706,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0xc0, /* 1100000 */
 	0x80, /* 1000000 */
 
-	/* 231 0xe7 '�' */
+	/* 231 0xe7 'ç' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3722,7 +3722,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 232 0xe8 '�' */
+	/* 232 0xe8 'è' */
 	0x00, /* 0000000 */
 	0xfc, /* 1111110 */
 	0x30, /* 0011000 */
@@ -3738,7 +3738,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 233 0xe9 '�' */
+	/* 233 0xe9 'é' */
 	0x00, /* 0000000 */
 	0x38, /* 0011100 */
 	0x6c, /* 0110110 */
@@ -3754,7 +3754,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 234 0xea '�' */
+	/* 234 0xea 'ê' */
 	0x00, /* 0000000 */
 	0x38, /* 0011100 */
 	0x6c, /* 0110110 */
@@ -3770,7 +3770,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 235 0xeb '�' */
+	/* 235 0xeb 'ë' */
 	0x00, /* 0000000 */
 	0x3c, /* 0011110 */
 	0x60, /* 0110000 */
@@ -3786,7 +3786,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 236 0xec '�' */
+	/* 236 0xec 'ì' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3802,7 +3802,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 237 0xed '�' */
+	/* 237 0xed 'í' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x06, /* 0000011 */
@@ -3818,7 +3818,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 238 0xee '�' */
+	/* 238 0xee 'î' */
 	0x00, /* 0000000 */
 	0x1c, /* 0001110 */
 	0x30, /* 0011000 */
@@ -3834,7 +3834,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 239 0xef '�' */
+	/* 239 0xef 'ï' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x78, /* 0111100 */
@@ -3850,7 +3850,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 240 0xf0 '�' */
+	/* 240 0xf0 'ð' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3866,7 +3866,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 241 0xf1 '�' */
+	/* 241 0xf1 'ñ' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3882,7 +3882,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 242 0xf2 '�' */
+	/* 242 0xf2 'ò' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x60, /* 0110000 */
@@ -3898,7 +3898,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 243 0xf3 '�' */
+	/* 243 0xf3 'ó' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x18, /* 0001100 */
@@ -3914,7 +3914,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 244 0xf4 '�' */
+	/* 244 0xf4 'ô' */
 	0x00, /* 0000000 */
 	0x1c, /* 0001110 */
 	0x36, /* 0011011 */
@@ -3930,7 +3930,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x30, /* 0011000 */
 	0x30, /* 0011000 */
 
-	/* 245 0xf5 '�' */
+	/* 245 0xf5 'õ' */
 	0x18, /* 0001100 */
 	0x18, /* 0001100 */
 	0x18, /* 0001100 */
@@ -3946,7 +3946,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 246 0xf6 '�' */
+	/* 246 0xf6 'ö' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3962,7 +3962,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 247 0xf7 '�' */
+	/* 247 0xf7 '÷' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -3978,7 +3978,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 248 0xf8 '�' */
+	/* 248 0xf8 'ø' */
 	0x38, /* 0011100 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -3994,7 +3994,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 249 0xf9 '�' */
+	/* 249 0xf9 'ù' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -4010,7 +4010,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 250 0xfa '�' */
+	/* 250 0xfa 'ú' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -4026,7 +4026,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 251 0xfb '�' */
+	/* 251 0xfb 'û' */
 	0x1e, /* 0001111 */
 	0x18, /* 0001100 */
 	0x18, /* 0001100 */
@@ -4042,7 +4042,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 252 0xfc '�' */
+	/* 252 0xfc 'ü' */
 	0xd8, /* 1101100 */
 	0x6c, /* 0110110 */
 	0x6c, /* 0110110 */
@@ -4058,7 +4058,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 253 0xfd '�' */
+	/* 253 0xfd 'ý' */
 	0x78, /* 0111100 */
 	0xcc, /* 1100110 */
 	0x18, /* 0001100 */
@@ -4074,7 +4074,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 254 0xfe '�' */
+	/* 254 0xfe 'þ' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
@@ -4090,7 +4090,7 @@ static const unsigned char fontdata_7x14[FONTDATAMAX] = {
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 
-	/* 255 0xff '�' */
+	/* 255 0xff 'ÿ' */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
 	0x00, /* 0000000 */
diff --git a/lib/fonts/font_8x16.c b/lib/fonts/font_8x16.c
index c5c14fc427af..e6d40d0de3e0 100644
--- a/lib/fonts/font_8x16.c
+++ b/lib/fonts/font_8x16.c
@@ -2316,7 +2316,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 128 0x80 '�' */
+	/* 128 0x80 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x3c, /* 00111100 */
@@ -2334,7 +2334,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 129 0x81 '�' */
+	/* 129 0x81 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xcc, /* 11001100 */
@@ -2352,7 +2352,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 130 0x82 '�' */
+	/* 130 0x82 '' */
 	0x00, /* 00000000 */
 	0x0c, /* 00001100 */
 	0x18, /* 00011000 */
@@ -2370,7 +2370,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 131 0x83 '�' */
+	/* 131 0x83 '' */
 	0x00, /* 00000000 */
 	0x10, /* 00010000 */
 	0x38, /* 00111000 */
@@ -2388,7 +2388,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 132 0x84 '�' */
+	/* 132 0x84 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xcc, /* 11001100 */
@@ -2406,7 +2406,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 133 0x85 '�' */
+	/* 133 0x85 '' */
 	0x00, /* 00000000 */
 	0x60, /* 01100000 */
 	0x30, /* 00110000 */
@@ -2424,7 +2424,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 134 0x86 '�' */
+	/* 134 0x86 '' */
 	0x00, /* 00000000 */
 	0x38, /* 00111000 */
 	0x6c, /* 01101100 */
@@ -2442,7 +2442,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 135 0x87 '�' */
+	/* 135 0x87 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -2460,7 +2460,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 136 0x88 '�' */
+	/* 136 0x88 '' */
 	0x00, /* 00000000 */
 	0x10, /* 00010000 */
 	0x38, /* 00111000 */
@@ -2478,7 +2478,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 137 0x89 '�' */
+	/* 137 0x89 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xc6, /* 11000110 */
@@ -2496,7 +2496,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 138 0x8a '�' */
+	/* 138 0x8a '' */
 	0x00, /* 00000000 */
 	0x60, /* 01100000 */
 	0x30, /* 00110000 */
@@ -2514,7 +2514,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 139 0x8b '�' */
+	/* 139 0x8b '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x66, /* 01100110 */
@@ -2532,7 +2532,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 140 0x8c '�' */
+	/* 140 0x8c '' */
 	0x00, /* 00000000 */
 	0x18, /* 00011000 */
 	0x3c, /* 00111100 */
@@ -2550,7 +2550,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 141 0x8d '�' */
+	/* 141 0x8d '' */
 	0x00, /* 00000000 */
 	0x60, /* 01100000 */
 	0x30, /* 00110000 */
@@ -2568,7 +2568,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 142 0x8e '�' */
+	/* 142 0x8e '' */
 	0x00, /* 00000000 */
 	0xc6, /* 11000110 */
 	0x00, /* 00000000 */
@@ -2586,7 +2586,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 143 0x8f '�' */
+	/* 143 0x8f '' */
 	0x38, /* 00111000 */
 	0x6c, /* 01101100 */
 	0x38, /* 00111000 */
@@ -2604,7 +2604,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 144 0x90 '�' */
+	/* 144 0x90 '' */
 	0x0c, /* 00001100 */
 	0x18, /* 00011000 */
 	0x00, /* 00000000 */
@@ -2622,7 +2622,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 145 0x91 '�' */
+	/* 145 0x91 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -2640,7 +2640,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 146 0x92 '�' */
+	/* 146 0x92 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x3e, /* 00111110 */
@@ -2658,7 +2658,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 147 0x93 '�' */
+	/* 147 0x93 '' */
 	0x00, /* 00000000 */
 	0x10, /* 00010000 */
 	0x38, /* 00111000 */
@@ -2676,7 +2676,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 148 0x94 '�' */
+	/* 148 0x94 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xc6, /* 11000110 */
@@ -2694,7 +2694,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 149 0x95 '�' */
+	/* 149 0x95 '' */
 	0x00, /* 00000000 */
 	0x60, /* 01100000 */
 	0x30, /* 00110000 */
@@ -2712,7 +2712,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 150 0x96 '�' */
+	/* 150 0x96 '' */
 	0x00, /* 00000000 */
 	0x30, /* 00110000 */
 	0x78, /* 01111000 */
@@ -2730,7 +2730,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 151 0x97 '�' */
+	/* 151 0x97 '' */
 	0x00, /* 00000000 */
 	0x60, /* 01100000 */
 	0x30, /* 00110000 */
@@ -2748,7 +2748,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 152 0x98 '�' */
+	/* 152 0x98 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xc6, /* 11000110 */
@@ -2766,7 +2766,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x78, /* 01111000 */
 	0x00, /* 00000000 */
 
-	/* 153 0x99 '�' */
+	/* 153 0x99 '' */
 	0x00, /* 00000000 */
 	0xc6, /* 11000110 */
 	0x00, /* 00000000 */
@@ -2784,7 +2784,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 154 0x9a '�' */
+	/* 154 0x9a '' */
 	0x00, /* 00000000 */
 	0xc6, /* 11000110 */
 	0x00, /* 00000000 */
@@ -2802,7 +2802,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 155 0x9b '�' */
+	/* 155 0x9b '' */
 	0x00, /* 00000000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -2820,7 +2820,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 156 0x9c '�' */
+	/* 156 0x9c '' */
 	0x00, /* 00000000 */
 	0x38, /* 00111000 */
 	0x6c, /* 01101100 */
@@ -2838,7 +2838,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 157 0x9d '�' */
+	/* 157 0x9d '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x66, /* 01100110 */
@@ -2856,7 +2856,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 158 0x9e '�' */
+	/* 158 0x9e '' */
 	0x00, /* 00000000 */
 	0xf8, /* 11111000 */
 	0xcc, /* 11001100 */
@@ -2874,7 +2874,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 159 0x9f '�' */
+	/* 159 0x9f '' */
 	0x00, /* 00000000 */
 	0x0e, /* 00001110 */
 	0x1b, /* 00011011 */
@@ -2892,7 +2892,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 160 0xa0 '�' */
+	/* 160 0xa0 ' ' */
 	0x00, /* 00000000 */
 	0x18, /* 00011000 */
 	0x30, /* 00110000 */
@@ -2910,7 +2910,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 161 0xa1 '�' */
+	/* 161 0xa1 '¡' */
 	0x00, /* 00000000 */
 	0x0c, /* 00001100 */
 	0x18, /* 00011000 */
@@ -2928,7 +2928,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 162 0xa2 '�' */
+	/* 162 0xa2 '¢' */
 	0x00, /* 00000000 */
 	0x18, /* 00011000 */
 	0x30, /* 00110000 */
@@ -2946,7 +2946,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 163 0xa3 '�' */
+	/* 163 0xa3 '£' */
 	0x00, /* 00000000 */
 	0x18, /* 00011000 */
 	0x30, /* 00110000 */
@@ -2964,7 +2964,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 164 0xa4 '�' */
+	/* 164 0xa4 '¤' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x76, /* 01110110 */
@@ -2982,7 +2982,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 165 0xa5 '�' */
+	/* 165 0xa5 '¥' */
 	0x76, /* 01110110 */
 	0xdc, /* 11011100 */
 	0x00, /* 00000000 */
@@ -3000,7 +3000,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 166 0xa6 '�' */
+	/* 166 0xa6 '¦' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x3c, /* 00111100 */
@@ -3018,7 +3018,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 167 0xa7 '�' */
+	/* 167 0xa7 '§' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x38, /* 00111000 */
@@ -3036,7 +3036,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 168 0xa8 '�' */
+	/* 168 0xa8 '¨' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x30, /* 00110000 */
@@ -3054,7 +3054,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 169 0xa9 '�' */
+	/* 169 0xa9 '©' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3072,7 +3072,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 170 0xaa '�' */
+	/* 170 0xaa 'ª' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3090,7 +3090,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 171 0xab '�' */
+	/* 171 0xab '«' */
 	0x00, /* 00000000 */
 	0x60, /* 01100000 */
 	0xe0, /* 11100000 */
@@ -3108,7 +3108,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 172 0xac '�' */
+	/* 172 0xac '¬' */
 	0x00, /* 00000000 */
 	0x60, /* 01100000 */
 	0xe0, /* 11100000 */
@@ -3126,7 +3126,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 173 0xad '�' */
+	/* 173 0xad '­' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x18, /* 00011000 */
@@ -3144,7 +3144,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 174 0xae '�' */
+	/* 174 0xae '®' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3162,7 +3162,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 175 0xaf '�' */
+	/* 175 0xaf '¯' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3180,7 +3180,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 176 0xb0 '�' */
+	/* 176 0xb0 '°' */
 	0x11, /* 00010001 */
 	0x44, /* 01000100 */
 	0x11, /* 00010001 */
@@ -3198,7 +3198,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x11, /* 00010001 */
 	0x44, /* 01000100 */
 
-	/* 177 0xb1 '�' */
+	/* 177 0xb1 '±' */
 	0x55, /* 01010101 */
 	0xaa, /* 10101010 */
 	0x55, /* 01010101 */
@@ -3216,7 +3216,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x55, /* 01010101 */
 	0xaa, /* 10101010 */
 
-	/* 178 0xb2 '�' */
+	/* 178 0xb2 '²' */
 	0xdd, /* 11011101 */
 	0x77, /* 01110111 */
 	0xdd, /* 11011101 */
@@ -3234,7 +3234,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0xdd, /* 11011101 */
 	0x77, /* 01110111 */
 
-	/* 179 0xb3 '�' */
+	/* 179 0xb3 '³' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3252,7 +3252,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 180 0xb4 '�' */
+	/* 180 0xb4 '´' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3270,7 +3270,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 181 0xb5 '�' */
+	/* 181 0xb5 'µ' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3288,7 +3288,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 182 0xb6 '�' */
+	/* 182 0xb6 '¶' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3306,7 +3306,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 183 0xb7 '�' */
+	/* 183 0xb7 '·' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3324,7 +3324,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 184 0xb8 '�' */
+	/* 184 0xb8 '¸' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3342,7 +3342,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 185 0xb9 '�' */
+	/* 185 0xb9 '¹' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3360,7 +3360,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 186 0xba '�' */
+	/* 186 0xba 'º' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3378,7 +3378,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 187 0xbb '�' */
+	/* 187 0xbb '»' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3396,7 +3396,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 188 0xbc '�' */
+	/* 188 0xbc '¼' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3414,7 +3414,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 189 0xbd '�' */
+	/* 189 0xbd '½' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3432,7 +3432,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 190 0xbe '�' */
+	/* 190 0xbe '¾' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3450,7 +3450,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 191 0xbf '�' */
+	/* 191 0xbf '¿' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3468,7 +3468,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 192 0xc0 '�' */
+	/* 192 0xc0 'À' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3486,7 +3486,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 193 0xc1 '�' */
+	/* 193 0xc1 'Á' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3504,7 +3504,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 194 0xc2 '�' */
+	/* 194 0xc2 'Â' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3522,7 +3522,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 195 0xc3 '�' */
+	/* 195 0xc3 'Ã' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3540,7 +3540,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 196 0xc4 '�' */
+	/* 196 0xc4 'Ä' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3558,7 +3558,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 197 0xc5 '�' */
+	/* 197 0xc5 'Å' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3576,7 +3576,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 198 0xc6 '�' */
+	/* 198 0xc6 'Æ' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3594,7 +3594,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 199 0xc7 '�' */
+	/* 199 0xc7 'Ç' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3612,7 +3612,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 200 0xc8 '�' */
+	/* 200 0xc8 'È' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3630,7 +3630,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 201 0xc9 '�' */
+	/* 201 0xc9 'É' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3648,7 +3648,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 202 0xca '�' */
+	/* 202 0xca 'Ê' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3666,7 +3666,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 203 0xcb '�' */
+	/* 203 0xcb 'Ë' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3684,7 +3684,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 204 0xcc '�' */
+	/* 204 0xcc 'Ì' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3702,7 +3702,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 205 0xcd '�' */
+	/* 205 0xcd 'Í' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3720,7 +3720,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 206 0xce '�' */
+	/* 206 0xce 'Î' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3738,7 +3738,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 207 0xcf '�' */
+	/* 207 0xcf 'Ï' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3756,7 +3756,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 208 0xd0 '�' */
+	/* 208 0xd0 'Ð' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3774,7 +3774,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 209 0xd1 '�' */
+	/* 209 0xd1 'Ñ' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3792,7 +3792,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 210 0xd2 '�' */
+	/* 210 0xd2 'Ò' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3810,7 +3810,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 211 0xd3 '�' */
+	/* 211 0xd3 'Ó' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3828,7 +3828,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 212 0xd4 '�' */
+	/* 212 0xd4 'Ô' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3846,7 +3846,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 213 0xd5 '�' */
+	/* 213 0xd5 'Õ' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3864,7 +3864,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 214 0xd6 '�' */
+	/* 214 0xd6 'Ö' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3882,7 +3882,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 215 0xd7 '�' */
+	/* 215 0xd7 '×' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -3900,7 +3900,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 216 0xd8 '�' */
+	/* 216 0xd8 'Ø' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3918,7 +3918,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 217 0xd9 '�' */
+	/* 217 0xd9 'Ù' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -3936,7 +3936,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 218 0xda '�' */
+	/* 218 0xda 'Ú' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3954,7 +3954,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 219 0xdb '�' */
+	/* 219 0xdb 'Û' */
 	0xff, /* 11111111 */
 	0xff, /* 11111111 */
 	0xff, /* 11111111 */
@@ -3972,7 +3972,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0xff, /* 11111111 */
 	0xff, /* 11111111 */
 
-	/* 220 0xdc '�' */
+	/* 220 0xdc 'Ü' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -3990,7 +3990,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0xff, /* 11111111 */
 	0xff, /* 11111111 */
 
-	/* 221 0xdd '�' */
+	/* 221 0xdd 'Ý' */
 	0xf0, /* 11110000 */
 	0xf0, /* 11110000 */
 	0xf0, /* 11110000 */
@@ -4008,7 +4008,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0xf0, /* 11110000 */
 	0xf0, /* 11110000 */
 
-	/* 222 0xde '�' */
+	/* 222 0xde 'Þ' */
 	0x0f, /* 00001111 */
 	0x0f, /* 00001111 */
 	0x0f, /* 00001111 */
@@ -4026,7 +4026,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x0f, /* 00001111 */
 	0x0f, /* 00001111 */
 
-	/* 223 0xdf '�' */
+	/* 223 0xdf 'ß' */
 	0xff, /* 11111111 */
 	0xff, /* 11111111 */
 	0xff, /* 11111111 */
@@ -4044,7 +4044,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 224 0xe0 '�' */
+	/* 224 0xe0 'à' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4062,7 +4062,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 225 0xe1 '�' */
+	/* 225 0xe1 'á' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x78, /* 01111000 */
@@ -4080,7 +4080,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 226 0xe2 '�' */
+	/* 226 0xe2 'â' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xfe, /* 11111110 */
@@ -4098,7 +4098,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 227 0xe3 '�' */
+	/* 227 0xe3 'ã' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4116,7 +4116,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 228 0xe4 '�' */
+	/* 228 0xe4 'ä' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xfe, /* 11111110 */
@@ -4134,7 +4134,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 229 0xe5 '�' */
+	/* 229 0xe5 'å' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4152,7 +4152,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 230 0xe6 '�' */
+	/* 230 0xe6 'æ' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4170,7 +4170,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0xc0, /* 11000000 */
 	0x00, /* 00000000 */
 
-	/* 231 0xe7 '�' */
+	/* 231 0xe7 'ç' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4188,7 +4188,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 232 0xe8 '�' */
+	/* 232 0xe8 'è' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x7e, /* 01111110 */
@@ -4206,7 +4206,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 233 0xe9 '�' */
+	/* 233 0xe9 'é' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x38, /* 00111000 */
@@ -4224,7 +4224,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 234 0xea '�' */
+	/* 234 0xea 'ê' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x38, /* 00111000 */
@@ -4242,7 +4242,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 235 0xeb '�' */
+	/* 235 0xeb 'ë' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x1e, /* 00011110 */
@@ -4260,7 +4260,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 236 0xec '�' */
+	/* 236 0xec 'ì' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4278,7 +4278,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 237 0xed '�' */
+	/* 237 0xed 'í' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4296,7 +4296,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 238 0xee '�' */
+	/* 238 0xee 'î' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x1c, /* 00011100 */
@@ -4314,7 +4314,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 239 0xef '�' */
+	/* 239 0xef 'ï' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4332,7 +4332,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 240 0xf0 '�' */
+	/* 240 0xf0 'ð' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4350,7 +4350,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 241 0xf1 '�' */
+	/* 241 0xf1 'ñ' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4368,7 +4368,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 242 0xf2 '�' */
+	/* 242 0xf2 'ò' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4386,7 +4386,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 243 0xf3 '�' */
+	/* 243 0xf3 'ó' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4404,7 +4404,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 244 0xf4 '�' */
+	/* 244 0xf4 'ô' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x0e, /* 00001110 */
@@ -4422,7 +4422,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 245 0xf5 '�' */
+	/* 245 0xf5 'õ' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -4440,7 +4440,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 246 0xf6 '�' */
+	/* 246 0xf6 'ö' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4458,7 +4458,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 247 0xf7 '�' */
+	/* 247 0xf7 '÷' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4476,7 +4476,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 248 0xf8 '�' */
+	/* 248 0xf8 'ø' */
 	0x00, /* 00000000 */
 	0x38, /* 00111000 */
 	0x6c, /* 01101100 */
@@ -4494,7 +4494,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 249 0xf9 '�' */
+	/* 249 0xf9 'ù' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4512,7 +4512,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 250 0xfa '�' */
+	/* 250 0xfa 'ú' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4530,7 +4530,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 251 0xfb '�' */
+	/* 251 0xfb 'û' */
 	0x00, /* 00000000 */
 	0x0f, /* 00001111 */
 	0x0c, /* 00001100 */
@@ -4548,7 +4548,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 252 0xfc '�' */
+	/* 252 0xfc 'ü' */
 	0x00, /* 00000000 */
 	0x6c, /* 01101100 */
 	0x36, /* 00110110 */
@@ -4566,7 +4566,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 253 0xfd '�' */
+	/* 253 0xfd 'ý' */
 	0x00, /* 00000000 */
 	0x3c, /* 00111100 */
 	0x66, /* 01100110 */
@@ -4584,7 +4584,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 254 0xfe '�' */
+	/* 254 0xfe 'þ' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -4602,7 +4602,7 @@ static const unsigned char fontdata_8x16[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 255 0xff '�' */
+	/* 255 0xff 'ÿ' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
diff --git a/lib/fonts/font_8x8.c b/lib/fonts/font_8x8.c
index 24216a68a29c..27d53de57833 100644
--- a/lib/fonts/font_8x8.c
+++ b/lib/fonts/font_8x8.c
@@ -1291,7 +1291,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0xfe, /* 11111110 */
 	0x00, /* 00000000 */
 
-	/* 128 0x80 '�' */
+	/* 128 0x80 '' */
 	0x7c, /* 01111100 */
 	0xc6, /* 11000110 */
 	0xc0, /* 11000000 */
@@ -1301,7 +1301,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x0c, /* 00001100 */
 	0x78, /* 01111000 */
 
-	/* 129 0x81 '�' */
+	/* 129 0x81 '' */
 	0xcc, /* 11001100 */
 	0x00, /* 00000000 */
 	0xcc, /* 11001100 */
@@ -1311,7 +1311,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x76, /* 01110110 */
 	0x00, /* 00000000 */
 
-	/* 130 0x82 '�' */
+	/* 130 0x82 '' */
 	0x0c, /* 00001100 */
 	0x18, /* 00011000 */
 	0x7c, /* 01111100 */
@@ -1321,7 +1321,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x7c, /* 01111100 */
 	0x00, /* 00000000 */
 
-	/* 131 0x83 '�' */
+	/* 131 0x83 '' */
 	0x7c, /* 01111100 */
 	0x82, /* 10000010 */
 	0x78, /* 01111000 */
@@ -1331,7 +1331,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x76, /* 01110110 */
 	0x00, /* 00000000 */
 
-	/* 132 0x84 '�' */
+	/* 132 0x84 '' */
 	0xc6, /* 11000110 */
 	0x00, /* 00000000 */
 	0x78, /* 01111000 */
@@ -1341,7 +1341,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x76, /* 01110110 */
 	0x00, /* 00000000 */
 
-	/* 133 0x85 '�' */
+	/* 133 0x85 '' */
 	0x30, /* 00110000 */
 	0x18, /* 00011000 */
 	0x78, /* 01111000 */
@@ -1351,7 +1351,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x76, /* 01110110 */
 	0x00, /* 00000000 */
 
-	/* 134 0x86 '�' */
+	/* 134 0x86 '' */
 	0x30, /* 00110000 */
 	0x30, /* 00110000 */
 	0x78, /* 01111000 */
@@ -1361,7 +1361,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x76, /* 01110110 */
 	0x00, /* 00000000 */
 
-	/* 135 0x87 '�' */
+	/* 135 0x87 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x7e, /* 01111110 */
@@ -1371,7 +1371,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x0c, /* 00001100 */
 	0x38, /* 00111000 */
 
-	/* 136 0x88 '�' */
+	/* 136 0x88 '' */
 	0x7c, /* 01111100 */
 	0x82, /* 10000010 */
 	0x7c, /* 01111100 */
@@ -1381,7 +1381,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x7c, /* 01111100 */
 	0x00, /* 00000000 */
 
-	/* 137 0x89 '�' */
+	/* 137 0x89 '' */
 	0xc6, /* 11000110 */
 	0x00, /* 00000000 */
 	0x7c, /* 01111100 */
@@ -1391,7 +1391,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x7c, /* 01111100 */
 	0x00, /* 00000000 */
 
-	/* 138 0x8a '�' */
+	/* 138 0x8a '' */
 	0x30, /* 00110000 */
 	0x18, /* 00011000 */
 	0x7c, /* 01111100 */
@@ -1401,7 +1401,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x7c, /* 01111100 */
 	0x00, /* 00000000 */
 
-	/* 139 0x8b '�' */
+	/* 139 0x8b '' */
 	0x66, /* 01100110 */
 	0x00, /* 00000000 */
 	0x38, /* 00111000 */
@@ -1411,7 +1411,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x3c, /* 00111100 */
 	0x00, /* 00000000 */
 
-	/* 140 0x8c '�' */
+	/* 140 0x8c '' */
 	0x7c, /* 01111100 */
 	0x82, /* 10000010 */
 	0x38, /* 00111000 */
@@ -1421,7 +1421,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x3c, /* 00111100 */
 	0x00, /* 00000000 */
 
-	/* 141 0x8d '�' */
+	/* 141 0x8d '' */
 	0x30, /* 00110000 */
 	0x18, /* 00011000 */
 	0x00, /* 00000000 */
@@ -1431,7 +1431,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x3c, /* 00111100 */
 	0x00, /* 00000000 */
 
-	/* 142 0x8e '�' */
+	/* 142 0x8e '' */
 	0xc6, /* 11000110 */
 	0x38, /* 00111000 */
 	0x6c, /* 01101100 */
@@ -1441,7 +1441,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0xc6, /* 11000110 */
 	0x00, /* 00000000 */
 
-	/* 143 0x8f '�' */
+	/* 143 0x8f '' */
 	0x38, /* 00111000 */
 	0x6c, /* 01101100 */
 	0x7c, /* 01111100 */
@@ -1451,7 +1451,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0xc6, /* 11000110 */
 	0x00, /* 00000000 */
 
-	/* 144 0x90 '�' */
+	/* 144 0x90 '' */
 	0x18, /* 00011000 */
 	0x30, /* 00110000 */
 	0xfe, /* 11111110 */
@@ -1461,7 +1461,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0xfe, /* 11111110 */
 	0x00, /* 00000000 */
 
-	/* 145 0x91 '�' */
+	/* 145 0x91 '' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x7e, /* 01111110 */
@@ -1471,7 +1471,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x7e, /* 01111110 */
 	0x00, /* 00000000 */
 
-	/* 146 0x92 '�' */
+	/* 146 0x92 '' */
 	0x3e, /* 00111110 */
 	0x6c, /* 01101100 */
 	0xcc, /* 11001100 */
@@ -1481,7 +1481,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0xce, /* 11001110 */
 	0x00, /* 00000000 */
 
-	/* 147 0x93 '�' */
+	/* 147 0x93 '' */
 	0x7c, /* 01111100 */
 	0x82, /* 10000010 */
 	0x7c, /* 01111100 */
@@ -1491,7 +1491,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x7c, /* 01111100 */
 	0x00, /* 00000000 */
 
-	/* 148 0x94 '�' */
+	/* 148 0x94 '' */
 	0xc6, /* 11000110 */
 	0x00, /* 00000000 */
 	0x7c, /* 01111100 */
@@ -1501,7 +1501,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x7c, /* 01111100 */
 	0x00, /* 00000000 */
 
-	/* 149 0x95 '�' */
+	/* 149 0x95 '' */
 	0x30, /* 00110000 */
 	0x18, /* 00011000 */
 	0x7c, /* 01111100 */
@@ -1511,7 +1511,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x7c, /* 01111100 */
 	0x00, /* 00000000 */
 
-	/* 150 0x96 '�' */
+	/* 150 0x96 '' */
 	0x78, /* 01111000 */
 	0x84, /* 10000100 */
 	0x00, /* 00000000 */
@@ -1521,7 +1521,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x76, /* 01110110 */
 	0x00, /* 00000000 */
 
-	/* 151 0x97 '�' */
+	/* 151 0x97 '' */
 	0x60, /* 01100000 */
 	0x30, /* 00110000 */
 	0xcc, /* 11001100 */
@@ -1531,7 +1531,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x76, /* 01110110 */
 	0x00, /* 00000000 */
 
-	/* 152 0x98 '�' */
+	/* 152 0x98 '' */
 	0xc6, /* 11000110 */
 	0x00, /* 00000000 */
 	0xc6, /* 11000110 */
@@ -1541,7 +1541,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x06, /* 00000110 */
 	0xfc, /* 11111100 */
 
-	/* 153 0x99 '�' */
+	/* 153 0x99 '' */
 	0xc6, /* 11000110 */
 	0x38, /* 00111000 */
 	0x6c, /* 01101100 */
@@ -1551,7 +1551,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x38, /* 00111000 */
 	0x00, /* 00000000 */
 
-	/* 154 0x9a '�' */
+	/* 154 0x9a '' */
 	0xc6, /* 11000110 */
 	0x00, /* 00000000 */
 	0xc6, /* 11000110 */
@@ -1561,7 +1561,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x7c, /* 01111100 */
 	0x00, /* 00000000 */
 
-	/* 155 0x9b '�' */
+	/* 155 0x9b '' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x7e, /* 01111110 */
@@ -1571,7 +1571,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 156 0x9c '�' */
+	/* 156 0x9c '' */
 	0x38, /* 00111000 */
 	0x6c, /* 01101100 */
 	0x64, /* 01100100 */
@@ -1581,7 +1581,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0xfc, /* 11111100 */
 	0x00, /* 00000000 */
 
-	/* 157 0x9d '�' */
+	/* 157 0x9d '' */
 	0x66, /* 01100110 */
 	0x66, /* 01100110 */
 	0x3c, /* 00111100 */
@@ -1591,7 +1591,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 158 0x9e '�' */
+	/* 158 0x9e '' */
 	0xf8, /* 11111000 */
 	0xcc, /* 11001100 */
 	0xcc, /* 11001100 */
@@ -1601,7 +1601,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0xc6, /* 11000110 */
 	0xc7, /* 11000111 */
 
-	/* 159 0x9f '�' */
+	/* 159 0x9f '' */
 	0x0e, /* 00001110 */
 	0x1b, /* 00011011 */
 	0x18, /* 00011000 */
@@ -1611,7 +1611,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x70, /* 01110000 */
 	0x00, /* 00000000 */
 
-	/* 160 0xa0 '�' */
+	/* 160 0xa0 ' ' */
 	0x18, /* 00011000 */
 	0x30, /* 00110000 */
 	0x78, /* 01111000 */
@@ -1621,7 +1621,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x76, /* 01110110 */
 	0x00, /* 00000000 */
 
-	/* 161 0xa1 '�' */
+	/* 161 0xa1 '¡' */
 	0x0c, /* 00001100 */
 	0x18, /* 00011000 */
 	0x00, /* 00000000 */
@@ -1631,7 +1631,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x3c, /* 00111100 */
 	0x00, /* 00000000 */
 
-	/* 162 0xa2 '�' */
+	/* 162 0xa2 '¢' */
 	0x0c, /* 00001100 */
 	0x18, /* 00011000 */
 	0x7c, /* 01111100 */
@@ -1641,7 +1641,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x7c, /* 01111100 */
 	0x00, /* 00000000 */
 
-	/* 163 0xa3 '�' */
+	/* 163 0xa3 '£' */
 	0x18, /* 00011000 */
 	0x30, /* 00110000 */
 	0xcc, /* 11001100 */
@@ -1651,7 +1651,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x76, /* 01110110 */
 	0x00, /* 00000000 */
 
-	/* 164 0xa4 '�' */
+	/* 164 0xa4 '¤' */
 	0x76, /* 01110110 */
 	0xdc, /* 11011100 */
 	0x00, /* 00000000 */
@@ -1661,7 +1661,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x66, /* 01100110 */
 	0x00, /* 00000000 */
 
-	/* 165 0xa5 '�' */
+	/* 165 0xa5 '¥' */
 	0x76, /* 01110110 */
 	0xdc, /* 11011100 */
 	0x00, /* 00000000 */
@@ -1671,7 +1671,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0xce, /* 11001110 */
 	0x00, /* 00000000 */
 
-	/* 166 0xa6 '�' */
+	/* 166 0xa6 '¦' */
 	0x3c, /* 00111100 */
 	0x6c, /* 01101100 */
 	0x6c, /* 01101100 */
@@ -1681,7 +1681,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 167 0xa7 '�' */
+	/* 167 0xa7 '§' */
 	0x38, /* 00111000 */
 	0x6c, /* 01101100 */
 	0x6c, /* 01101100 */
@@ -1691,7 +1691,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 168 0xa8 '�' */
+	/* 168 0xa8 '¨' */
 	0x18, /* 00011000 */
 	0x00, /* 00000000 */
 	0x18, /* 00011000 */
@@ -1701,7 +1701,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x3e, /* 00111110 */
 	0x00, /* 00000000 */
 
-	/* 169 0xa9 '�' */
+	/* 169 0xa9 '©' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -1711,7 +1711,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 170 0xaa '�' */
+	/* 170 0xaa 'ª' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -1721,7 +1721,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 171 0xab '�' */
+	/* 171 0xab '«' */
 	0x63, /* 01100011 */
 	0xe6, /* 11100110 */
 	0x6c, /* 01101100 */
@@ -1731,7 +1731,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0xcc, /* 11001100 */
 	0x0f, /* 00001111 */
 
-	/* 172 0xac '�' */
+	/* 172 0xac '¬' */
 	0x63, /* 01100011 */
 	0xe6, /* 11100110 */
 	0x6c, /* 01101100 */
@@ -1741,7 +1741,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0xdf, /* 11011111 */
 	0x06, /* 00000110 */
 
-	/* 173 0xad '�' */
+	/* 173 0xad '­' */
 	0x18, /* 00011000 */
 	0x00, /* 00000000 */
 	0x18, /* 00011000 */
@@ -1751,7 +1751,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x00, /* 00000000 */
 
-	/* 174 0xae '�' */
+	/* 174 0xae '®' */
 	0x00, /* 00000000 */
 	0x33, /* 00110011 */
 	0x66, /* 01100110 */
@@ -1761,7 +1761,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 175 0xaf '�' */
+	/* 175 0xaf '¯' */
 	0x00, /* 00000000 */
 	0xcc, /* 11001100 */
 	0x66, /* 01100110 */
@@ -1771,7 +1771,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 176 0xb0 '�' */
+	/* 176 0xb0 '°' */
 	0x22, /* 00100010 */
 	0x88, /* 10001000 */
 	0x22, /* 00100010 */
@@ -1781,7 +1781,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x22, /* 00100010 */
 	0x88, /* 10001000 */
 
-	/* 177 0xb1 '�' */
+	/* 177 0xb1 '±' */
 	0x55, /* 01010101 */
 	0xaa, /* 10101010 */
 	0x55, /* 01010101 */
@@ -1791,7 +1791,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x55, /* 01010101 */
 	0xaa, /* 10101010 */
 
-	/* 178 0xb2 '�' */
+	/* 178 0xb2 '²' */
 	0x77, /* 01110111 */
 	0xdd, /* 11011101 */
 	0x77, /* 01110111 */
@@ -1801,7 +1801,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x77, /* 01110111 */
 	0xdd, /* 11011101 */
 
-	/* 179 0xb3 '�' */
+	/* 179 0xb3 '³' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -1811,7 +1811,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 180 0xb4 '�' */
+	/* 180 0xb4 '´' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -1821,7 +1821,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 181 0xb5 '�' */
+	/* 181 0xb5 'µ' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0xf8, /* 11111000 */
@@ -1831,7 +1831,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 182 0xb6 '�' */
+	/* 182 0xb6 '¶' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -1841,7 +1841,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 183 0xb7 '�' */
+	/* 183 0xb7 '·' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -1851,7 +1851,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 184 0xb8 '�' */
+	/* 184 0xb8 '¸' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xf8, /* 11111000 */
@@ -1861,7 +1861,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 185 0xb9 '�' */
+	/* 185 0xb9 '¹' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0xf6, /* 11110110 */
@@ -1871,7 +1871,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 186 0xba '�' */
+	/* 186 0xba 'º' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -1881,7 +1881,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 187 0xbb '�' */
+	/* 187 0xbb '»' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xfe, /* 11111110 */
@@ -1891,7 +1891,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 188 0xbc '�' */
+	/* 188 0xbc '¼' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0xf6, /* 11110110 */
@@ -1901,7 +1901,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 189 0xbd '�' */
+	/* 189 0xbd '½' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -1911,7 +1911,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 190 0xbe '�' */
+	/* 190 0xbe '¾' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0xf8, /* 11111000 */
@@ -1921,7 +1921,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 191 0xbf '�' */
+	/* 191 0xbf '¿' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -1931,7 +1931,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 192 0xc0 '�' */
+	/* 192 0xc0 'À' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -1941,7 +1941,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 193 0xc1 '�' */
+	/* 193 0xc1 'Á' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -1951,7 +1951,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 194 0xc2 '�' */
+	/* 194 0xc2 'Â' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -1961,7 +1961,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 195 0xc3 '�' */
+	/* 195 0xc3 'Ã' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -1971,7 +1971,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 196 0xc4 '�' */
+	/* 196 0xc4 'Ä' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
@@ -1981,7 +1981,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 197 0xc5 '�' */
+	/* 197 0xc5 'Å' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
@@ -1991,7 +1991,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 198 0xc6 '�' */
+	/* 198 0xc6 'Æ' */
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 	0x1f, /* 00011111 */
@@ -2001,7 +2001,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x18, /* 00011000 */
 	0x18, /* 00011000 */
 
-	/* 199 0xc7 '�' */
+	/* 199 0xc7 'Ç' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
@@ -2011,7 +2011,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 200 0xc8 '�' */
+	/* 200 0xc8 'È' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x37, /* 00110111 */
@@ -2021,7 +2021,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 201 0xc9 '�' */
+	/* 201 0xc9 'É' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0x3f, /* 00111111 */
@@ -2031,7 +2031,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 202 0xca '�' */
+	/* 202 0xca 'Ê' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0xf7, /* 11110111 */
@@ -2041,7 +2041,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 203 0xcb '�' */
+	/* 203 0xcb 'Ë' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xff, /* 11111111 */
@@ -2051,7 +2051,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 204 0xcc '�' */
+	/* 204 0xcc 'Ì' */
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 	0x37, /* 00110111 */
@@ -2061,7 +2061,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x36, /* 00110110 */
 	0x36, /* 00110110 */
 
-	/* 205 0xcd '�' */
+	/* 205 0xcd 'Í' */
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 	0xff, /* 11111111 */
@@ -2071,7 +2071,7 @@ static const unsigned char fontdata_8x8[FONTDATAMAX] = {
 	0x00, /* 00000000 */
 	0x00, /* 00000000 */
 
-	/* 206 0xce '�' */
+	/* 206 0xce 'Î' */
 	0


--===============1250598585286119086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1250598585286119086==--
