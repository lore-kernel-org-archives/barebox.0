Delivery-date: Wed, 20 May 2026 15:50:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPhJh-001sjf-0w
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 15:50:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPhJg-0005nW-LX
	for lore@pengutronix.de; Wed, 20 May 2026 15:50:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nP4RykM2yYQ1XfZr2NFaFXfZpT2m6RKHZFduNTAtSck=; b=fQsfgKvfhE3rgkFdUJGvlLHd8t
	JjbxNJJx8q5Dww+teUA8MAm9ajW+wJfM2m7B6AkwhN7YWX0TvJzbJ3sxfguvslUiN9z5Sc0HdFDPT
	fPVqoXvw6O7mjlr+jSYc5E0qohU8B5g3IsKRPm4DPmvouFYdJr9vW7f34qHkL6B5aViJ5WlhPLHTH
	owGHjVIAcdqLNG1OIHcyecd6Fquhjw8eBLT48EszceKWfs7Cuv8udmJAi8nJHHlEOa9iDLbkRh1+F
	n9qnvqHpbj1KJwcCRuXPurmu20GF6skHRhBKQVTJw+3g+N+0DMQTtMb2fJO1bsF+X6+Tepxn75y4R
	Fski1Ajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPhIf-00000004jW4-1nlA;
	Wed, 20 May 2026 13:49:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPhId-00000004jVU-2T9l
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 13:49:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPhIb-0005aZ-Qe; Wed, 20 May 2026 15:49:25 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPhIb-000wQu-0c;
	Wed, 20 May 2026 15:49:25 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPhIb-0000000DZCU-2mU3;
	Wed, 20 May 2026 15:49:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 20 May 2026 15:49:06 +0200
Message-ID: <20260520134923.3233562-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_064927_628358_3034B819 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] of: base: handle of_set_root_node(NULL) correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_set_root_node(NULL) used to be valid and the if clause at the start
of the function explicitly allowed of it.

This was broken by the unconditional use of of_property_write_bool, so
guard that behind the existence of a root node.

Fixes: b1ced2c3caa9 ("state: suppress state overwrite warning for barebox DT")
Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index d4fbd2367baf..57b64bc0b96c 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2123,15 +2123,17 @@ int of_set_root_node(struct device_node *node)
 	if (node && root_node)
 		return -EBUSY;
 
 	root_node = node;
 
 	of_chosen = of_find_node_by_path("/chosen");
 	of_property_read_string(root_node, "model", &of_model);
-	of_property_write_bool(root_node, "$barebox,root-node", true);
+
+	if (root_node)
+		of_property_write_bool(root_node, "$barebox,root-node", true);
 
 	if (of_model)
 		barebox_set_model(of_model);
 
 	of_alias_scan();
 
 	return 0;
-- 
2.47.3



