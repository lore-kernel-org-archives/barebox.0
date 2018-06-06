Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQSbu-0004Fy-Mc
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 07:12:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jun 2018 09:11:26 +0200
Message-Id: <20180606071129.28884-4-s.hauer@pengutronix.de>
In-Reply-To: <20180606071129.28884-1-s.hauer@pengutronix.de>
References: <20180606071129.28884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ppc: bootm: remove unnecessary parameter
To: Barebox List <barebox@lists.infradead.org>

bootm_relocate_fdt takes the os address as parameter, but this can be
extracted from struct image_data, so drop the parameter.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/lib/ppclinux.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index ed2f769c25..67649f3b46 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -14,8 +14,9 @@
 #include <restart.h>
 #include <fs.h>
 
-static int bootm_relocate_fdt(void *os, struct image_data *data)
+static int bootm_relocate_fdt(struct image_data *data)
 {
+	void *os = (void *)data->os_address;
 	void *newfdt;
 
 	if (os < LINUX_TLB1_MAX_ADDR) {
@@ -73,9 +74,7 @@ static int do_bootm_linux(struct image_data *data)
 		void *addr = data->oftree;
 
 		if ((addr + data->oftree->totalsize) > LINUX_TLB1_MAX_ADDR) {
-			addr = (void *)data->os_address;
-
-			if (bootm_relocate_fdt(addr, data))
+			if (bootm_relocate_fdt(data))
 				goto error;
 		}
 	}
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
