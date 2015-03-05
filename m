Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTWtd-0004LH-Ko
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:37:07 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu,  5 Mar 2015 15:36:41 +0100
Message-Id: <1425566201-31989-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425566201-31989-1-git-send-email-mkl@pengutronix.de>
References: <1425566201-31989-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/3] fixup! sandbox: add support to pass dtb to barebox
To: barebox@lists.infradead.org

This patch will generate a oftree on the fly, if no dtb is specified on the cmd
line.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/board/dtb.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/arch/sandbox/board/dtb.c b/arch/sandbox/board/dtb.c
index 9d4210164e01..708eca903a38 100644
--- a/arch/sandbox/board/dtb.c
+++ b/arch/sandbox/board/dtb.c
@@ -38,15 +38,25 @@ int barebox_register_dtb(const void *new_dtb)
 static int of_sandbox_init(void)
 {
 	struct device_node *root;
+	int ret;
 
-	if (!dtb)
-		return 0;
+	if (dtb) {
+		root = of_unflatten_dtb(dtb);
+	} else {
+		root = of_new_node(NULL, NULL);
+				
+		ret = of_property_write_u32(root, "#address-cells", 2);
+		if (ret)
+			return ret;
 
-	root = of_unflatten_dtb(dtb);
-	if (IS_ERR(root)) {
-		return PTR_ERR(root);
+		ret = of_property_write_u32(root, "#size-cells", 1);
+		if (ret)
+			return ret;
 	}
 
+	if (IS_ERR(root))
+		return PTR_ERR(root);
+
 	of_set_root_node(root);
 	of_fix_tree(root);
 	if (IS_ENABLED(CONFIG_OFDEVICE))
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
