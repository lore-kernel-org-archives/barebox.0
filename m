Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zzheh-0000P1-7U
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 09:06:56 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3BE76A00264
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 10:07:00 +0100 (CET)
From: Jan Remmet <j.remmet@phytec.de>
Date: Fri, 20 Nov 2015 10:03:18 +0100
Message-Id: <1448010198-23247-1-git-send-email-j.remmet@phytec.de>
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
Subject: [PATCH] state: make type check error verbose
To: barebox@lists.infradead.org

Wrong type let state probe fail with ENOENT.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 common/state.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/state.c b/common/state.c
index 117a686..a161b94 100644
--- a/common/state.c
+++ b/common/state.c
@@ -716,6 +716,8 @@ static int state_convert_node_variable(struct state *state,
 
 	vtype = state_find_type_by_name(type_name);
 	if (!vtype) {
+		dev_err(&state->dev, "unkown type: %s in %s\n", type_name,
+			node->full_name);
 		ret = -ENOENT;
 		goto out_free;
 	}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
