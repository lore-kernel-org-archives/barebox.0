Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4USB-00056x-Lg
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 13:29:32 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 15 Jun 2015 15:29:05 +0200
Message-Id: <1434374946-7212-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1434374946-7212-1-git-send-email-mkl@pengutronix.de>
References: <1434374946-7212-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/3] state: uint8: use %u as format string
To: barebox@lists.infradead.org
Cc: Jan Luebbe <jluebbe@debian.org>

Cc: Jan Luebbe <jluebbe@debian.org>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/state.c b/common/state.c
index 7076f5764d1f..e30f72660797 100644
--- a/common/state.c
+++ b/common/state.c
@@ -172,7 +172,7 @@ static struct state_variable *state_uint8_create(struct state *state,
 	su32 = xzalloc(sizeof(*su32));
 
 	param = dev_add_param_int(&state->dev, name, state_set_dirty,
-				  NULL, &su32->value, "%d", state);
+				  NULL, &su32->value, "%u", state);
 	if (IS_ERR(param)) {
 		free(su32);
 		return ERR_CAST(param);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
