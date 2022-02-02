Delivery-date: Wed, 02 Feb 2022 12:21:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFDhF-003eBV-P8
	for lore@lore.pengutronix.de; Wed, 02 Feb 2022 12:21:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFDhE-0004dI-C6
	for lore@pengutronix.de; Wed, 02 Feb 2022 12:21:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I87WCNocVeY89ZYJ53Ruu/g05jxQci7/ZlgMAIg+Iwg=; b=esbVEkkcM5XSxC
	4WlV3iSjnIM3s1dbLf1aebuFbQvMU956DzFc3cTxETsdidYV456wbNXBqRfURxIGvdcJzLe+uoh2Y
	FZ/b41nuc6bRQ37NwmNX1mzPb1k1ebOnNNLJKsrY4K24YRKeY3MIrjFgheaUhLtP1M5E2SDyY9jzI
	Yv6mImeeap1LJqTCHkYePGIP61ArqU4tsmSW4Iq5NYFeMye1Wj2wLWSgnsDkVHg86c8NjXcGAEmMv
	92OkCsixbABeNeD2JtPQ6SM0tkXByygXhDLhoXaKTMba71cMyOk1rL8xTcRAKqhtz1LVPOYWgL1KN
	rmdA2nhD5vs4+zu1haWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFDfo-00F2bs-Hh; Wed, 02 Feb 2022 11:19:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFDfj-00F2bU-JA
 for barebox@lists.infradead.org; Wed, 02 Feb 2022 11:19:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nFDfh-0004DU-Sk; Wed, 02 Feb 2022 12:19:33 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nFDfh-0059Jx-Dy; Wed, 02 Feb 2022 12:19:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Feb 2022 12:19:32 +0100
Message-Id: <20220202111932.1227416-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_031935_678119_A96E0469 
X-CRM114-Status: GOOD (  14.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] state: add deep probe aware helpers to get state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

state_by_name itself can't be made deep probe aware as it doesn't have
enough information on what to probe. Board code calling it must instead
itself ensure that the state has been proved (either via initcall
ordering or by calling e.g. of_ensure_probed_by_alias). For
state_by_node we can do it better: We can ensure probe of the supplied
device node. For most purposes, users just want to probe the default
state. This can now be done with state_by_alias("state").

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/state.c | 20 +++++++++++++++++++-
 include/state.h      | 12 +++++++++---
 2 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 469ee62d4012..8594c219eee8 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -704,10 +704,12 @@ struct state *state_by_name(const char *name)
  *
  * @node	The of node of the state instance
  */
-struct state *state_by_node(const struct device_node *node)
+struct state *state_by_node(struct device_node *node)
 {
 	struct state *state;
 
+	of_device_ensure_probed(node);
+
 	list_for_each_entry(state, &state_list, list) {
 		if (!strcmp(state->of_path, node->full_name))
 			return state;
@@ -716,6 +718,22 @@ struct state *state_by_node(const struct device_node *node)
 	return NULL;
 }
 
+/*
+ * state_by_alias - find a state instance by alias
+ *
+ * @name	The DT alias of the state instance
+ */
+struct state *state_by_alias(const char *alias)
+{
+	struct device_node *node;
+
+	node = of_find_node_by_alias(NULL, alias);
+	if (!node)
+		return NULL;
+
+	return state_by_node(node);
+}
+
 int state_read_mac(struct state *state, const char *name, u8 *buf)
 {
 	struct state_variable *svar;
diff --git a/include/state.h b/include/state.h
index be1b592576c1..bffcd5a9007f 100644
--- a/include/state.h
+++ b/include/state.h
@@ -12,7 +12,8 @@ struct state *state_new_from_node(struct device_node *node, bool readonly);
 void state_release(struct state *state);
 
 struct state *state_by_name(const char *name);
-struct state *state_by_node(const struct device_node *node);
+struct state *state_by_node(struct device_node *node);
+struct state *state_by_alias(const char *alias);
 
 int state_load_no_auth(struct state *state);
 int state_load(struct state *state);
@@ -34,10 +35,15 @@ static inline struct state *state_by_name(const char *name)
 	return NULL;
 }
 
-static inline struct state *state_by_node(const struct device_node *node)
+static inline struct state *state_by_node(struct device_node *node)
 {
 	return NULL;
-};
+}
+
+static inline struct state *state_by_alias(const char *alias)
+{
+	return NULL;
+}
 
 static inline int state_load(struct state *state)
 {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

