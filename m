Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22d.google.com ([2a00:1450:4013:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuV5t-0001JN-OK
 for barebox@lists.infradead.org; Wed, 03 Jul 2013 22:00:10 +0000
Received: by mail-ea0-f173.google.com with SMTP id g15so379754eak.18
 for <barebox@lists.infradead.org>; Wed, 03 Jul 2013 14:59:46 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed,  3 Jul 2013 23:59:32 +0200
Message-Id: <1372888772-28653-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH] OF: base: fix infinite loop in of_find_matching_node_and_match
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

of_find_matching_node_and_match macro can loop infinitely, because it
does not check for root node of the tree iterated over. This adds a
check for parent pointer of last tested iterator entry, which is
NULL for the root node.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Reported-by: Hiroki Nishimoto <hiroki.nishimoto.if@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Hiroki Nishimoto <hiroki.nishimoto.if@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index e9f1f79..f21476c 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -418,6 +418,9 @@ struct device_node *of_find_matching_node_and_match(struct device_node *from,
 				*match = m;
 			return np;
 		}
+		/* check for root node */
+		if (!np->parent)
+			break;
 	}
 
 	return NULL;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
