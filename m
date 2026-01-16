Delivery-date: Fri, 16 Jan 2026 17:07:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMV-00215W-1s
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 17:07:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMT-0005be-Rq
	for lore@pengutronix.de; Fri, 16 Jan 2026 17:07:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RqDUu65Y2W2VESvst2YGbAORL49fGNVul6BqmWzv1MM=; b=nEdwuvr2UR4fFWXiPn47tmNwjH
	SMmpumEXzv6Ask1Wx1UlhAN1EdsC/1ixFMt23P+YpLoSJ52b2hdlIftfkYuMD2CzZNGshLw3e2njv
	qvCvo3Jur838BncRoSU+GcZygqGToSjr9JzcjwUVCYjGcSiD3TkF2XMbfFsekTb4ZmRszOkNIk/5s
	COJDprJyPlUnMETQO6r2+G7E5y3Yqcq8WjxXMj1vr2dr+bpZjgXGsFKhtDNgoTdP4JA/NKjUUfNOe
	UmZ9Qic2kjjJRnTC1+mcS/+3jN1i7jAuDe68BWg0/mYwxUQk11SbSp4HeKilsc0vJdQVSFcQeVhmD
	oh8K/Pmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLk-0000000EPtz-09NN;
	Fri, 16 Jan 2026 16:07:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLh-0000000EPsp-2nWk
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 16:06:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgmLf-0004sd-Vg; Fri, 16 Jan 2026 17:06:56 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 16 Jan 2026 17:06:24 +0100
Message-ID: <20260116160654.3981425-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116160654.3981425-1-a.fatoum@barebox.org>
References: <20260116160654.3981425-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080657_703617_684656E8 
X-CRM114-Status: UNSURE (   8.41  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/13] kbuild: fold rmdirs into rmfiles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux doesn't differentiate between the two either and by adopting that,
we can have intermediary .tmp_*/ directories automatically deleted when
cleaning.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/Makefile b/Makefile
index 3b31cecc22c4..e3127ed2cb37 100644
--- a/Makefile
+++ b/Makefile
@@ -1393,8 +1393,7 @@ MRPROPER_FILES += .config .config.old .security_config .version .old_version \
 
 # clean - Delete most, but leave enough to build external modules
 #
-clean: rm-dirs  := $(CLEAN_DIRS)
-clean: rm-files := $(CLEAN_FILES)
+clean: rm-files := $(CLEAN_FILES) $(CLEAN_DIRS)
 clean-dirs      := $(addprefix _clean_,$(srctree) $(barebox-alldirs))
 
 PHONY += $(clean-dirs) clean archclean
@@ -1403,7 +1402,6 @@ $(clean-dirs):
 	$(Q)$(MAKE) $(clean)=$(patsubst _clean_%,%,$@)
 
 clean: archclean $(clean-dirs)
-	$(call cmd,rmdirs)
 	$(call cmd,rmfiles)
 	@find . $(RCS_FIND_IGNORE) \
 		\( -name '*.[oas]' -o -name '*.ko' -o -name '.*.cmd' \
@@ -1416,8 +1414,7 @@ clean: archclean $(clean-dirs)
 
 # mrproper - Delete all generated files, including .config
 #
-mrproper: rm-dirs  := $(wildcard $(MRPROPER_DIRS))
-mrproper: rm-files := $(wildcard $(MRPROPER_FILES))
+mrproper: rm-files := $(wildcard $(MRPROPER_DIRS)) $(wildcard $(MRPROPER_FILES))
 mrproper-dirs      := $(addprefix _mrproper_,scripts)
 
 PHONY += $(mrproper-dirs) mrproper
@@ -1425,7 +1422,6 @@ $(mrproper-dirs):
 	$(Q)$(MAKE) $(clean)=$(patsubst _mrproper_%,%,$@)
 
 mrproper: clean $(mrproper-dirs)
-	$(call cmd,rmdirs)
 	$(call cmd,rmfiles)
 
 # distclean
@@ -1590,11 +1586,8 @@ target-dir = $(dir $@)
 # FIXME Should go into a make.lib or something
 # ===========================================================================
 
-quiet_cmd_rmdirs = $(if $(wildcard $(rm-dirs)),CLEAN   $(wildcard $(rm-dirs)))
-      cmd_rmdirs = rm -rf $(rm-dirs)
-
 quiet_cmd_rmfiles = $(if $(wildcard $(rm-files)),CLEAN   $(wildcard $(rm-files)))
-      cmd_rmfiles = rm -f $(rm-files)
+      cmd_rmfiles = rm -rf $(rm-files)
 
 
 a_flags = -Wp,-MD,$(depfile) $(KBUILD_AFLAGS) $(AFLAGS_KERNEL) \
-- 
2.47.3



