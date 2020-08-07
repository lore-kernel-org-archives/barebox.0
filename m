Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3woQ-0006jl-ON
 for barebox@lists.infradead.org; Fri, 07 Aug 2020 07:29:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Aug 2020 09:29:05 +0200
Message-Id: <20200807072905.2488-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] spi: add coredevice_spi_driver macro as well
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Some drivers would benefit from earlier probing, e.g. because they
provide regulators. Add a macro to make registration of such drivers
easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/spi/spi.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/spi/spi.h b/include/spi/spi.h
index 66e0500d04c0..c5efca1cc31c 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -515,6 +515,8 @@ static inline int spi_driver_register(struct driver_d *drv)
 	return register_driver(drv);
 }
 
+#define coredevice_spi_driver(drv)	\
+	register_driver_macro(coredevice,spi,drv)
 #define device_spi_driver(drv)	\
 	register_driver_macro(device,spi,drv)
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
