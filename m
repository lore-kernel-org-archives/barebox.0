Delivery-date: Mon, 25 Aug 2025 17:00:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqYgb-004OXt-2v
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 17:00:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqYga-0002vr-J4
	for lore@pengutronix.de; Mon, 25 Aug 2025 17:00:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/xn1v56vB4QqmjpTOkFOK07SvWmVcRdeh2zp/7iik3g=; b=xW5Lufy0nfOag5
	nWhXESQhJ5q/b57pgTGzXjqYw89kLOhvGEbyZkvlxfd0xl8OvCJkwN27vERoDWzsy8OsqeInEJoJh
	xboyN333nObA2hOOWimmvQWnrJZ52WSItW0PS0rZ71eGR+Yfn5UDbK295Bwg1eZAPDXbI84MgFrJ7
	6FpXh/fP0M/J8TV93J2q5LTEvEFxGTSlDDwTqee1KF0bLxU3cGVGpgn6yzmhcUhs2Xfjh6SqwjDyv
	JHpLxPkrAujfKfTZdKmxOVGJzfgStjpIQa+kkdEnwOU5k1wxd7lY+kGcGxwpf723TP9RwPgU1xa1y
	JoOFeoKmuGONpNF8DInA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqYfl-00000008MQj-0YWy;
	Mon, 25 Aug 2025 14:59:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqX5O-000000083tP-0lNN
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 13:18:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqX5M-0001eN-Bf; Mon, 25 Aug 2025 15:18:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqX5M-0024bi-0Y;
	Mon, 25 Aug 2025 15:18:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqX5M-00000008bgy-06bt;
	Mon, 25 Aug 2025 15:18:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 25 Aug 2025 15:18:06 +0200
Message-ID: <20250825131806.2050398-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_061810_220741_7B04D80B 
X-CRM114-Status: GOOD (  11.05  )
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
Cc: Ahmad Fatoum <afa@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kbuild: move PBL_CODE_SIZE_ out of rule_pblb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Before Commit 21613ae35f ("kbuild: images/Makefile: fix broken if_changed usage")
setting of PBL_CODE_SIZE_$*, PBL_MEMORY_SIZE_$* and PBL_IMAGE_SIZE_$*
were part of the

$(obj)/%.pblb: $(obj)/%.pbl FORCE

rule which was always executed due to the FORCE. Beginning with this
commit setting of these variables are part of rule_pblb which is only
executed when the pblb file is (re-)generated. In case the pblb is still
up to date this results in the variables being unset which then fails
in later stages.

Move setting of the variables back to the pblb rule to make sure they
are always set.

Reproducer:

make multi_v8_defconfig && make && make

The second make will fail while calling the imx-image tool which gets
the -p option without the actual size as optarg.

Fixes: 21613ae35f ("kbuild: images/Makefile: fix broken if_changed usage")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 03c7fdc024..7406aee817 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -99,13 +99,6 @@ define rule_pblb
 	$(call cmd,check_missing_fw,$@,$<)
 	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 
-	$(eval PBL_CODE_SIZE_$* = \
-		$(shell $(srctree)/scripts/extract_symbol_offset pbl_code_size $^))
-	$(eval PBL_MEMORY_SIZE_$*= \
-		$(shell $(srctree)/scripts/extract_symbol_offset pbl_memory_size $^))
-	$(eval PBL_IMAGE_SIZE_$*= \
-		$(shell $(srctree)/scripts/extract_symbol_offset pbl_image_size $^))
-
 	$(if $(MAX_PBL_CODE_SIZE_$*), \
 		$(call cmd,check_size,$(PBL_CODE_SIZE_$*),$(MAX_PBL_CODE_SIZE_$*)) \
 	)
@@ -120,6 +113,13 @@ define rule_pblb
 endef
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
+	$(eval PBL_CODE_SIZE_$* = \
+		$(shell $(srctree)/scripts/extract_symbol_offset pbl_code_size $^))
+	$(eval PBL_MEMORY_SIZE_$*= \
+		$(shell $(srctree)/scripts/extract_symbol_offset pbl_memory_size $^))
+	$(eval PBL_IMAGE_SIZE_$*= \
+		$(shell $(srctree)/scripts/extract_symbol_offset pbl_image_size $^))
+
 	$(call if_changed_rule,pblb)
 
 $(obj)/%.s: $(obj)/% FORCE
-- 
2.47.2



