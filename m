Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eAEpy-00036d-KY
 for barebox@lists.infradead.org; Thu, 02 Nov 2017 12:43:17 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0D0A2A008AC
 for <barebox@lists.infradead.org>; Thu,  2 Nov 2017 13:44:42 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Thu, 2 Nov 2017 13:42:43 +0100
Message-Id: <1509626565-3722-4-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509626565-3722-1-git-send-email-d.schultz@phytec.de>
References: <1509626565-3722-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v2 4/6] common: state: Add variable_type to state_variable
To: barebox@lists.infradead.org

Add a pointer in state_variable to the corresponding variable_type array
element.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
Changes:
	v2: New patch

 common/state/state.h           | 1 +
 common/state/state_variables.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/common/state/state.h b/common/state/state.h
index 81aaec2..14b54aa 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -132,6 +132,7 @@ struct variable_type {
 struct state_variable {
 	struct state *state;
 	struct list_head list;
+	struct variable_type *type;
 	const char *name;
 	unsigned int start;
 	unsigned int size;
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 56bcd95..e6571be 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -116,6 +116,7 @@ static struct state_variable *state_uint8_create(struct state *state,
 	}
 
 	su32->param = param;
+	su32->var.type = state_find_type_by_name("uint8");
 	su32->var.size = sizeof(uint8_t);
 #ifdef __LITTLE_ENDIAN
 	su32->var.raw = &su32->value;
@@ -144,6 +145,7 @@ static struct state_variable *state_uint32_create(struct state *state,
 	}
 
 	su32->param = param;
+	su32->var.type = state_find_type_by_name("uint32");
 	su32->var.size = sizeof(uint32_t);
 	su32->var.raw = &su32->value;
 	su32->var.state = state;
@@ -234,6 +236,7 @@ static struct state_variable *state_enum32_create(struct state *state,
 
 	enum32->names = xzalloc(sizeof(char *) * num_names);
 	enum32->num_names = num_names;
+	enum32->var.type = state_find_type_by_name("enum32");
 	enum32->var.size = sizeof(uint32_t);
 	enum32->var.raw = &enum32->value;
 	enum32->var.state = state;
@@ -307,6 +310,7 @@ static struct state_variable *state_mac_create(struct state *state,
 
 	mac = xzalloc(sizeof(*mac));
 
+	mac->var.type = state_find_type_by_name("mac");
 	mac->var.size = ARRAY_SIZE(mac->value);
 	mac->var.raw = mac->value;
 	mac->var.state = state;
@@ -420,6 +424,7 @@ static struct state_variable *state_string_create(struct state *state,
 		return ERR_PTR(-EILSEQ);
 
 	string = xzalloc(sizeof(*string) + start_size[1]);
+	string->var.type = state_find_type_by_name("string");
 	string->var.size = start_size[1];
 	string->var.raw = &string->raw;
 	string->var.state = state;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
