Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosX-0008KG-Ud
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 68/78] filetype: Detect ARM aarch64 Linux images
Date: Fri, 16 Mar 2018 13:53:44 +0100
Message-Id: <20180316125354.23462-69-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

ARM aarch64 Linux image have a special type. Allow to detect them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 3 +++
 include/filetype.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 71691fd813..444ec14cc4 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -67,6 +67,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_socfpga_xload] = { "SoCFPGA prebootloader image", "socfpga-xload" },
 	[filetype_kwbimage_v1] = { "MVEBU kwbimage (v1)", "kwb" },
 	[filetype_android_sparse] = { "Android sparse image", "sparse" },
+	[filetype_arm64_linux_image] = { "ARM aarch64 Linux image", "aarch64-linux" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -296,6 +297,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_mips_barebox;
 	if (buf[0] == be32_to_cpu(0x534F4659))
 		return filetype_bpk;
+	if (le32_to_cpu(buf[14]) == 0x644d5241)
+		return filetype_arm64_linux_image;
 	if ((buf8[0] == 0x5a || buf8[0] == 0x69 || buf8[0] == 0x78 ||
 	     buf8[0] == 0x8b || buf8[0] == 0x9c) &&
 	    buf8[0x1] == 0 && buf8[0x2] == 0 && buf8[0x3] == 0 &&
diff --git a/include/filetype.h b/include/filetype.h
index ec5aea2635..9986938ddb 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -40,6 +40,7 @@ enum filetype {
 	filetype_socfpga_xload,
 	filetype_kwbimage_v1,
 	filetype_android_sparse,
+	filetype_arm64_linux_image,
 	filetype_max,
 };
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
