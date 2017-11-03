Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eAZX1-0005iD-Av
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 10:49:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 23756A0098B
 for <barebox@lists.infradead.org>; Fri,  3 Nov 2017 11:50:27 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 3 Nov 2017 11:48:28 +0100
Message-Id: <1509706109-41478-6-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v3 6/7] common: state: Add function to read state MAC
To: barebox@lists.infradead.org

This API function allows to receive a copy of a MAC address from
variables in a state.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
Changes:
	v2: New patch
	v3: Changed return values
	    Switched to the new STATE_VARIABLE_TYPE_* field
	    Changed to memcpy function, instead of own loop

 common/state/state.c | 21 +++++++++++++++++++++
 include/state.h      |  2 ++
 2 files changed, 23 insertions(+)

diff --git a/common/state/state.c b/common/state/state.c
index 98a7db3..6399bd3 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -693,6 +693,27 @@ int state_get_name(const struct state *state, char const **name)
 	return 0;
 }
 
+int state_read_mac(struct state *state, const char *name, u8 *buf)
+{
+	struct state_variable *svar;
+	struct state_mac *mac;
+
+	if (!state || !name || !buf)
+		return -EINVAL;
+
+	svar = state_find_var(state, name);
+	if (IS_ERR(svar))
+		return PTR_ERR(svar);
+
+	if (svar->type->type != STATE_VARIABLE_TYPE_MAC)
+		return -EINVAL;
+
+	mac = to_state_mac(svar);
+	memcpy(buf, mac->value, 6);
+
+	return 0;
+}
+
 void state_info(void)
 {
 	struct state *state;
diff --git a/include/state.h b/include/state.h
index 63164f9..f1882ae 100644
--- a/include/state.h
+++ b/include/state.h
@@ -23,4 +23,6 @@ int state_load(struct state *state);
 int state_save(struct state *state);
 void state_info(void);
 
+int state_read_mac(struct state *state, const char *name, u8 *buf);
+
 #endif /* __STATE_H */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
