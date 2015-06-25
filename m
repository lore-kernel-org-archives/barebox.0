Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z86Z7-0006vl-N4
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 12:47:39 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 25 Jun 2015 14:47:11 +0200
Message-Id: <1435236431-11021-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1435236431-11021-1-git-send-email-mkl@pengutronix.de>
References: <1435236431-11021-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/3] fixup! state: add support for fixed length strings
To: barebox@lists.infradead.org

Only export default value if set. This may cause an NULL pointer deref.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/common/state.c b/common/state.c
index 688c85cf0e7d..124332022662 100644
--- a/common/state.c
+++ b/common/state.c
@@ -445,14 +445,17 @@ static int state_string_export(struct state_variable *var,
 	struct state_string *string = to_state_string(var);
 	int ret = 0;
 
-	if (string->value_default || conv == STATE_CONVERT_FIXUP) {
+	if (string->value_default) {
 		ret = of_set_property(node, "default", string->value_default,
 				      strlen(string->value_default) + 1, 1);
 
-		if (ret || conv == STATE_CONVERT_FIXUP)
+		if (ret)
 			return ret;
 	}
 
+	if (conv == STATE_CONVERT_FIXUP)
+		return 0;
+
 	if (string->value)
 		ret = of_set_property(node, "value", string->value,
 				      strlen(string->value) + 1, 1);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
