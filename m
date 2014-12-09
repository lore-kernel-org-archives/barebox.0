Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyIcK-0003ZV-VE
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 11:06:11 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XyIby-0008IO-Su
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 12:05:46 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  9 Dec 2014 12:05:45 +0100
Message-Id: <1418123146-13235-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
References: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/5] fdt: don't strip const qualifier
To: barebox@lists.infradead.org

Fixes:
warning: assignment discards 'const' qualifier from pointer target type

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/of/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 84c38fd5a13c..d84b2037cbcc 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -64,7 +64,7 @@ struct device_node *of_unflatten_dtb(const void *infdt)
 	struct device_node *root, *node = NULL;
 	struct property *p;
 	uint32_t dt_struct;
-	struct fdt_node_header *fnh;
+	const struct fdt_node_header *fnh;
 	void *dt_strings;
 	struct fdt_header f;
 	int ret;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
