Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x235.google.com ([2607:f8b0:400e:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avQcx-0000sh-HG
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 14:39:43 +0000
Received: by mail-pf0-x235.google.com with SMTP id c189so21120002pfb.3
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 07:39:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Apr 2016 07:39:09 -0700
Message-Id: <1461767949-13337-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] sata-imx: Fix a typo
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

It looks like comma operator was accidentaly used instead of regular
semicolon. Fix this to avoid confusing future readers of the code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/ata/sata-imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index 6a60195..7b8036b 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -112,7 +112,7 @@ static int imx_sata_probe(struct device_d *dev)
 
 	imx_ahci->ahci.dev = dev;
 	dev->priv = &imx_ahci->ahci;
-	dev->info = ahci_info,
+	dev->info = ahci_info;
 
 	ret = ahci_add_host(&imx_ahci->ahci);
 	if (ret)
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
