Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout01.rmx.de ([94.199.90.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubTw-0000h9-CZ
 for barebox@lists.infradead.org; Thu, 23 Jan 2020 12:21:10 +0000
Received: from kdin02.retarus.com (kdin02.dmz1.retloc [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout01.rmx.de (Postfix) with ESMTPS id 483LwJ58Kjz2SYLy
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 13:21:04 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 483LwH74RSz2TRlK
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 13:21:03 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Thu, 23 Jan 2020 13:20:41 +0100
Message-ID: <20200123122045.25507-1-ceggers@arri.de>
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
Subject: [PATCH 1/5] state: remove param member from struct state_string
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

After adding the parameter, the pointer isn't required anymore.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 common/state/state.h           | 1 -
 common/state/state_variables.c | 7 ++++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/state/state.h b/common/state/state.h
index 912d6d484..40450feff 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -191,7 +191,6 @@ struct state_mac {
  */
 struct state_string {
 	struct state_variable var;
-	struct param_d *param;
 	char *value;
 	const char *value_default;
 	char raw[];
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 6a00c8220..003542307 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -413,6 +413,7 @@ static struct state_variable *state_string_create(struct state *state,
 {
 	struct state_string *string;
 	uint32_t start_size[2];
+	struct param_d *param;
 	int ret;
 
 	ret = of_property_read_u32_array(node, "reg", start_size,
@@ -432,11 +433,11 @@ static struct state_variable *state_string_create(struct state *state,
 	string->var.raw = &string->raw;
 	string->var.state = state;
 
-	string->param = dev_add_param_string(&state->dev, name,
+	param = dev_add_param_string(&state->dev, name,
 					     state_string_set, state_string_get,
 					     &string->value, &string->var);
-	if (IS_ERR(string->param)) {
-		ret = PTR_ERR(string->param);
+	if (IS_ERR(param)) {
+		ret = PTR_ERR(param);
 		goto out;
 	}
 
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
