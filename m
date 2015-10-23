Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x236.google.com ([2607:f8b0:400e:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpWmT-000609-Rv
 for barebox@lists.infradead.org; Fri, 23 Oct 2015 07:28:54 +0000
Received: by pabrc13 with SMTP id rc13so110622519pab.0
 for <barebox@lists.infradead.org>; Fri, 23 Oct 2015 00:28:32 -0700 (PDT)
Received: from L64 ([183.15.243.202])
 by smtp.gmail.com with ESMTPSA id ci2sm17350072pbc.66.2015.10.23.00.28.28
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
 Fri, 23 Oct 2015 00:28:32 -0700 (PDT)
Date: Fri, 23 Oct 2015 15:28:18 +0800
From: Kevin Du Huanpeng <u74147@gmail.com>
Message-ID: <20151023072818.GA11271@L64>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [vedio] support no-ascii fonts?
To: barebox@lists.infradead.org


--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment

Hi, How about add a index before get fontdata?
so, we will able to support non-ascii fonts.
like:
	drivers/video/fbconsole.c
	-->	static void drawchar(struct fbc_priv *priv, int x, int y, char c)
		{
			...
	-		inbuf = &priv->fontdata[c * priv->font_height];
	+		if(priv->index) {
	+			inbuf = look up index in the table.
	+		}
	+		else {
	+			inbuf = &priv->fontdata[c * priv->font_height];
	+		}
the index table like:
	struct font_index fontname_index = {
		{ 0xXXXX, 0xYYYY },	/* where, 0xXXXX is the unioncode of the char     */
		{ 0xXXXX, 0xYYYY },	/* the 0xYYYY is the index of the fontdata array. */
		{ 0xXXXX, 0xYYYY },	/* normally, we don't need a full char set.       */
		{ 0xXXXX, 0xYYYY },	/* just put the used chars in the table.          */
		{ 0xXXXX, 0xYYYY },	/* we also have a tool to generate fontdata array.*/
	};

diff --git a/include/linux/font.h b/include/linux/font.h
index 62b1879..885935f 100644
--- a/include/linux/font.h
+++ b/include/linux/font.h
@@ -12,11 +12,18 @@
 #define _VIDEO_FONT_H
 
 #include <param.h>
+#include <wchar.h>
+
+struct font_index {
+	wchar_t wch;
+	short index;
+};
 
 struct font_desc {
 	const char *name;
 	int width, height;
 	const void *data;
+	const struct font_index *index;
 };
 
 extern const struct font_desc	font_vga_8x16,
diff --git a/lib/fonts/font_7x14.c b/lib/fonts/font_7x14.c
index fe99871..60cb57e 100644
--- a/lib/fonts/font_7x14.c
+++ b/lib/fonts/font_7x14.c
@@ -4113,4 +4113,5 @@ const struct font_desc font_7x14 = {
 	.width	= 7,
 	.height	= 14,
 	.data	= fontdata_7x14,
+	.index	= NULL,
 };
diff --git a/lib/fonts/font_8x16.c b/lib/fonts/font_8x16.c
index 4717ead..0ba2921 100644
--- a/lib/fonts/font_8x16.c
+++ b/lib/fonts/font_8x16.c
@@ -4626,5 +4626,6 @@ const struct font_desc font_vga_8x16 = {
 	.width	= 8,
 	.height	= 16,
 	.data	= fontdata_8x16,
+	.index	= NULL,
 };
 EXPORT_SYMBOL(font_vga_8x16);
diff --git a/lib/fonts/font_mini_4x6.c b/lib/fonts/font_mini_4x6.c
index 3ecb4fb..733d20a 100644
--- a/lib/fonts/font_mini_4x6.c
+++ b/lib/fonts/font_mini_4x6.c
@@ -2152,4 +2152,5 @@ const struct font_desc font_mini_4x6 = {
 	.width	= 4,
 	.height	= 6,
 	.data	= fontdata_mini_4x6,
+	.index	= NULL,
 };



--MGYHOYXEY6WxJCY8
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: inline; filename="font.diff"

diff --git a/include/linux/font.h b/include/linux/font.h
index 62b1879..885935f 100644
--- a/include/linux/font.h
+++ b/include/linux/font.h
@@ -12,11 +12,18 @@
 #define _VIDEO_FONT_H
 
 #include <param.h>
+#include <wchar.h>
+
+struct font_index {
+	wchar_t wch;
+	short index;
+};
 
 struct font_desc {
 	const char *name;
 	int width, height;
 	const void *data;
+	const struct font_index *index;
 };
 
 extern const struct font_desc	font_vga_8x16,
diff --git a/lib/fonts/font_7x14.c b/lib/fonts/font_7x14.c
index fe99871..60cb57e 100644
--- a/lib/fonts/font_7x14.c
+++ b/lib/fonts/font_7x14.c
@@ -4113,4 +4113,5 @@ const struct font_desc font_7x14 = {
 	.width	= 7,
 	.height	= 14,
 	.data	= fontdata_7x14,
+	.index	= NULL,
 };
diff --git a/lib/fonts/font_8x16.c b/lib/fonts/font_8x16.c
index 4717ead..0ba2921 100644
--- a/lib/fonts/font_8x16.c
+++ b/lib/fonts/font_8x16.c
@@ -4626,5 +4626,6 @@ const struct font_desc font_vga_8x16 = {
 	.width	= 8,
 	.height	= 16,
 	.data	= fontdata_8x16,
+	.index	= NULL,
 };
 EXPORT_SYMBOL(font_vga_8x16);
diff --git a/lib/fonts/font_mini_4x6.c b/lib/fonts/font_mini_4x6.c
index 3ecb4fb..733d20a 100644
--- a/lib/fonts/font_mini_4x6.c
+++ b/lib/fonts/font_mini_4x6.c
@@ -2152,4 +2152,5 @@ const struct font_desc font_mini_4x6 = {
 	.width	= 4,
 	.height	= 6,
 	.data	= fontdata_mini_4x6,
+	.index	= NULL,
 };

--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--MGYHOYXEY6WxJCY8--
