Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fallback3.mail.ru ([94.100.176.58])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVei6-0005nm-Kx
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 09:12:55 +0000
Received: from smtp33.i.mail.ru (smtp33.i.mail.ru [94.100.177.93])
 by fallback3.mail.ru (mPOP.Fallback_MX) with ESMTP id 181BFE03760A
 for <barebox@lists.infradead.org>; Fri, 26 Apr 2013 13:12:51 +0400 (MSK)
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 26 Apr 2013 13:12:33 +0400
Message-Id: <1366967553-23985-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: ccxmx51: Fix OTG Host USB mode
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index a14c9bc..df565d9 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -196,7 +196,8 @@ static const struct spi_board_info ccxmx51_spi_board_info[] = {
 };
 
 static struct imxusb_platformdata ccxmx51_otg_pdata = {
-	.flags	= MXC_EHCI_MODE_UTMI_16_BIT | MXC_EHCI_POWER_PINS_ENABLED,
+	.flags	= MXC_EHCI_MODE_UTMI_16_BIT | MXC_EHCI_INTERNAL_PHY |
+		  MXC_EHCI_POWER_PINS_ENABLED,
 	.mode	= IMX_USB_MODE_HOST,
 };
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
