Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplt4-0001nV-7Q
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:06 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:38 +0100
Message-Id: <1297880025-7184-14-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 13/20] mini2440: Add SDRAM size autodetection
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

If the SDRAM type will change in the future, only the 'config.h' must be
adapted to the new settings. The real size will be read back from this setting.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/mini2440.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 46581cc..2aeb09e 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -48,7 +48,6 @@ static struct device_d sdram_dev = {
 	.id		= -1,
 	.name		= "mem",
 	.map_base	= CS6_BASE,
-	.size		= 64 * 1024 * 1024,
 	.platform_data	= &ram_pdata,
 };
 
@@ -87,6 +86,8 @@ static int mini2440_devices_init(void)
 {
 	uint32_t reg;
 
+	sdram_dev.size = s3c24x0_get_memory_size();
+
 	reg = readl(BWSCON);
 
 	/* CS#4 to access the network controller */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
