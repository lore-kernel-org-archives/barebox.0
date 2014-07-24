Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x231.google.com ([2a00:1450:400c:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAMLP-00064z-Sj
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 16:58:16 +0000
Received: by mail-wg0-f49.google.com with SMTP id k14so2986682wgh.32
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 09:57:50 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Thu, 24 Jul 2014 18:54:57 +0200
Message-Id: <1406220898-10310-2-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1406220898-10310-1-git-send-email-b.galvani@gmail.com>
References: <1406220898-10310-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 1/2] mfd: syscon: add device tree support
To: barebox@lists.infradead.org

This patch defines a OF compatible property for the syscon driver to
allow it to be probed from device tree.

Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 drivers/mfd/syscon.c |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index e6722e1..55cc34f 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -95,10 +95,16 @@ static struct platform_device_id syscon_ids[] = {
 	{ }
 };
 
+static struct of_device_id of_syscon_match[] = {
+	{ .compatible = "syscon" },
+	{ },
+};
+
 static struct driver_d syscon_driver = {
 	.name		= "syscon",
 	.probe		= syscon_probe,
 	.id_table	= syscon_ids,
+	.of_compatible	= DRV_OF_COMPAT(of_syscon_match),
 };
 
 static int __init syscon_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
