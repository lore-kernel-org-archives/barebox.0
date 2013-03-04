Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5Z-0006Vy-Ej
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:09 +0100
Message-Id: <1362390820-10333-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/37] ARM bootm: Use of_get_fixed_tree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c |    8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index dc29004..cf192cf 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -181,13 +181,7 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 	}
 
 	if (IS_BUILTIN(CONFIG_OFTREE)) {
-		fdt_open_into(oftree, oftree, end + 0x8000);
-
-		ret = of_fix_tree(oftree);
-		if (ret)
-			return ret;
-
-		data->oftree = oftree;
+		data->oftree = of_get_fixed_tree(oftree);
 	}
 
 	pr_info("zImage: concatenated oftree detected\n");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
