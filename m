Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTWtd-0004Ks-Kn
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:37:06 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu,  5 Mar 2015 15:36:39 +0100
Message-Id: <1425566201-31989-2-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/3] fixup! sandbox: hostfile: completely switch to OF based
 probing
To: barebox@lists.infradead.org

It makes no sense to put an address-cells and size-cells property in the
hostfile, as it will only affect sub-nodes.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/board/hostfile.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index c6fd80fd8761..41ded73a3a21 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -140,14 +140,6 @@ static int of_hostfile_fixup(struct device_node *root, void *ctx)
 	if (ret)
 		return ret;
 
-	ret = of_property_write_u32(node, "#address-cells", 2);
-	if (ret)
-		return ret;
-
-	ret = of_property_write_u32(node, "#size-cells", 1);
-	if (ret)
-		return ret;
-
 	ret = of_set_property(node, "compatible", hostfile_dt_ids->compatible,
 			      strlen(hostfile_dt_ids->compatible) + 1, 1);
 	if (ret)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
