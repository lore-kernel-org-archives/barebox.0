Delivery-date: Thu, 08 Jun 2023 15:42:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7FuG-00FoOL-Ix
	for lore@lore.pengutronix.de; Thu, 08 Jun 2023 15:42:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7FuD-0002If-JX
	for lore@pengutronix.de; Thu, 08 Jun 2023 15:42:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8mXM94DovGna2bpy/NPoZqdRK6ybjHvzi64wUvGPjXc=; b=d7C1Ay1iGaxJxDXK623mMQAvPy
	sTPKee6h8U0/1KQYE8s67/MAVZEK2M3dQzko9rQpyDSfYiRrNVDhVzCHevsROPQ1yDqZmt/eePzoH
	hVhVm4SWbFqdYpHgNddEt13L3DQp3BMPZUf+LOzsRuB9uJ+RA/2wZIixvDTJV4cZDlowYKt1SuXYd
	Uzo28RjBs+Py5qQ9C+JmesrMot3OZGAeuXYr0gYg2/nzNc88pYkdiXBpGVoEqJ3JD9MujPxSI+5ky
	WuoWXZ9kqOWSqwq3LleT2GOH0IEkbhM+hi6gsMh7HLgcr4qwdOAijPi2mjL771QPeOvGBZg8hVsWr
	HeQWboFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Ft8-009UtT-2A;
	Thu, 08 Jun 2023 13:41:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Ft5-009Us8-2M
	for barebox@lists.infradead.org;
	Thu, 08 Jun 2023 13:41:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Ft4-00027x-Gw; Thu, 08 Jun 2023 15:41:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Ft3-005z9Y-SB; Thu, 08 Jun 2023 15:41:13 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Ft3-0095ob-1Q; Thu, 08 Jun 2023 15:41:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  8 Jun 2023 15:40:44 +0200
Message-Id: <20230608134040.2123869-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230608134040.2123869-1-a.fatoum@pengutronix.de>
References: <20230608134040.2123869-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_064115_770314_266C5B21 
X-CRM114-Status: GOOD (  16.52  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] commands: of_diff: support applying fixups on arbitrary device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_diff - + is quite useful to find what fixups barebox would apply to
its own device tree. But for some cases, like barebox-state or OP-TEE
reservations, the nodes that would be fixed up into the kernel device
tree already exist within the barebox device tree and wouldn't be shown
by of_diff - +. To make them visible, let's redefine +:

  - Previously, it always meant the fixed up barebox DT
  - Now, it means the other DT with fixups applied

That way, of_diff - + continues to work, but kernel DTs can now be
diffed against their fixed up version by doing:

  of_diff /mnt/tftp/afa-oftree-myboard +

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/of_diff.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/commands/of_diff.c b/commands/of_diff.c
index ff3d46c7f530..8b19c093ddab 100644
--- a/commands/of_diff.c
+++ b/commands/of_diff.c
@@ -17,15 +17,10 @@ static struct device_node *get_tree(const char *filename, struct device_node *ro
 {
 	struct device_node *node;
 
-	if (!root)
-		root = ERR_PTR(-ENOENT);
-
 	if (!strcmp(filename, "-")) {
-		node = of_dup(root);
+		node = of_dup(root) ?: ERR_PTR(-ENOENT);
 	} else if (!strcmp(filename, "+")) {
-		node = of_dup(root);
-		if (!IS_ERR(node))
-			of_fix_tree(node);
+		return NULL;
 	} else {
 		node = of_read_file(filename);
 	}
@@ -36,6 +31,17 @@ static struct device_node *get_tree(const char *filename, struct device_node *ro
 	return node;
 }
 
+static struct device_node *get_tree_fixed(const struct device_node *root)
+{
+	struct device_node *node;
+
+	node = of_dup(root);
+	if (!IS_ERR(node))
+		of_fix_tree(node);
+
+	return node;
+}
+
 static int do_of_diff(int argc, char *argv[])
 {
 	int ret = COMMAND_ERROR;
@@ -48,6 +54,14 @@ static int do_of_diff(int argc, char *argv[])
 	a = get_tree(argv[1], root);
 	b = get_tree(argv[2], root);
 
+	if (!a && !b)
+		return COMMAND_ERROR_USAGE;
+
+	if (!a)
+		a = get_tree_fixed(b);
+	if (!b)
+		b = get_tree_fixed(a);
+
 	if (!IS_ERR(a) && !IS_ERR(b))
 		ret = of_diff(a, b, 0) ? COMMAND_ERROR : COMMAND_SUCCESS;
 
@@ -63,7 +77,7 @@ BAREBOX_CMD_HELP_START(of_diff)
 BAREBOX_CMD_HELP_TEXT("This command prints a diff between two given device trees.")
 BAREBOX_CMD_HELP_TEXT("The device trees are given as dtb files or:")
 BAREBOX_CMD_HELP_TEXT("'-' to compare against the barebox live tree, or")
-BAREBOX_CMD_HELP_TEXT("'+' to compare against the fixed barebox live tree")
+BAREBOX_CMD_HELP_TEXT("'+' to compare against the other device tree after fixups")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_diff)
-- 
2.39.2



