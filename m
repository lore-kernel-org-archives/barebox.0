Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96q-0008Ke-Mo
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:30 +0100
Message-Id: <20171124081237.6830-15-s.hauer@pengutronix.de>
In-Reply-To: <20171124081237.6830-1-s.hauer@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/21] net: remove "current" network device
To: Barebox List <barebox@lists.infradead.org>

Now that we can do routing we no longer need a "current"
network device. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Makefile |  1 -
 commands/net.c    | 66 -------------------------------------------------------
 include/net.h     |  2 --
 net/eth.c         | 17 --------------
 net/ifup.c        |  2 --
 5 files changed, 88 deletions(-)
 delete mode 100644 commands/net.c

diff --git a/commands/Makefile b/commands/Makefile
index 37486dceb1..582175f631 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -22,7 +22,6 @@ obj-$(CONFIG_CMD_MSLEEP)	+= msleep.o
 obj-$(CONFIG_CMD_RESET)		+= reset.o
 obj-$(CONFIG_CMD_POWEROFF)	+= poweroff.o
 obj-$(CONFIG_CMD_GO)		+= go.o
-obj-$(CONFIG_NET)		+= net.o
 obj-$(CONFIG_CMD_PARTITION)	+= partition.o
 obj-$(CONFIG_CMD_LS)		+= ls.o
 obj-$(CONFIG_CMD_CD)		+= cd.o
diff --git a/commands/net.c b/commands/net.c
deleted file mode 100644
index 219c7efcda..0000000000
--- a/commands/net.c
+++ /dev/null
@@ -1,66 +0,0 @@
-/*
- * (C) Copyright 2000
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
- */
-
-/**
- * @file
- * @brief tftp, rarpboot, dhcp, nfs, cdp - Boot support
- */
-
-#include <common.h>
-#include <command.h>
-#include <complete.h>
-#include <environment.h>
-#include <driver.h>
-#include <net.h>
-#include <fs.h>
-#include <errno.h>
-#include <libbb.h>
-
-static int do_ethact(int argc, char *argv[])
-{
-	struct eth_device *edev;
-
-	if (argc == 1) {
-		edev = eth_get_current();
-		if (edev)
-			printf("%s%d\n", edev->dev.name, edev->dev.id);
-		return 0;
-	}
-
-	if (argc != 2)
-		return COMMAND_ERROR_USAGE;
-
-	edev = eth_get_byname(argv[1]);
-	if (edev)
-		eth_set_current(edev);
-	else {
-		printf("no such net device: %s\n", argv[1]);
-		return 1;
-	}
-
-	return 0;
-}
-
-BAREBOX_CMD_START(ethact)
-	.cmd		= do_ethact,
-	BAREBOX_CMD_DESC("get or set current ethernet device")
-	BAREBOX_CMD_OPTS("[ETHX]")
-	BAREBOX_CMD_GROUP(CMD_GRP_NET)
-	BAREBOX_CMD_COMPLETE(eth_complete)
-BAREBOX_CMD_END
diff --git a/include/net.h b/include/net.h
index 416fcde761..c72197b2f0 100644
--- a/include/net.h
+++ b/include/net.h
@@ -409,8 +409,6 @@ static inline int is_valid_ether_addr(const u8 *addr)
 
 typedef void rx_handler_f(void *ctx, char *packet, unsigned int len);
 
-void eth_set_current(struct eth_device *eth);
-struct eth_device *eth_get_current(void);
 struct eth_device *eth_get_byname(const char *name);
 
 /**
diff --git a/net/eth.c b/net/eth.c
index 6dae6b9feb..a8f21b2277 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -28,7 +28,6 @@
 #include <errno.h>
 #include <malloc.h>
 
-static struct eth_device *eth_current;
 static uint64_t last_link_check;
 
 LIST_HEAD(netdev_list);
@@ -149,16 +148,6 @@ void of_eth_register_ethaddr(struct device_node *node, const char *ethaddr)
 	list_add_tail(&addr->list, &ethaddr_list);
 }
 
-void eth_set_current(struct eth_device *eth)
-{
-	eth_current = eth;
-}
-
-struct eth_device * eth_get_current(void)
-{
-	return eth_current;
-}
-
 struct eth_device *eth_get_byname(const char *ethname)
 {
 	struct eth_device *edev;
@@ -412,17 +401,11 @@ int eth_register(struct eth_device *edev)
 			edev->parent->device_node)
 		edev->nodepath = xstrdup(edev->parent->device_node->full_name);
 
-	if (!eth_current)
-		eth_current = edev;
-
 	return 0;
 }
 
 void eth_unregister(struct eth_device *edev)
 {
-	if (edev == eth_current)
-		eth_current = NULL;
-
 	if (edev->active)
 		edev->halt(edev);
 
diff --git a/net/ifup.c b/net/ifup.c
index 6c298d8501..bec254b64d 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -58,8 +58,6 @@ int ifup(const char *name, unsigned flags)
 	if (edev && edev->ipaddr && !(flags & IFUP_FLAG_FORCE))
 		return 0;
 
-	eth_set_current(edev);
-
 	env_push_context();
 
 	setenv("ip", "");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
