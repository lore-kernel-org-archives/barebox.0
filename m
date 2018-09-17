Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1qU4-0002Lw-JX
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 10:10:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Sep 2018 12:10:06 +0200
Message-Id: <20180917101006.13490-1-s.hauer@pengutronix.de>
In-Reply-To: <df6edf8c-d15a-5e7b-58ad-6fc32ad56590@posteo.de>
References: <df6edf8c-d15a-5e7b-58ad-6fc32ad56590@posteo.de>
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
Subject: [PATCH] ARM: omap: xload: Fix network boot filename
To: Barebox List <barebox@lists.infradead.org>
Cc: Dennis Menschel <menschel-d@posteo.de>

The dhcp code no longer exports the "bootfile" environment variable.
It now uses global.dhcp.bootfile. Since global variable support is
not necessarily part of the MLO we instead use struct dhcp_result *
to get the bootfile information.

Fixes: 528298b702 ("net: dhcp: rework")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/xload.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index d8b1c9ee1c..bb58825dcf 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -236,6 +236,7 @@ static void *am33xx_net_boot(void)
 	char *file;
 	char ip4_str[sizeof("255.255.255.255")];
 	struct eth_device *edev;
+	struct dhcp_result *dhcp_res;
 
 	am33xx_register_ethaddr(0, 0);
 
@@ -248,12 +249,14 @@ static void *am33xx_net_boot(void)
 		return NULL;
 	}
 
-	err = dhcp(edev, &dhcp_param);
+	err = dhcp_request(edev, &dhcp_param, &dhcp_res);
 	if (err) {
 		printf("dhcp failed\n");
 		return NULL;
 	}
 
+	dhcp_set_result(edev, dhcp_res);
+
 	/*
 	 * Older tftp server don't send the file size.
 	 * Then tftpfs needs temporary place to store the file.
@@ -276,7 +279,7 @@ static void *am33xx_net_boot(void)
 		return NULL;
 	}
 
-	bootfile = getenv("bootfile");
+	bootfile = dhcp_res->bootfile;
 	if (!bootfile) {
 		printf("bootfile not found.\n");
 		return NULL;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
