Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chjL0-0002gT-Cb
 for barebox@lists.infradead.org; Sat, 25 Feb 2017 20:53:08 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Sat, 25 Feb 2017 21:52:40 +0100
Message-Id: <20170225205242.18106-3-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170225205242.18106-1-u.kleine-koenig@pengutronix.de>
References: <20170225205242.18106-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 2/4] filetype: Add image type for boot images used on Armada
 370 and XP
To: barebox@lists.infradead.org

---
 common/filetype.c  | 8 ++++++++
 include/filetype.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 8d7293347a15..323da026afdc 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -63,6 +63,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_exe] = { "MS-DOS executable", "exe" },
 	[filetype_mxs_bootstream] = { "Freescale MXS bootstream", "mxsbs" },
 	[filetype_socfpga_xload] = { "SoCFPGA prebootloader image", "socfpga-xload" },
+	[filetype_kwbimage_v1] = { "MVEBU kwbimage (v1)", "kwb" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -292,6 +293,13 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_mips_barebox;
 	if (buf[0] == be32_to_cpu(0x534F4659))
 		return filetype_bpk;
+	if ((buf8[0] == 0x5a || buf8[0] == 0x69 || buf8[0] == 0x78 ||
+	     buf8[0] == 0x8b || buf8[0] == 0x9c) &&
+	    buf8[0x1] == 0 && buf8[0x2] == 0 && buf8[0x3] == 0 &&
+	    buf8[0x8] == 1 && buf8[0x18] == 0 && buf8[0x1b] == 0 &&
+	    buf8[0x1c] == 0 && buf8[0x1d] == 0 &&
+	    (buf8[0x1e] == 0 || buf8[0x1e] == 1))
+		return filetype_kwbimage_v1;
 
 	if (bufsize < 64)
 		return filetype_unknown;
diff --git a/include/filetype.h b/include/filetype.h
index 65bd6efb7bf9..709c1869f705 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -38,6 +38,7 @@ enum filetype {
 	filetype_xz_compressed,
 	filetype_mxs_bootstream,
 	filetype_socfpga_xload,
+	filetype_kwbimage_v1,
 	filetype_max,
 };
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
