Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z86Z7-0006vq-Mz
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 12:47:39 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 25 Jun 2015 14:47:09 +0200
Message-Id: <1435236431-11021-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/3] state: fixup: only export default value during fixup if
 set
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 27 +++++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/common/state.c b/common/state.c
index 377507bb482a..688c85cf0e7d 100644
--- a/common/state.c
+++ b/common/state.c
@@ -143,13 +143,16 @@ static int state_uint32_export(struct state_variable *var,
 	struct state_uint32 *su32 = to_state_uint32(var);
 	int ret;
 
-	if (su32->value_default || conv == STATE_CONVERT_FIXUP) {
+	if (su32->value_default) {
 		ret = of_property_write_u32(node, "default",
 					    su32->value_default);
-		if (ret || conv == STATE_CONVERT_FIXUP)
+		if (ret)
 			return ret;
 	}
 
+	if (conv == STATE_CONVERT_FIXUP)
+		return 0;
+
 	return of_property_write_u32(node, "value", su32->value);
 }
 
@@ -249,13 +252,16 @@ static int state_enum32_export(struct state_variable *var,
 	int ret, i, len;
 	char *prop, *str;
 
-	if (enum32->value_default || conv == STATE_CONVERT_FIXUP) {
+	if (enum32->value_default) {
 		ret = of_property_write_u32(node, "default",
 					    enum32->value_default);
-		if (ret || conv == STATE_CONVERT_FIXUP)
+		if (ret)
 			return ret;
 	}
 
+	if (conv == STATE_CONVERT_FIXUP)
+		return 0;
+
 	ret = of_property_write_u32(node, "value", enum32->value);
 	if (ret)
 		return ret;
@@ -364,10 +370,15 @@ static int state_mac_export(struct state_variable *var,
 	struct state_mac *mac = to_state_mac(var);
 	int ret;
 
-	ret = of_property_write_u8_array(node, "default", mac->value_default,
-					 ARRAY_SIZE(mac->value_default));
-	if (ret || conv == STATE_CONVERT_FIXUP)
-		return ret;
+	if (!is_zero_ether_addr(mac->value_default)) {
+		ret = of_property_write_u8_array(node, "default", mac->value_default,
+						 ARRAY_SIZE(mac->value_default));
+		if (ret)
+			return ret;
+	}
+
+	if (conv == STATE_CONVERT_FIXUP)
+		return 0;
 
 	return of_property_write_u8_array(node, "value", mac->value,
 					  ARRAY_SIZE(mac->value));
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
