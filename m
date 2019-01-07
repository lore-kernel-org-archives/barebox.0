Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPW8-00015x-9L
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:40:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Jan 2019 08:40:07 +0100
Message-Id: <20190107074008.3797-9-s.hauer@pengutronix.de>
In-Reply-To: <20190107074008.3797-1-s.hauer@pengutronix.de>
References: <20190107074008.3797-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] defaultenv: defaultenv uses ip_route_get
To: Barebox List <barebox@lists.infradead.org>

The default environment uses the ip_route_get command, so select it
when networking is enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 2ad92158c1..1c2669084a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -866,6 +866,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select FLEXIBLE_BOOTARGS
 	select CMD_BOOT
 	select NET_CMD_IFUP if NET
+	select CMD_IP_ROUTE_GET if NET
 
 config DEFAULT_ENVIRONMENT_GENERIC
 	bool "Generic environment template (old version)"
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
