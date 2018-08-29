Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSm-0005Um-R1
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:51 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1550FA00C79
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:57 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:39 +0200
Message-Id: <1535545212-18871-24-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 23/56] UBI: factorize destroy_av() and ubi_remove_av() code
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

Those functions are pretty much doing the same thing, except
ubi_remove_av() is putting the aeb elements attached to the volume into
the ai->erase list and the destroy_av() is freeing them.

Rework destroy_av() to handle both cases.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fix conflict]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index d450f6c0d65b..f42c33a10fef 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -713,6 +713,9 @@ struct ubi_ainf_volume *ubi_find_av(const struct ubi_attach_info *ai,
 			      &created);
 }
 
+static void destroy_av(struct ubi_attach_info *ai, struct ubi_ainf_volume *av,
+		       struct list_head *list);
+
 /**
  * ubi_remove_av - delete attaching information about a volume.
  * @ai: attaching information
@@ -720,19 +723,10 @@ struct ubi_ainf_volume *ubi_find_av(const struct ubi_attach_info *ai,
  */
 void ubi_remove_av(struct ubi_attach_info *ai, struct ubi_ainf_volume *av)
 {
-	struct rb_node *rb;
-	struct ubi_ainf_peb *aeb;
-
 	dbg_bld("remove attaching information about volume %d", av->vol_id);
 
-	while ((rb = rb_first(&av->root))) {
-		aeb = rb_entry(rb, struct ubi_ainf_peb, u.rb);
-		rb_erase(&aeb->u.rb, &av->root);
-		list_add_tail(&aeb->u.list, &ai->erase);
-	}
-
 	rb_erase(&av->rb, &ai->volumes);
-	kfree(av);
+	destroy_av(ai, av, &ai->erase);
 	ai->vols_found -= 1;
 }
 
@@ -1245,10 +1239,12 @@ static int late_analysis(struct ubi_device *ubi, struct ubi_attach_info *ai)
  * destroy_av - free volume attaching information.
  * @av: volume attaching information
  * @ai: attaching information
+ * @list: put the aeb elements in there if !NULL, otherwise free them
  *
  * This function destroys the volume attaching information.
  */
-static void destroy_av(struct ubi_attach_info *ai, struct ubi_ainf_volume *av)
+static void destroy_av(struct ubi_attach_info *ai, struct ubi_ainf_volume *av,
+		       struct list_head *list)
 {
 	struct ubi_ainf_peb *aeb;
 	struct rb_node *this = av->root.rb_node;
@@ -1268,7 +1264,10 @@ static void destroy_av(struct ubi_attach_info *ai, struct ubi_ainf_volume *av)
 					this->rb_right = NULL;
 			}
 
-			kfree(aeb);
+			if (list)
+				list_add_tail(&aeb->u.list, list);
+			else
+				kfree(aeb);
 		}
 	}
 	kfree(av);
@@ -1323,7 +1322,7 @@ static void destroy_ai(struct ubi_attach_info *ai)
 					rb->rb_right = NULL;
 			}
 
-			destroy_av(ai, av);
+			destroy_av(ai, av, NULL);
 		}
 	}
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
