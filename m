Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eAZX1-0005iC-AU
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 10:49:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DEC4FA00984
 for <barebox@lists.infradead.org>; Fri,  3 Nov 2017 11:50:26 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 3 Nov 2017 11:48:27 +0100
Message-Id: <1509706109-41478-5-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509706109-41478-1-git-send-email-d.schultz@phytec.de>
References: <1509706109-41478-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v3 5/7] common: state: Add variable type as enum
To: barebox@lists.infradead.org

The variable_type struct holds a name of its type. Checking the type of
a variable with this string needs much resources.

This patch introduce a enum of the variable type for better type
checking.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
Changes:
	v3: New patch.

 common/state/state.h           |  9 +++++++++
 common/state/state_variables.c | 18 ++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/common/state/state.h b/common/state/state.h
index 7dd163c..fcc6b9f 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -9,6 +9,14 @@ enum state_flags {
 	STATE_FLAG_NO_AUTHENTIFICATION = (1 << 0),
 };
 
+enum state_variable_type {
+	STATE_VARIABLE_TYPE_UINT8,
+	STATE_VARIABLE_TYPE_UINT32,
+	STATE_VARIABLE_TYPE_ENUM32,
+	STATE_VARIABLE_TYPE_MAC,
+	STATE_VARIABLE_TYPE_STRING
+};
+
 /**
  * state_backend_storage_bucket - This class describes a single backend storage
  * object copy
@@ -119,6 +127,7 @@ struct state_variable;
 /* A variable type (uint32, enum32) */
 struct variable_type {
 	const char *type_name;
+	enum state_variable_type type;
 	struct list_head list;
 	int (*export) (struct state_variable *, struct device_node *,
 		       enum state_convert);
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 688467d..de9ba4a 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -450,26 +450,31 @@ static struct state_variable *state_string_create(struct state *state,
 static struct variable_type types[] = {
 	{
 		.type_name = "uint8",
+		.type = STATE_VARIABLE_TYPE_UINT8,
 		.export = state_uint32_export,
 		.import = state_uint32_import,
 		.create = state_uint8_create,
 	}, {
 		.type_name = "uint32",
+		.type = STATE_VARIABLE_TYPE_UINT32,
 		.export = state_uint32_export,
 		.import = state_uint32_import,
 		.create = state_uint32_create,
 	}, {
 		.type_name = "enum32",
+		.type = STATE_VARIABLE_TYPE_ENUM32,
 		.export = state_enum32_export,
 		.import = state_enum32_import,
 		.create = state_enum32_create,
 	}, {
 		.type_name = "mac",
+		.type = STATE_VARIABLE_TYPE_MAC,
 		.export = state_mac_export,
 		.import = state_mac_import,
 		.create = state_mac_create,
 	}, {
 		.type_name = "string",
+		.type = STATE_VARIABLE_TYPE_STRING,
 		.export = state_string_export,
 		.import = state_string_import,
 		.create = state_string_create,
@@ -489,6 +494,19 @@ struct variable_type *state_find_type_by_name(const char *name)
 	return NULL;
 }
 
+struct variable_type *state_find_type(const enum state_variable_type type)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(types); i++) {
+		if (type == types[i].type) {
+			return &types[i];
+		}
+	}
+
+	return NULL;
+}
+
 struct state_variable *state_find_var(struct state *state, const char *name)
 {
 	struct state_variable *sv;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
