Delivery-date: Mon, 03 Nov 2025 12:17:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFsYb-00EpvL-12
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 12:17:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFsYa-0003O9-IZ
	for lore@pengutronix.de; Mon, 03 Nov 2025 12:17:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5IoX4UsSjUNJvCFu6FLvPtuR63H4UVks1wLTGvXqeGY=; b=uV21KpRULcdKX+wX0nLIEYdeN8
	oUTfDVaqhCZnGIXFtb6VQkDhHkT1PnKUNnpVnVQ0/3/kzSUFSx7+WuNcAsI0VX3F4yjdxAbfKRluu
	+l6CsZgaQsKJL3B7FpsmRX8DCHDU3sRLsIYUrMVWswn+UwEorL8sJkOSvvbVTXog1ZlaWKRXwZo8f
	90wOMBStqoNHP7zLRI1kiEoCCoMYKe7AZX3tJwIKMVNQv6u7LHWqlJmWUG6J69FfuJiSPhtuHXmoG
	k3IjMo6bHQh85TTGrj+ETY99phV5OGPefTuuosrAWOR5BpqWL/WyanWFHcIuE45rpKeCN87eZOS1a
	nPAndjaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFsY3-00000009i1g-0215;
	Mon, 03 Nov 2025 11:16:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFsY0-00000009i1D-2Hcs
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 11:16:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFsXy-0003HA-Od; Mon, 03 Nov 2025 12:16:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFsXy-006qkP-1p;
	Mon, 03 Nov 2025 12:16:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vFsXy-00000007kmy-1xWV;
	Mon, 03 Nov 2025 12:16:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Nov 2025 12:16:23 +0100
Message-ID: <20251103111624.1848136-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_031628_580548_FEB7020A 
X-CRM114-Status: GOOD (  18.44  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] state: guard against empty variable set in DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We always initialize state->variables, but there are two places in the
code that assume there is at least one entry already.

Change them to use list_first_entry_or_null/list_last_entry_or_null as
appropriate to catch this issue gracefully.

This should have only affected state nodes without children, which is
not a useful device tree description, but nevertheless we should handle
that somehow instead of reading uninitialized values that may trigger
a panic or other misbehavior.

Reported-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/backend_format_raw.c | 16 ++++++++++++++--
 common/state/state.c              |  8 +++++---
 include/linux/list.h              | 14 ++++++++++++++
 3 files changed, 33 insertions(+), 5 deletions(-)

diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index 5fb38cd711da..b7b88dd5b94e 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -198,6 +198,18 @@ static int backend_format_raw_unpack(struct state_backend_format *format,
 	return ret;
 }
 
+static inline size_t state_data_size(struct state *state)
+{
+	const struct state_variable *sv;
+
+	/* Make use of the fact that the list is sorted in ascending order */
+	sv = list_last_entry_or_null(&state->variables, struct state_variable, list);
+	if (!sv)
+		return 0;
+
+	return sv->start + sv->size;
+}
+
 static int backend_format_raw_pack(struct state_backend_format *format,
 				   struct state *state, void ** buf_out,
 				   ssize_t * len_out)
@@ -216,8 +228,8 @@ static int backend_format_raw_pack(struct state_backend_format *format,
 			return ret;
 	}
 
-	sv = list_last_entry(&state->variables, struct state_variable, list);
-	size_data = sv->start + sv->size;
+	size_data = state_data_size(state);
+
 	size_full = size_data + sizeof(*header) + backend_raw->digest_length;
 
 	buf = xzalloc(size_full);
diff --git a/common/state/state.c b/common/state/state.c
index ac6cd6e57276..bafc07dfe751 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -405,10 +405,12 @@ int state_from_node(struct state *state, struct device_node *node, bool create)
 	if (create) {
 		const struct state_variable *sv;
 
-		/* start with second entry */
-		sv = list_first_entry(&state->variables, struct state_variable,
-				      list);
+		/* no variable = no variable overlap */
+		sv = list_first_entry_or_null(&state->variables, struct state_variable, list);
+		if (!sv)
+			return 0;
 
+		/* start with second entry */
 		list_for_each_entry_continue(sv, &state->variables, list) {
 			const struct state_variable *last_sv;
 
diff --git a/include/linux/list.h b/include/linux/list.h
index b90ea3e125d0..a036e3d07c07 100644
--- a/include/linux/list.h
+++ b/include/linux/list.h
@@ -529,6 +529,20 @@ static inline void list_splice_tail_init(struct list_head *list,
 	pos__ != head__ ? list_entry(pos__, type, member) : NULL; \
 })
 
+/**
+ * list_last_entry_or_null - get the last element from a list
+ * @ptr:	the list head to take the element from.
+ * @type:	the type of the struct this is embedded in.
+ * @member:	the name of the list_head within the struct.
+ *
+ * Note that if the list is empty, it returns NULL.
+ */
+#define list_last_entry_or_null(ptr, type, member) ({ \
+	struct list_head *head__ = (ptr); \
+	struct list_head *pos__ = READ_ONCE(head__->prev); \
+	pos__ != head__ ? list_entry(pos__, type, member) : NULL; \
+})
+
 /**
  * list_next_entry - get the next element in list
  * @pos:	the type * to cursor
-- 
2.47.3



