Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YD93P-0005Bp-3e
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 09:55:30 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Mon, 19 Jan 2015 17:54:54 +0800
Message-ID: <1421661294-23345-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: atmel: sama5d3xek: let gmac auto detect phy id
To: s.hauer@pengutronix.de, plagnioj@jcrosoft.com
Cc: barebox@lists.infradead.org

On the SAMA5D33 and SAMA5D35 the GMAC PHY ID is 1 while not 7.
So, let the GMAC auto detect phy id, or else hard code to 7,
it can not work on these two boards.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/boards/sama5d3xek/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 49d2b37..0b83147 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -123,7 +123,7 @@ static void ek_add_device_nand(void) {}
 #if defined(CONFIG_DRIVER_NET_MACB)
 static struct macb_platform_data gmac_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RGMII,
-	.phy_addr = 7,
+	.phy_addr = -1,
 };
 
 static struct macb_platform_data macb_pdata = {
-- 
2.3.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
