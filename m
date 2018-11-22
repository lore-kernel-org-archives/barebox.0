Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPmQO-0006Ji-01
 for barebox@lists.infradead.org; Thu, 22 Nov 2018 10:41:33 +0000
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Date: Thu, 22 Nov 2018 11:41:01 +0100
Message-Id: <20181122104101.25796-1-matthias.schiffer@ew.tq-group.com>
In-Reply-To: <20181121080124.s47maw3ex6dmzgm7@pengutronix.de>
References: <20181121080124.s47maw3ex6dmzgm7@pengutronix.de>
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
Subject: [PATCH v2] FIT: support hash-1/signature-1 nodes in signature check
To: barebox@lists.infradead.org
Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>

The examples in the U-boot docs use "hash-N" and "signature-N" as the names
for hash/signature nodes. It seems "@N" was used instead at some point
during the development of the FIT format and "-N" is more correct (in fact,
dtc throws warnings when using "@N" without a reg attribute). Support for
the "@N" node names is preserved for backward compatibility.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---

v2: add signature-1 in addition to hash-1

 common/image-fit.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index dfd1fa02c..87a55b7e2 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -392,7 +392,9 @@ static int fit_verify_hash(struct fit_handle *handle, struct device_node *image,
 		ret = -EINVAL;
 	}
 
-	hash = of_get_child_by_name(image, "hash@1");
+	hash = of_get_child_by_name(image, "hash-1");
+	if (!hash)
+		hash = of_get_child_by_name(image, "hash@1");
 	if (!hash) {
 		if (ret)
 			pr_err("image %s does not have hashes\n",
@@ -468,7 +470,9 @@ static int fit_image_verify_signature(struct fit_handle *handle,
 		ret = -EINVAL;
 	}
 
-	sig_node = of_get_child_by_name(image, "signature@1");
+	sig_node = of_get_child_by_name(image, "signature-1");
+	if (!sig_node)
+		sig_node = of_get_child_by_name(image, "signature@1");
 	if (!sig_node) {
 		pr_err("Image %s has no signature\n", image->full_name);
 		return ret;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
