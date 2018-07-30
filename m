Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fk68f-0002bY-1K
 for barebox@lists.infradead.org; Mon, 30 Jul 2018 11:14:58 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Mon, 30 Jul 2018 13:14:35 +0200
Message-Id: <20180730111437.23453-2-r.hieber@pengutronix.de>
In-Reply-To: <20180730111437.23453-1-r.hieber@pengutronix.de>
References: <20180730111437.23453-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: i.MX: OCOTP: fix missing include for uint32_t etc.
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/ocotp.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/include/mach/ocotp.h b/arch/arm/mach-imx/include/mach/ocotp.h
index 76a6da53de..e758238cb9 100644
--- a/arch/arm/mach-imx/include/mach/ocotp.h
+++ b/arch/arm/mach-imx/include/mach/ocotp.h
@@ -2,6 +2,7 @@
 #define __MACH_IMX_OCOTP_H
 
 #include <linux/bitfield.h>
+#include <linux/types.h>
 
 #define OCOTP_SHADOW_OFFSET		0x400
 #define OCOTP_SHADOW_SPACING		0x10
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
