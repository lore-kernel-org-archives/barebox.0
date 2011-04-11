Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9P1r-00025h-B9
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 21:52:16 +0000
Received: by wwb39 with SMTP id 39so5424138wwb.18
	for <barebox@lists.infradead.org>; Mon, 11 Apr 2011 14:52:13 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Mon, 11 Apr 2011 23:52:07 +0200
Message-Id: <1302558729-3298-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1302558729-3298-1-git-send-email-franck.jullien@gmail.com>
References: <1302558729-3298-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/3] Fix coding style in driver/net/Makefile
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
---
 drivers/net/Makefile |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 96d3d32..ab23d22 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -1,7 +1,7 @@
-obj-$(CONFIG_DRIVER_NET_CS8900)	        += cs8900.o
+obj-$(CONFIG_DRIVER_NET_CS8900)		+= cs8900.o
 obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
 obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
-obj-$(CONFIG_DRIVER_NET_DM9000)	        += dm9000.o
+obj-$(CONFIG_DRIVER_NET_DM9000)		+= dm9000.o
 obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
 obj-$(CONFIG_DRIVER_NET_AT91_ETHER)	+= at91_ether.o
 obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
