Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ypynx-0004Uf-Ko
 for barebox@lists.infradead.org; Wed, 06 May 2015 12:52:03 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  6 May 2015 14:51:28 +0200
Message-Id: <1430916691-12459-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1430916691-12459-1-git-send-email-mkl@pengutronix.de>
References: <1430916691-12459-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/6] state: state_uint32_create: use %u to print unsigned
 variable
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/state.c b/common/state.c
index b677a9f01d25..7f12341bd578 100644
--- a/common/state.c
+++ b/common/state.c
@@ -162,7 +162,7 @@ static struct state_variable *state_uint32_create(struct state *state,
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
