Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout12.rmx.de ([94.199.88.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubUM-0000r3-9Z
 for barebox@lists.infradead.org; Thu, 23 Jan 2020 12:21:35 +0000
Received: from kdin02.retarus.com (kdin02.dmz1.retloc [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout12.rmx.de (Postfix) with ESMTPS id 483Lwp5YR4zRkSt
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 13:21:30 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 483Lwn4LZHz2TSCY
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 13:21:29 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Thu, 23 Jan 2020 13:20:43 +0100
Message-ID: <20200123122045.25507-3-ceggers@arri.de>
In-Reply-To: <20200123122045.25507-1-ceggers@arri.de>
References: <20200123122045.25507-1-ceggers@arri.de>
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
Subject: [PATCH 3/5] state: remove param member from state_uint32, state_enum32,
 state_mac
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

After adding the parameter, the pointer isn't required anymore.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 common/state/state.h           |  3 ---
 common/state/state_variables.c | 16 ++++++++--------
 2 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/common/state/state.h b/common/state/state.h
index 40450feff..1881d92ea 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -159,7 +159,6 @@ struct state_variable {
  */
 struct state_uint32 {
 	struct state_variable var;
-	struct param_d *param;
 	uint32_t value;
 	uint32_t value_default;
 };
@@ -169,7 +168,6 @@ struct state_uint32 {
  */
 struct state_enum32 {
 	struct state_variable var;
-	struct param_d *param;
 	uint32_t value;
 	uint32_t value_default;
 	const char **names;
@@ -181,7 +179,6 @@ struct state_enum32 {
  */
 struct state_mac {
 	struct state_variable var;
-	struct param_d *param;
 	uint8_t value[6];
 	uint8_t value_default[6];
 };
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 003542307..66c66f38b 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -116,7 +116,6 @@ static struct state_variable *state_uint8_create(struct state *state,
 		return ERR_CAST(param);
 	}
 
-	su32->param = param;
 	su32->var.type = vtype;
 	su32->var.size = sizeof(uint8_t);
 #ifdef __LITTLE_ENDIAN
@@ -146,7 +145,6 @@ static struct state_variable *state_uint32_create(struct state *state,
 		return ERR_CAST(param);
 	}
 
-	su32->param = param;
 	su32->var.type = vtype;
 	su32->var.size = sizeof(uint32_t);
 	su32->var.raw = &su32->value;
@@ -226,6 +224,7 @@ static struct state_variable *state_enum32_create(struct state *state,
 						  const struct variable_type *vtype)
 {
 	struct state_enum32 *enum32;
+	struct param_d *param;
 	int ret, i, num_names;
 
 	enum32 = xzalloc(sizeof(*enum32));
@@ -253,11 +252,11 @@ static struct state_variable *state_enum32_create(struct state *state,
 		enum32->names[i] = xstrdup(name);
 	}
 
-	enum32->param = dev_add_param_enum(&state->dev, name, state_set_dirty,
+	param = dev_add_param_enum(&state->dev, name, state_set_dirty,
 					   NULL, &enum32->value, enum32->names,
 					   num_names, &enum32->var);
-	if (IS_ERR(enum32->param)) {
-		ret = PTR_ERR(enum32->param);
+	if (IS_ERR(param)) {
+		ret = PTR_ERR(param);
 		goto out;
 	}
 
@@ -310,6 +309,7 @@ static struct state_variable *state_mac_create(struct state *state,
 					       const struct variable_type *vtype)
 {
 	struct state_mac *mac;
+	struct param_d *param;
 	int ret;
 
 	mac = xzalloc(sizeof(*mac));
@@ -319,10 +319,10 @@ static struct state_variable *state_mac_create(struct state *state,
 	mac->var.raw = mac->value;
 	mac->var.state = state;
 
-	mac->param = dev_add_param_mac(&state->dev, name, state_set_dirty,
+	param = dev_add_param_mac(&state->dev, name, state_set_dirty,
 				       NULL, mac->value, &mac->var);
-	if (IS_ERR(mac->param)) {
-		ret = PTR_ERR(mac->param);
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
