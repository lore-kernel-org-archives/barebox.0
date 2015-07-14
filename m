Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEyoN-0005I4-78
 for barebox@lists.infradead.org; Tue, 14 Jul 2015 11:55:51 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9FEA0A00450
 for <barebox@lists.infradead.org>; Tue, 14 Jul 2015 13:56:56 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Tue, 14 Jul 2015 13:55:14 +0200
Message-Id: <1436874914-7750-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] ARM: i.MX6: clarify usage of /dev/imx-ocotp
To: barebox@lists.infradead.org

Explain the relationship between the OCOTP addresses from the i.MX6
Reference Manual and the file offset in '/dev/imx-ocotp'.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/mach-imx/Kconfig | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f8f6004..147c411 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -676,8 +676,10 @@ config IMX_OCOTP_WRITE
 	prompt "Enable write support of i.MX6 CPUs OTP fuses"
 	depends on IMX_OCOTP
 	help
-	  This adds write support to IMX6 On-Chip OTP registers.
-	  Example of set MAC to 12:34:56:78:9A:BC (2 words with offset 0x22 * 4):
+	  This adds write support to IMX6 On-Chip OTP registers. Example of set
+	  MAC to 12:34:56:78:9A:BC (2 words with address 0x22 (OCOTP_MAC0) and
+	  address 0x23 (OCOTP_MAC1)). To calculate the file offset multiply
+	  the value of the address by 4.
 		mw -l -d /dev/imx-ocotp 0x8C 0x00001234
 		mw -l -d /dev/imx-ocotp 0x88 0x56789ABC
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
