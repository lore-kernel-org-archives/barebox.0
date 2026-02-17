Delivery-date: Tue, 17 Feb 2026 14:58:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsLaS-002hcM-2D
	for lore@lore.pengutronix.de;
	Tue, 17 Feb 2026 14:58:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsLaT-0000Md-0j
	for lore@pengutronix.de; Tue, 17 Feb 2026 14:58:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BH3RE8+hOgObQd2UcJ3msDONd1xNSq4TMpEp/BIutak=; b=g3QaB0pRsBaRLjXfQgp59nnJL9
	vn1Bj+Rr0myw5DQprA9sHnTCmQGBLX1oej07d+zxfby5Yo6tdc/PcymeZSV2V1N0geFg7sdGTicG4
	lA64KEuPRoCACofRa6wY7mT7srSgiZi7vbHqXNykci9FUmq1IDUNwU1CkquwHCI7vBvxOnwhaoic2
	XVd/eMsLXwhshyR7OdPvCy7GvuPmOAHeQohIHZP2tjJQmU3D/ZRbA6lZfWexRFSAQL+Y4x1nfZql6
	IJgMoVHgmK55qi4dhpZapR4CILdAp5ABHlb/qYy/Af8TZmnNxY00D++9ZZBdH8fOakbSI9U8YjNzN
	u5w0Dhdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsLZK-00000008NKt-1un1;
	Tue, 17 Feb 2026 13:56:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsLZH-00000008NIN-43Ng
	for barebox@lists.infradead.org;
	Tue, 17 Feb 2026 13:56:49 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vsLZF-00006A-RP; Tue, 17 Feb 2026 14:56:45 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Feb 2026 14:56:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-scripts-compile-commands-hack-v1-1-85afb2af566b@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAJhzlGkC/x3MQQqEMAxA0atI1gZqKDp4FXFRaqphtJZGRBDvP
 h1Xn7f5NyhnYYW+uiHzKSp7LGjqCvzi4swoUzGQodZQ06H6LOlQ9PuWZOV/NxcnxcX5L3YtuU+
 w1oRAUB4pc5Dr/Q/j8/wAKjMZDm8AAAA=
X-Change-ID: 20260217-scripts-compile-commands-hack-762a8f440ff2
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1509; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=luP+Qtak59mo/X9sdNyxxBKq0sdp018xAz1cDyShtic=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsicUjzzuuJEs5N7wt50PH8hafuUq1DM74qOq73lWpY6n
 aVVb6RbOkpZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABPpSGL4n/moalp2fKv6Tocf
 1tm3clX0z37trE6ob7z1eaHNyaOvmhj+GaW+muXte25B9JyeypubYtsXhDwp41g942tTfuIthuJ
 ydgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_055648_006653_1B511C19 
X-CRM114-Status: UNSURE (   9.48  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Makefile: include scripts/ in compile_commands.json
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Although in many cases, C files in scripts/ would, because they rely on
the host toolchain and no unusual compiler flags, work fine in clangd
without a compile commands database, the (typically cross) compile
commands of the first entry in compile_commands.json are applied as
defaults once generated via `make compile_commands.json`.

As valid .cmd files are already present in scripts/ and
gen_compile_commands.py supports reading all cmd files in a subtree
recursively, simply add scripts to the gen_compile_commands.py
invocation. All enabled code in scripts/ is now properly covered by
compile_commands.json

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 4296c97ef0..d76e375719 100644
--- a/Makefile
+++ b/Makefile
@@ -1461,7 +1461,7 @@ quiet_cmd_gen_compile_commands = GEN     $@
       cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
 
 compile_commands.json: scripts/clang-tools/gen_compile_commands.py \
-	$(BAREBOX_OBJS) $(if $(CONFIG_PBL_IMAGE),$(BAREBOX_PBL_OBJS),) FORCE
+	$(BAREBOX_OBJS) $(if $(CONFIG_PBL_IMAGE),$(BAREBOX_PBL_OBJS),) scripts/ FORCE
 	$(call if_changed,gen_compile_commands)
 
 PHONY += compile_commands.json

---
base-commit: 74393178faf08f8102c7c370ac310c29112e1137
change-id: 20260217-scripts-compile-commands-hack-762a8f440ff2

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



