Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxaO-0005Nu-OR
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 15:19:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihxaL-0005so-Jd
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 16:19:29 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 19 Dec 2019 16:19:27 +0100
Message-Id: <20191219151929.19521-2-l.stach@pengutronix.de>
In-Reply-To: <20191219151929.19521-1-l.stach@pengutronix.de>
References: <20191219151929.19521-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: nxp-imx8mq-evk: switch the PBL memcpy parameters to
 common variables
To: barebox@lists.infradead.org

Use the variables defined in sections.h, instead of hand rolling the
same computation.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index d2042bffcacc..c2f3071e3a9a 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -90,7 +90,8 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 		 * On completion the TF-A will jump to MX8MQ_ATF_BL33_BASE_ADDR in
 		 * EL2. Copy ourselves there.
 		 */
-		memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR, _text, __bss_start - _text);
+		memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR,
+		       __image_start, barebox_pbl_size);
 		imx8mq_atf_load_bl31(bl31, bl31_size);
 		/* not reached */
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
