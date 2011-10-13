Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RERoS-0002Gn-Ah
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 20:23:33 +0000
Received: by mail-ey0-f177.google.com with SMTP id 3so572175eye.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 13:23:32 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 13 Oct 2011 22:23:11 +0200
Message-Id: <1318537394-8555-5-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
References: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 5/8] mci:s3c: Fix sparse warning for readl/writel arguments.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

warning:
drivers/mci/s3c.c:789:2: warning: incorrect type in argument 1 (different base types)
drivers/mci/s3c.c:789:2:    expected void const volatile [noderef] <asn:2>*<noident>
drivers/mci/s3c.c:789:2:    got int
drivers/mci/s3c.c:789:2: warning: incorrect type in argument 1 (different base types)
drivers/mci/s3c.c:789:2:    expected void const volatile [noderef] <asn:2>*<noident>
drivers/mci/s3c.c:789:2:    got int

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/mci/s3c.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index b03d7d7..69573fb 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -786,8 +786,8 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 	struct s3c_mci_platform_data *pd = hw_dev->platform_data;
 
 	/* TODO replace by the global func: enable the SDI unit clock */
-	writel(readl(S3C24X0_CLOCK_POWER_BASE + 0x0c) | 0x200,
-		S3C24X0_CLOCK_POWER_BASE + 0x0c);
+	writel(readl(IOMEM(S3C24X0_CLOCK_POWER_BASE + 0x0c)) | 0x200,
+		IOMEM(S3C24X0_CLOCK_POWER_BASE + 0x0c));
 
 	if (pd == NULL) {
 		pr_err("Missing platform data\n");
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
