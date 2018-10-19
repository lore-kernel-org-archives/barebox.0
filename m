Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDMd8-0003w2-Gy
 for barebox@lists.infradead.org; Fri, 19 Oct 2018 04:43:23 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Fri, 19 Oct 2018 06:43:03 +0200
Message-Id: <20181019044303.537-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH] state: fix indentation
To: Barebox List <barebox@lists.infradead.org>

---
 common/state/state.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/state/state.c b/common/state/state.c
index bef20210d6e9..54c57232e626 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -311,7 +311,7 @@ static int state_convert_node_variable(struct state *state,
 		if ((conv == STATE_CONVERT_TO_NODE)
 		    || (conv == STATE_CONVERT_FIXUP)) {
 			ret = of_property_write_string(new_node, "type",
-					      vtype->type_name);
+						       vtype->type_name);
 			if (ret)
 				goto out;
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
