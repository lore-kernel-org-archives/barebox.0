Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPAGf-0006qd-Rm
 for barebox@lists.infradead.org; Mon, 18 Jul 2016 15:15:39 +0000
Received: by mail-pf0-x243.google.com with SMTP id h186so3461254pfg.2
 for <barebox@lists.infradead.org>; Mon, 18 Jul 2016 08:15:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 18 Jul 2016 08:14:46 -0700
Message-Id: <1468854889-6057-4-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1468854889-6057-1-git-send-email-andrew.smirnov@gmail.com>
References: <1468854889-6057-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 4/7] mfd: syscon: Don't check xzalloc return for NULL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Xzalloc never returns NULL, so this check does not bring any value.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/syscon.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index cf1d2df..487fa9e 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -116,8 +116,6 @@ static int syscon_probe(struct device_d *dev)
 	struct resource *res;
 
 	syscon = xzalloc(sizeof(struct syscon));
-	if (!syscon)
-		return -ENOMEM;
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(res)) {
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
