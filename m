Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ynp6z-0007gF-1b
 for barebox@lists.infradead.org; Thu, 30 Apr 2015 14:06:45 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 30 Apr 2015 16:06:20 +0200
Message-Id: <1430402780-8327-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1430402780-8327-1-git-send-email-mkl@pengutronix.de>
References: <1430402780-8327-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] RFC: state: work around pointer signess mismach warnings
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/state.c b/common/state.c
index 637a15c66ad0..1b4a43be585c 100644
--- a/common/state.c
+++ b/common/state.c
@@ -162,7 +162,7 @@ static struct state_variable *state_uint32_create(struct state *state,
 	su32 = xzalloc(sizeof(*su32));
 
 	param = dev_add_param_int(&state->dev, name, state_set_dirty,
-				  NULL, &su32->value, "%d", state);
+				  NULL, (int *)&su32->value, "%d", state);
 	if (IS_ERR(param)) {
 		free(su32);
 		return ERR_CAST(param);
@@ -278,7 +278,7 @@ static struct state_variable *state_enum32_create(struct state *state,
 	}
 
 	enum32->param = dev_add_param_enum(&state->dev, name, state_set_dirty,
-			NULL, &enum32->value, enum32->names, num_names, state);
+			NULL, (int *)&enum32->value, enum32->names, num_names, state);
 	if (IS_ERR(enum32->param)) {
 		ret = PTR_ERR(enum32->param);
 		goto out;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
