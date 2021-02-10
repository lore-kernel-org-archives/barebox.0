Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9qTP-0003Ha-EG
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 14:28:09 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de
 (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
 by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id
 11AERPq5732870
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
 for <barebox@lists.infradead.org>; Wed, 10 Feb 2021 15:27:26 +0100
Received: from reddoxx.intern.sigma-chemnitz.de
 (reddoxx.intern.sigma-chemnitz.de [192.168.0.193])
 by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id
 11AERNni1819514
 for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de;
 Wed, 10 Feb 2021 15:27:23 +0100
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Wed, 10 Feb 2021 15:27:02 +0100
Message-Id: <20210210142704.1855761-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] dt:overlay: fix operation with multiple overlays
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

When applying multiple devicetree overlays the 'phandle' attribute
must be updated too.  Else, every overlay will be adjusted to start
with the same base which causes duplicate phandles.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 drivers/of/base.c    | 1 +
 drivers/of/overlay.c | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index edb0a8e71a0f..c88803d8ab4b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2385,6 +2385,7 @@ struct device_node *of_copy_node(struct device_node *parent, const struct device
 	struct property *pp;
 
 	np = of_new_node(parent, other->name);
+	np->phandle = other->phandle;
 
 	list_for_each_entry(pp, &other->properties, list)
 		of_new_property(np, pp->name, pp->value, pp->length);
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 92d20b9a247e..79f8b6dfdbcf 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -66,8 +66,10 @@ static int of_overlay_apply(struct device_node *target,
 
 	for_each_child_of_node(overlay, child) {
 		target_child = of_get_child_by_name(target, child->name);
-		if (!target_child)
+		if (!target_child) {
 			target_child = of_new_node(target, child->name);
+			target_child->phandle = child->phandle;
+		}
 		if (!target_child)
 			return -ENOMEM;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
