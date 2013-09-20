Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMtRi-0008Es-2N
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 05:40:03 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 2B1FADC85A9
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 07:39:41 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 20 Sep 2013 07:40:50 +0200
Message-Id: <1379655650-23221-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379655650-23221-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130920053940.GC1137@ns203013.ovh.net>
 <1379655650-23221-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] animeo_ip: retrieve the mac from the macb and set private
 mac to asix
To: barebox@lists.infradead.org

if the macb's mac is not a valid public mac set a private with "smf" as OUI
as the mac address might be set by the previous bootloader

set a private with "smf" as OUI for asix

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/init.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index c98493f..b6cd996 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -27,6 +27,7 @@
 #include <mach/io.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
+#include <local_mac_address.h>
 
 static bool animeo_ip_is_buco;
 static bool animeo_ip_is_io;
@@ -255,8 +256,40 @@ static void animeo_ip_phy_reset(void)
 	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY | (rstc) | AT91_RSTC_URSTEN);
 }
 
+#define MACB_SA1B	0x0098
+#define MACB_SA1T	0x009c
+
+static int animeo_ip_get_macb_ethaddr(u8 *addr)
+{
+	u32 top, bottom;
+	void __iomem *base = IOMEM(AT91SAM9260_BASE_EMAC);
+
+	bottom = readl(base + MACB_SA1B);
+	top = readl(base + MACB_SA1T);
+	addr[0] = bottom & 0xff;
+	addr[1] = (bottom >> 8) & 0xff;
+	addr[2] = (bottom >> 16) & 0xff;
+	addr[3] = (bottom >> 24) & 0xff;
+	addr[4] = top & 0xff;
+	addr[5] = (top >> 8) & 0xff;
+
+	/* valid and not private */
+	if (is_valid_ether_addr(addr) && !(addr[0] & 0x02))
+		return 0;
+
+	return -EINVAL;
+}
+
 static void animeo_ip_add_device_eth(void)
 {
+	if (!animeo_ip_get_macb_ethaddr(enetaddr))
+		eth_register_ethaddr(0, enetaddr);
+	else
+		local_mac_address_register(0, "smf");
+
+	/* for usb asix */
+	local_mac_address_register(1, "smf");
+
 	animeo_ip_phy_reset();
 	at91_add_device_eth(0, &macb_pdata);
 }
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
