Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxxr-0001cS-Of
 for barebox@lists.infradead.org; Mon, 27 Apr 2020 07:14:05 +0000
Received: from geraet.fritz.box (muedsl-82-207-202-020.citykom.de
 [82.207.202.20]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 6C4821C0005
 for <barebox@lists.infradead.org>; Mon, 27 Apr 2020 07:13:59 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 27 Apr 2020 09:13:51 +0200
Message-Id: <20200427071351.467859-3-ahmad@a3f.at>
In-Reply-To: <20200427071351.467859-1-ahmad@a3f.at>
References: <20200427071351.467859-1-ahmad@a3f.at>
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
Subject: [PATCH 3/3] ARM: i.MX6: boot: handle i.MX6UL differences
To: barebox@lists.infradead.org

The i.MX6UL differs from the i.MX6Q in the interpretation of the first
two values for BOOT_CFG(7, 4):

+--------------+----------+----------+
|BOOT_CFG1(7,4)|   0x01   |   0x02   |
|==============+==========+==========|
| MX6Q         | reserved |   SATA   |
|--------------+----------+----------|
| MX6UL        |   QSPI   | reserved |
+--------------+----------+----------+

The reserved (forced serial) values are handled in the previous commit.
Add QSPI boot source detection now.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-imx/boot.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index f8d4f8cfa27f..dcca3a5c4a97 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -427,6 +427,9 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 	}
 
 	switch (bootsrc) {
+	case 1: /* only reachable for i.MX6UL(L) */
+		*src = BOOTSOURCE_SPI; /* Really: qspi */
+		return;
 	case 2: /* unreachable for i.MX6UL(L) */
 		*src = BOOTSOURCE_HD;
 		break;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
