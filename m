Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.tq-group.com ([62.157.118.193])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gP2XA-0008Gk-M2
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 09:41:30 +0000
From: matthias.schiffer@ew.tq-group.com
Date: Tue, 20 Nov 2018 10:40:35 +0100
Message-Id: <20181120094035.18252-3-matthias.schiffer@ew.tq-group.com>
In-Reply-To: <20181120094035.18252-1-matthias.schiffer@ew.tq-group.com>
References: <20181120094035.18252-1-matthias.schiffer@ew.tq-group.com>
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
Subject: [PATCH] FIT: look for hash-1 as well as hash@1 nodes in signature
 check
To: barebox@lists.infradead.org
Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>

From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>

The examples in the U-boot docs use "hash-N" as the name for hash nodes.
It seems "hash@N" was used instead at some point during the development of
the FIT format and "hash-N" is more correct; support for "hash@N" is
preserved for backward compatibility.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---
 common/image-fit.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index dfd1fa02c..356c1ae5d 100644
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
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
