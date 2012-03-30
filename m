Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTzK-00052Z-Ab
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:03:07 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2CBB5FF8BA5
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:03:24 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:47:51 +0200
Message-Id: <1333082876-22403-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330044138.GY444@game.jcrosoft.org>
References: <20120330044138.GY444@game.jcrosoft.org>
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
Subject: [PATCH 1/6] cfi_flash: fix missing resource update when probing the
 cfi size
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

introduce in commit 8262d20dae583a
"cfi: convert to struct resource"

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 654e647..267c95b 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -989,6 +989,11 @@ static int cfi_probe (struct device_d *dev)
 	info->base = dev_request_mem_region(dev, 0);
 	info->size = flash_get_size(info);
 
+	if (dev->resource[0].size == 0) {
+		printf("cfi_probe: size : 0x%08lx\n", info->size);
+		dev->resource[0].size = info->size;
+	}
+
 	if (info->flash_id == FLASH_UNKNOWN) {
 		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
 			dev->resource[0].start, info->size, info->size << 20);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
