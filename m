Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xu1mu-0002MI-Me
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 16:19:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2014 17:15:31 +0100
Message-Id: <1417104932-13960-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417104932-13960-1-git-send-email-s.hauer@pengutronix.de>
References: <1417104932-13960-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] ARM: PBL: Add missing pieces for xz compressed PBL image
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/pbl/.gitignore     | 2 ++
 arch/arm/pbl/Makefile       | 1 +
 arch/arm/pbl/piggy.xzkern.S | 6 ++++++
 3 files changed, 9 insertions(+)
 create mode 100644 arch/arm/pbl/piggy.xzkern.S

diff --git a/arch/arm/pbl/.gitignore b/arch/arm/pbl/.gitignore
index 1b7f618..be604a8 100644
--- a/arch/arm/pbl/.gitignore
+++ b/arch/arm/pbl/.gitignore
@@ -1,6 +1,8 @@
 piggy.gzip
 piggy.lzo
 piggy.lz4
+piggy.xzkern
+piggy.shipped
 zbarebox
 zbarebox.bin
 zbarebox.lds
diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 1741090..1b90b37 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -2,6 +2,7 @@
 suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
+suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN)	= xzkern
 suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	= shipped
 
 OBJCOPYFLAGS_zbarebox.bin = -O binary
diff --git a/arch/arm/pbl/piggy.xzkern.S b/arch/arm/pbl/piggy.xzkern.S
new file mode 100644
index 0000000..a7c0259
--- /dev/null
+++ b/arch/arm/pbl/piggy.xzkern.S
@@ -0,0 +1,6 @@
+	.section .piggydata,#alloc
+	.globl	input_data
+input_data:
+	.incbin	"arch/arm/pbl/piggy.xzkern"
+	.globl	input_data_end
+input_data_end:
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
