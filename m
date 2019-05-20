Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSocA-0006aV-G0
 for barebox@lists.infradead.org; Mon, 20 May 2019 20:10:32 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Mon, 20 May 2019 20:11:31 +0000
Message-Id: <20190520201131.25491-1-user@vserver64>
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
Subject: [PATCH] ARM: boards: kindle mx50: adapt MCI name to DTS
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@kbdbabel.org>, Alexander Kurz <akurz@blala.de>

From: Alexander Kurz <akurz@kbdbabel.org>

The MCI instances got aliases in the DTS from linux upstream which changed
the eMMC devicename e.g. from disk0 to mmc2. Adapt to this.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 Documentation/boards/imx/amazon-kindle-4-5.rst                     | 4 ++--
 arch/arm/boards/kindle-mx50/board.c                                | 2 +-
 arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/imx/amazon-kindle-4-5.rst b/Documentation/boards/imx/amazon-kindle-4-5.rst
index 26f072e28..f71ffe176 100644
--- a/Documentation/boards/imx/amazon-kindle-4-5.rst
+++ b/Documentation/boards/imx/amazon-kindle-4-5.rst
@@ -68,5 +68,5 @@ e.g. for the D01100 just write the imx-header and the application section:
 .. code-block:: console
 
         $ loady -t usbserial
-        $ memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.imx_header 1024 0 2048
-        $ memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.self 4096 0 253952
+        $ memcpy -b -s barebox-kindle-d01100.img -d /dev/mmc2.boot0.imx_header 1024 0 2048
+        $ memcpy -b -s barebox-kindle-d01100.img -d /dev/mmc2.boot0.self 4096 0 253952
diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
index fb1d4c937..bfcb9b83b 100644
--- a/arch/arm/boards/kindle-mx50/board.c
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -98,7 +98,7 @@ static void kindle_rev_init(void)
 	int ret;
 	size_t size;
 	void *buf;
-	const char userdata[] = "/dev/disk0.boot0.userdata";
+	const char userdata[] = "/dev/mmc2.boot0.userdata";
 	ret = read_file_2(userdata, &size, &buf, 128);
 	if (ret && ret != -EFBIG) {
 		pr_err("Could not read board info from %s\n", userdata);
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
index 4f2cabd54..b8d93be59 100644
--- a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
@@ -12,4 +12,4 @@ armlinux_system_serial="$global.board.ocotp_serial"
 
 global linux.bootargs.dyn.root="root=/dev/mmcblk0p1 rootwait ro"
 
-bootm -c /dev/disk0.kernel
+bootm -c /dev/mmc2.kernel
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
