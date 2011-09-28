Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8qGg-0005jU-Js
	for barebox@lists.infradead.org; Wed, 28 Sep 2011 09:17:31 +0000
Received: by bkat2 with SMTP id t2so9378109bka.36
	for <barebox@lists.infradead.org>; Wed, 28 Sep 2011 02:17:27 -0700 (PDT)
From: Paul Fertser <fercerpav@gmail.com>
Date: Wed, 28 Sep 2011 13:16:57 +0400
Message-Id: <1317201418-3290-1-git-send-email-fercerpav@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] mach-imx: iim: clarify documentation
To: barebox@lists.infradead.org
Cc: Paul Fertser <fercerpav@gmail.com>

This adds additional Kconfig help to clarify the way to use barebox
for eFuses handling.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 arch/arm/mach-imx/Kconfig |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 8dc6a24..8d5bd74 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -497,6 +497,12 @@ config IMX_IIM
 	  Device driver for the IC Identification Module (IIM) fusebox. Use the 
 	  regular md/mw commands to program and read the fusebox.
 
+	  Fuses are grouped in "rows", 8 bits per row. When using md/mw commands,
+	  employ the -b switch and consider the region to be specifying the "Fuse
+	  Row Index" rather than "Fuse Row Offset" (which is FRI * 4). You should
+	  consult the documentation for your chip for more elaborate description,
+	  including the eFuse map, e.g. see AN3682 for i.MX25.
+
 config IMX_IIM_FUSE_BLOW
 	bool "IIM fuses blow support"
 	depends on IMX_IIM
@@ -507,6 +513,10 @@ config IMX_IIM_FUSE_BLOW
 	  Warning: blown fuses can not be unblown. Using this option may damage
 	  your CPU, or make it unbootalbe. Use with care.
 
+	  Before being actually able to blow the fuses, you need to explicitely
+	  enable it:
+	  	 imx_iim0.permanent_write_enable=1
+
 endmenu
 
 endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
