Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mZd-0003C5-L1
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 12:52:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Aug 2019 14:51:55 +0200
Message-Id: <20190822125158.10296-6-s.hauer@pengutronix.de>
In-Reply-To: <20190822125158.10296-1-s.hauer@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] ARM: nxp-imx8mq-evk: Remove duplicate call to
 imx8mq_cpu_lowlevel_init()
To: Barebox List <barebox@lists.infradead.org>

imx8mq_cpu_lowlevel_init() is called twice. Remove the second call.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index a74171e5e5..cb1c499cb0 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -105,8 +105,6 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 	const u8 *bl31;
 	size_t bl31_size;
 
-	imx8mq_cpu_lowlevel_init();
-
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
