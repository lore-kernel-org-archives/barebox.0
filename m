Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034u-9C
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:55:04 +0200
Message-Id: <1275645309-9756-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/13] net: consider rarp support as outdated. Remove it
To: barebox@lists.infradead.org

It is disabled in all defconfigs and probably broken for longer.
Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/Kconfig  |    4 --
 net/Makefile |    1 -
 net/rarp.c   |  101 ----------------------------------------------------------
 3 files changed, 0 insertions(+), 106 deletions(-)
 delete mode 100644 net/rarp.c

diff --git a/net/Kconfig b/net/Kconfig
index cca2b00..a110bec 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -7,10 +7,6 @@ config NET_DHCP
 	bool
 	prompt "dhcp support"
 
-config NET_RARP
-	bool
-	prompt "rarp protocol support"
-
 config NET_NFS
 	bool
 	prompt "nfs support"
diff --git a/net/Makefile b/net/Makefile
index 0ffc895..bba6f0e 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -2,6 +2,5 @@ obj-$(CONFIG_NET_DHCP)	+= dhcp.o
 obj-$(CONFIG_NET)	+= eth.o
 obj-$(CONFIG_NET)	+= net.o
 obj-$(CONFIG_NET_NFS)	+= nfs.o
-obj-$(CONFIG_NET_RARP)	+= rarp.o
 obj-$(CONFIG_NET_TFTP)	+= tftp.o
 obj-$(CONFIG_NET_PING)	+= ping.o
diff --git a/net/rarp.c b/net/rarp.c
deleted file mode 100644
index 24818f8..0000000
--- a/net/rarp.c
+++ /dev/null
@@ -1,101 +0,0 @@
-/*
- * (C) Copyright 2000-2002
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <common.h>
-#include <command.h>
-#include <clock.h>
-#include <net.h>
-#include "nfs.h"
-#include "rarp.h"
-#include "tftp.h"
-
-#define TIMEOUT		5		/* Seconds before trying BOOTP again */
-#ifndef	CONFIG_NET_RETRY_COUNT
-# define TIMEOUT_COUNT	5		/* # of timeouts before giving up  */
-#else
-# define TIMEOUT_COUNT  (CONFIG_NET_RETRY_COUNT)
-#endif
-
-
-int		RarpTry;
-
-/*
- *	Handle a RARP received packet.
- */
-static void
-RarpHandler(uchar * dummi0, unsigned dummi1, unsigned dummi2, unsigned dummi3)
-{
-#ifdef	DEBUG
-	puts ("Got good RARP\n");
-#endif
-	NetState = NETLOOP_SUCCESS;
-}
-
-
-/*
- *	Timeout on BOOTP request.
- */
-static void
-RarpTimeout(void)
-{
-	NetSetTimeout (TIMEOUT * SECOND, RarpTimeout);
-	RarpRequest ();
-}
-
-
-void
-RarpRequest (void)
-{
-	int i;
-	uchar *pkt;
-	ARP_t *	rarp;
-
-	NetOurIP = 0;
-	RarpTry = 0;
-
-	printf("RARP broadcast %d\n", ++RarpTry);
-	pkt = NetTxPacket;
-
-	pkt += NetSetEther(pkt, NetBcastAddr, PROT_RARP);
-
-	rarp = (ARP_t *)pkt;
-
-	rarp->ar_hrd = htons (ARP_ETHER);
-	rarp->ar_pro = htons (PROT_IP);
-	rarp->ar_hln = 6;
-	rarp->ar_pln = 4;
-	rarp->ar_op  = htons (RARPOP_REQUEST);
-	memcpy (&rarp->ar_data[0],  NetOurEther, 6);	/* source ET addr */
-	memcpy (&rarp->ar_data[6],  &NetOurIP,   4);	/* source IP addr */
-	memcpy (&rarp->ar_data[10], NetOurEther, 6);	/* dest ET addr = source ET addr ??*/
-	/* dest. IP addr set to broadcast */
-	for (i = 0; i <= 3; i++) {
-		rarp->ar_data[16 + i] = 0xff;
-	}
-
-	NetSendPacket(NetTxPacket, (pkt - NetTxPacket) + ARP_HDR_SIZE);
-
-	NetSetTimeout(TIMEOUT * SECOND, RarpTimeout);
-	NetSetHandler(RarpHandler);
-}
-
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
