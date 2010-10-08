Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4FrD-0005eN-PL
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 16:31:44 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  8 Oct 2010 18:30:56 +0200
Message-Id: <1286555458-20125-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286555458-20125-1-git-send-email-jbe@pengutronix.de>
References: <1286555458-20125-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/10] i.MX27: Add mmc clock support in order to add an i.MX
	MCI driver
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/clock.h |    1 +
 arch/arm/mach-imx/speed-imx27.c        |    5 +++++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/clock.h b/arch/arm/mach-imx/include/mach/clock.h
index 76ab4a5..bbe7a60 100644
--- a/arch/arm/mach-imx/include/mach/clock.h
+++ b/arch/arm/mach-imx/include/mach/clock.h
@@ -28,6 +28,7 @@ ulong imx_get_gptclk(void);
 ulong imx_get_uartclk(void);
 ulong imx_get_lcdclk(void);
 ulong imx_get_i2cclk(void);
+ulong imx_get_mmcclk(void);
 
 int imx_clko_set_div(int div);
 void imx_clko_set_src(int src);
diff --git a/arch/arm/mach-imx/speed-imx27.c b/arch/arm/mach-imx/speed-imx27.c
index cdcd419..0a92d29 100644
--- a/arch/arm/mach-imx/speed-imx27.c
+++ b/arch/arm/mach-imx/speed-imx27.c
@@ -159,6 +159,11 @@ ulong imx_get_i2cclk(void)
 	return imx_get_ipgclk();
 }
 
+ulong imx_get_mmcclk(void)
+{
+	return imx_get_perclk2();
+}
+
 void imx_dump_clocks(void)
 {
 	uint32_t	cid = CID;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
