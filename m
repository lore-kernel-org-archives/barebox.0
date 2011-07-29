Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmpl4-0005ul-H6
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 16:17:59 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id BB119FFA828
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 18:18:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 17:59:53 +0200
Message-Id: <1311955207-22372-16-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 09/23] cfi_flash: convert missing map_base
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index c995962..461b0e6 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -988,7 +988,7 @@ static int cfi_probe (struct device_d *dev)
 
 	if (info->flash_id == FLASH_UNKNOWN) {
 		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
-			dev->map_base, info->size, info->size << 20);
+			dev->resource[0].start, info->size, info->size << 20);
 		return -ENODEV;
 	}
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
