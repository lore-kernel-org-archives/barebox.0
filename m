Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZB1dP-0006qd-Ez
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 14:08:08 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri,  3 Jul 2015 16:07:41 +0200
Message-Id: <1435932461-27674-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] state: fix range check on uint8 and uint32 variables
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

The patch "8bfd06f073c8 state: uint8: add range check for uint8" as applied not
correctly to the repository. It was supposed to change the state_uint8_create()
function:

|  static struct state_variable *state_uint8_create(struct state *state,
|
|  	su32 = xzalloc(sizeof(*su32));
|
| -	param = dev_add_param_int(&state->dev, name, state_set_dirty,
| -				  NULL, &su32->value, "%u", state);
| +	param = dev_add_param_int(&state->dev, name, state_uint8_set,
| +				  NULL, &su32->value, "%u", su32);

but the state_uint32_create() was changed instead, which leads to broken range
checks on uint32 variables and no range checks on uint8. This patch fixes the
problem.

Fixes: 8bfd06f073c8 state: uint8: add range check for uint8
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/state.c b/common/state.c
index 7076f5764d1f..e21fd59a3ee7 100644
--- a/common/state.c
+++ b/common/state.c
@@ -171,8 +171,8 @@ static struct state_variable *state_uint8_create(struct state *state,
 
 	su32 = xzalloc(sizeof(*su32));
 
-	param = dev_add_param_int(&state->dev, name, state_set_dirty,
-				  NULL, &su32->value, "%d", state);
+	param = dev_add_param_int(&state->dev, name, state_uint8_set,
+				  NULL, &su32->value, "%d", su32);
 	if (IS_ERR(param)) {
 		free(su32);
 		return ERR_CAST(param);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
