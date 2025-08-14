Delivery-date: Thu, 14 Aug 2025 15:51:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN3-000Wcu-1f
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:51:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN1-0005Bs-SO
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:51:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mmg7DQ1m8f1P0ay4URgi59ka180hK3IEacRkNRwV+WU=; b=31jpmU5nI/5M1ojuxvAEvdHGfB
	SoMdq7Lm3heE5IZkLpQD60LjDBMLUkQ0OLR0PReY+P833mg/RBZwmERVOa4g3YKs5FfSwglIg0TXt
	O8zVRQUZWle+O4uir1f/tylXGLelxIF35VKotxvOKgkHS8c+Jxu4XIe1J0z1qVotxujG+3C5ph44N
	baB0xXnNHRao2oyFXo5BD/yqiFLSFtFN5psjKaMq2qgXGfqNHArzNHQ4r2zKgXoE4/QWAtxgHvUZR
	h08QUV2Pdy3fRUbVBWsicZyAe5ynaUEz7nG9CcD/qZaYNzEZZh4fnm8YP+45f0XL6whvxBzV4fA4o
	S0m/IkIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYMZ-0000000H6k8-3qMg;
	Thu, 14 Aug 2025 13:51:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXfm-0000000GvU9-19UY
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:07:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfd-0006HK-23; Thu, 14 Aug 2025 15:07:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-000GGw-14;
	Thu, 14 Aug 2025 15:07:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-0l;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:50 +0200
Message-Id: <20250814130702.4039241-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_060714_313426_F8D1D606 
X-CRM114-Status: GOOD (  14.45  )
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
Subject: [PATCH RFC 05/17] kbuild: allow security config use without source tree modification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A key aspect of security policies is the enforcement of a policy to be
complete with no implicit defaults. To make this easier to use, the
security_*config targets directly manipulate the specified KPOLICY or
all known policies if none were specified.

This is at odds with build systems that assume an immutable source tree
and prefer that changes to files within purview of the build system are
only done explicitly by the user. For that purpose, add an optional
KPOLICY_TMPUPDATE, which works as follows:

  - When set, only the tmp file in the build tree is updated, but not the
    original
  - The tmp file is always what's used in the build
  - Once unset, the tmp file will always be overwritten by the original
    on next build

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                | 4 +++-
 scripts/Makefile.policy | 4 ++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index a2e5697b09fe..6027b5c37c82 100644
--- a/Makefile
+++ b/Makefile
@@ -100,7 +100,7 @@ ifeq ($(silence),s)
 quiet=silent_
 endif
 
-export quiet Q KBUILD_VERBOSE
+export quiet Q KBUILD_VERBOSE KPOLICY_TMPUPDATE
 
 # Kbuild will save output files in the current working directory.
 # This does not need to match to the root of the kernel source tree.
@@ -1213,8 +1213,10 @@ security_checkconfigs: collect-policies $(KPOLICY.tmp) FORCE
 security_%config: collect-policies $(KPOLICY.tmp) FORCE
 	+$(Q)$(foreach p, $(KPOLICY), $(call loop_cmd,sconfig, \
 		$(@:security_%=%),$p.tmp))
+ifeq ($(KPOLICY_TMPUPDATE),)
 	+$(Q)$(foreach p, $(KPOLICY), \
 		cp 2>/dev/null $p.tmp $(call resolve-srctree,$p) || true;)
+endif
 
 quiet_cmd_sconfigpost = SCONFPP $@
       cmd_sconfigpost = $(SCONFIGPOST) $2 -D $(depfile) -o $@ $<
diff --git a/scripts/Makefile.policy b/scripts/Makefile.policy
index 4c71774bbbc9..7629afc43226 100644
--- a/scripts/Makefile.policy
+++ b/scripts/Makefile.policy
@@ -23,7 +23,11 @@ endif
 # ---------------------------------------------------------------------------
 
 $(obj)/%.sconfig.tmp: $(src)/%.sconfig FORCE
+ifeq ($(KPOLICY_TMPUPDATE),)
 	$(call filechk,cat)
+else
+	$(call if_changed,shipped)
+endif
 
 quiet_cmd_sconfigpost_c = SCONFPP $@
       cmd_sconfigpost_c = $(SCONFIGPOST) -o $@ -D$(depfile) $(2)
-- 
2.39.5



