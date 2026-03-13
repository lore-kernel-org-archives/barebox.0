Delivery-date: Fri, 13 Mar 2026 14:34:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12f1-000DRO-08
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:39 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ei-0000XZ-FX
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kb11rl0KkOwsOig0ZW03duLTsP8rjy9I6R/r8rDm+Fc=; b=SQQ/lWIWGCklcdPGqlfbpEjPM0
	/NJlNfvOeKyz451jLwFKFeeRaXdFIU4PljE2KhCu2UOj2B7YEEQ5iDQ1wUxYUDDrFDNqOmMsqhyrb
	XFPnBbWiZQDV66v1HgEZlbUbZVO3n9kvLrsaR37goDFAwR62RaanZep+ndjdb9tmtBmEhmBo9mQMP
	zrYZNbP0MuHnb9ZF07XMY0tjvm7CEDnkA6UuRIg/vNANqhxgCHTYFuePmgisXSqjWfxEKnXAIbdAw
	vjKq0UEwZfWlbO5itnP2C7WqK4iwadFRJl1vX7IvRoWXT8QQJC0Y7Ia66QoMP9245dG8AA0fWYXyg
	8xBPQAWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dS-00000000G4O-3MH4;
	Fri, 13 Mar 2026 13:33:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dA-00000000FZU-0fB7
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Kb11rl0KkOwsOig0ZW03duLTsP8rjy9I6R/r8rDm+Fc=; b=R55JJkc4CPD8x/9VeCLpstmGbv
	yAWqqSoiV2j7PjCygZOt7gDwlJcBOCY8I+RA1ZnEplkgzl3N17Sd9QaKjbxzdP/3sMnogLPuBt7ei
	Cpf4J+ZGczcKEFL7QBWyYDiMy19t1PJqwRE2v3FZo7xFcv3BHvohkhPaq90a2y9KWTXCdJ3ds+4mH
	ezUbLizscqGcHGwT3sKTuELpb7m0m2iXf76FkZ4bOB/JcZvt+CDNCjEfLfrHSh9K6MZfkXQ36GTw/
	1cTcrI0xnZT8ohkD41FFqBxgatM9XKtCZWEUaBiXeG7QzHNtZwhyyaFjPSmW3Egn0G2bGq2bNNyRY
	RWU5b0Qw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-0000000D9w7-2zLV
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0006qo-5x; Fri, 13 Mar 2026 14:32:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0005TY-37;
	Fri, 13 Mar 2026 14:32:32 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-0btu;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 13 Mar 2026 14:25:04 +0100
Message-ID: <20260313132631.2257573-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_832962_BFF3284D 
X-CRM114-Status: UNSURE (   7.30  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 20/58] kbuild: fold rmdirs into rmfiles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Linux doesn't differentiate between the two either and by adopting that,
we can have intermediary .tmp_*/ directories automatically deleted when
cleaning.

(cherry picked from commit 9914f8fdddac8ecf7fd8f3e8ab071a5fb86fb160)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260116160654.3981425-2-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/Makefile b/Makefile
index d72a4551208a..8606a6576194 100644
--- a/Makefile
+++ b/Makefile
@@ -1301,8 +1301,7 @@ MRPROPER_FILES += .config .config.old .version .old_version \
 
 # clean - Delete most, but leave enough to build external modules
 #
-clean: rm-dirs  := $(CLEAN_DIRS)
-clean: rm-files := $(CLEAN_FILES)
+clean: rm-files := $(CLEAN_FILES) $(CLEAN_DIRS)
 clean-dirs      := $(addprefix _clean_,$(srctree) $(barebox-alldirs))
 
 PHONY += $(clean-dirs) clean archclean
@@ -1311,7 +1310,6 @@ $(clean-dirs):
 	$(Q)$(MAKE) $(clean)=$(patsubst _clean_%,%,$@)
 
 clean: archclean $(clean-dirs)
-	$(call cmd,rmdirs)
 	$(call cmd,rmfiles)
 	@find . $(RCS_FIND_IGNORE) \
 		\( -name '*.[oas]' -o -name '*.ko' -o -name '.*.cmd' \
@@ -1323,8 +1321,7 @@ clean: archclean $(clean-dirs)
 
 # mrproper - Delete all generated files, including .config
 #
-mrproper: rm-dirs  := $(wildcard $(MRPROPER_DIRS))
-mrproper: rm-files := $(wildcard $(MRPROPER_FILES))
+mrproper: rm-files := $(wildcard $(MRPROPER_DIRS)) $(wildcard $(MRPROPER_FILES))
 mrproper-dirs      := $(addprefix _mrproper_,scripts)
 
 PHONY += $(mrproper-dirs) mrproper
@@ -1332,7 +1329,6 @@ $(mrproper-dirs):
 	$(Q)$(MAKE) $(clean)=$(patsubst _mrproper_%,%,$@)
 
 mrproper: clean $(mrproper-dirs)
-	$(call cmd,rmdirs)
 	$(call cmd,rmfiles)
 
 # distclean
@@ -1493,11 +1489,8 @@ target-dir = $(dir $@)
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



