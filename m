Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfBL-0004Wt-HE
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:48 +0100
Message-Id: <20181119084454.17599-7-s.hauer@pengutronix.de>
In-Reply-To: <20181119084454.17599-1-s.hauer@pengutronix.de>
References: <20181119084454.17599-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] state: remove unused function
To: Barebox List <barebox@lists.infradead.org>

state_find_type() is unused and doesn't have a prototype. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state_variables.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index abd714ceda..269d175874 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -492,19 +492,6 @@ struct variable_type *state_find_type_by_name(const char *name)
 	return NULL;
 }
 
-struct variable_type *state_find_type(const enum state_variable_type type)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(types); i++) {
-		if (type == types[i].type) {
-			return &types[i];
-		}
-	}
-
-	return NULL;
-}
-
 struct state_variable *state_find_var(struct state *state, const char *name)
 {
 	struct state_variable *sv;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
