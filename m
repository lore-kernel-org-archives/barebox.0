Delivery-date: Fri, 14 Oct 2022 18:37:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgl-008i59-0D
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 18:37:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgi-0005Pu-EM
	for lore@pengutronix.de; Fri, 14 Oct 2022 18:37:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cAMHQZYt5z0IIhJwztIs3Fs5amkeRT5nKYXU3rBGxN4=; b=ETgP78XiCQgC3KhZ97zYrbdg88
	iurDa26aCzknI21LMHxL+vr51zd0+3gKltnDGaCYYctC9ZAo0vOzI+wtioNBpGhdJMBvefSZPmuc9
	Dk4yZBSnkFk9znFJThPL04xT83/gu8fx8QPQJH5Tgq0Lo2WAYq6MLU3YGJ8LolMY83V3/B4+izaCs
	UChLsJIC9OCTatrp18GtzZcctKj8cCfrYiggI9p5JGa5VWUkQHwBljXGrB/R+LywsV3h6Dhq4wjzb
	uAwzPDziXYCg+vz5aMebMvK47X7h4acgc/hn7kdKj1qbRekGM3TVkFJl+NHdwj1uni/Myp3z4zVFt
	PRvgLbIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNf5-00FNXR-Ia; Fri, 14 Oct 2022 16:35:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNev-00FNSk-2k
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 16:35:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNes-0004xb-9J
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNer-001WSV-HL
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:37 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNeq-00FzlY-Ex
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Oct 2022 18:35:30 +0200
Message-Id: <20221014163534.3812272-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221014163534.3812272-1-m.felsch@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_093541_154480_4209AC83 
X-CRM114-Status: GOOD (  12.56  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] state: cosmetic fix reverse christmas tree order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

No functional change, just apply the common code standards.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/state/state.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index d954f0d453..65e47524a3 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -41,11 +41,11 @@ static LIST_HEAD(state_list);
  */
 int state_save(struct state *state)
 {
-	void *buf;
-	ssize_t len;
-	int ret;
 	struct state_backend_storage_bucket *bucket;
 	struct state_backend_storage *storage;
+	ssize_t len;
+	void *buf;
+	int ret;
 
 	if (!state->dirty)
 		return 0;
@@ -212,13 +212,13 @@ static int state_convert_node_variable(struct state *state,
 				       const char *parent_name,
 				       enum state_convert conv)
 {
+	struct device_node *new_node = NULL;
 	const struct variable_type *vtype;
+	char *short_name, *name, *indexs;
+	unsigned int start_size[2];
 	struct device_node *child;
-	struct device_node *new_node = NULL;
 	struct state_variable *sv;
 	const char *type_name;
-	char *short_name, *name, *indexs;
-	unsigned int start_size[2];
 	int ret;
 
 	/* strip trailing @<ADDRESS> */
@@ -341,8 +341,8 @@ struct device_node *state_to_node(struct state *state,
 				  struct device_node *parent,
 				  enum state_convert conv)
 {
-	struct device_node *child;
 	struct device_node *root, *state_root;
+	struct device_node *child;
 	int ret;
 
 	state_root = of_find_node_by_path(state->of_path);
@@ -369,8 +369,8 @@ int state_from_node(struct state *state, struct device_node *node, bool create)
 {
 	struct device_node *child;
 	enum state_convert conv;
-	int ret;
 	uint32_t magic;
+	int ret;
 
 	ret = of_property_read_u32(node, "magic", &magic);
 	if (ret)
@@ -428,12 +428,12 @@ int state_from_node(struct state *state, struct device_node *node, bool create)
 
 static int of_state_fixup(struct device_node *root, void *ctx)
 {
-	struct state *state = ctx;
-	const char *compatible = "barebox,state";
 	struct device_node *new_node, *node, *parent, *backend_node, *aliases;
+	const char *compatible = "barebox,state";
+	struct state *state = ctx;
 	struct property *p;
-	int ret;
 	phandle phandle;
+	int ret;
 
 	node = of_find_node_by_path_from(root, state->of_path);
 	if (node) {
@@ -587,15 +587,15 @@ void state_release(struct state *state)
  */
 struct state *state_new_from_node(struct device_node *node, bool readonly)
 {
-	struct state *state;
-	int ret = 0;
-	const char *backend_type;
+	struct device_node *backend_node;
 	const char *storage_type = NULL;
-	const char *alias;
+	const char *backend_type;
+	struct state *state;
 	uint32_t stridesize;
-	struct device_node *backend_node;
+	const char *alias;
 	off_t offset = 0;
 	size_t size = 0;
+	int ret = 0;
 
 	alias = of_alias_get(node);
 	if (!alias) {
-- 
2.30.2



