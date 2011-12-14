Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaoB2-0003mq-Nm
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 12:43:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Dec 2011 13:43:03 +0100
Message-Id: <1323866587-2385-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323866587-2385-1-git-send-email-s.hauer@pengutronix.de>
References: <1323866587-2385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ppc pcm030: Fix device resource sizes
To: barebox@lists.infradead.org

The device resources are much smaller, the resource mechanism
revealed this because of overlapping devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/boards/pcm030/pcm030.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 61fb116..4abf6cb 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -59,7 +59,7 @@ static int devices_init (void)
 	sdramsize = mpc5200_get_sdram_size(0) + mpc5200_get_sdram_size(1);
 	barebox_add_memory_bank("ram0", 0x0, sdramsize);
 
-	add_generic_device("fec_mpc5xxx", -1, NULL, MPC5XXX_FEC, 0,
+	add_generic_device("fec_mpc5xxx", -1, NULL, MPC5XXX_FEC, 0x200,
 			   IORESOURCE_MEM, &fec_info);
 
 	ret = stat("/dev/nor0", &s);
@@ -76,9 +76,9 @@ device_initcall(devices_init);
 
 static int console_init(void)
 {
-	add_generic_device("mpc5xxx_serial", -1, NULL, MPC5XXX_PSC3, 4096,
+	add_generic_device("mpc5xxx_serial", -1, NULL, MPC5XXX_PSC3, 0x200,
 			   IORESOURCE_MEM, NULL);
-	add_generic_device("mpc5xxx_serial", -1, NULL, MPC5XXX_PSC6, 4096,
+	add_generic_device("mpc5xxx_serial", -1, NULL, MPC5XXX_PSC6, 0x200,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
