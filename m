Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsTes-0000Dj-Gj
 for barebox@lists.infradead.org; Wed, 13 May 2015 10:12:59 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 13 May 2015 12:12:27 +0200
Message-Id: <1431511952-32124-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
References: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/7] state: print proper error message,
 if reg property is not found
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/state.c b/common/state.c
index d4ce7313be97..5642f0d41855 100644
--- a/common/state.c
+++ b/common/state.c
@@ -512,8 +512,11 @@ static int state_convert_node_variable(struct state *state,
 
 		ret = of_property_read_u32_array(node, "reg", start_size,
 						 ARRAY_SIZE(start_size));
-		if (ret)
+		if (ret) {
+			dev_err(&state->dev,
+				"%s: reg property not found\n", name);
 			goto out_free;
+		}
 
 		if (start_size[1] != sv->size) {
 			dev_err(&state->dev,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
