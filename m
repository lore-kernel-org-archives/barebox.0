Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftEds-0001Zu-3x
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 16:08:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1ftEde-0000Cg-Go
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 18:08:42 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 24 Aug 2018 18:08:42 +0200
Message-Id: <20180824160842.12844-1-l.stach@pengutronix.de>
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
Subject: [PATCH] bootsource: handle SPI-NOR in the same way as SPI-EEPROM
To: barebox@lists.infradead.org

The NOR flash device itself does not have an alias in the kernel DT, so
we want to have the bootsource pointing at the SPI controller the flash
chip is attached to.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/bootsource.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index e68338faa5b7..4ef8d8ad9585 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -82,6 +82,7 @@ char *bootsource_get_alias_name(void)
 		stem = bootsource_str[BOOTSOURCE_I2C];
 		break;
 	case BOOTSOURCE_SPI_EEPROM:
+	case BOOTSOURCE_SPI_NOR:
 		stem = bootsource_str[BOOTSOURCE_SPI];
 		break;
 	case BOOTSOURCE_SERIAL:	/* FALLTHROUGH */
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
