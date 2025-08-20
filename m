Delivery-date: Wed, 20 Aug 2025 16:05:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojRh-002dfX-0a
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:05:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojRf-00016t-U2
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:05:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xzc3WuafyllnDYFsszmotdxh3hbmi0XdIJqb4v6MBx4=; b=HRwvLxrrqLmp3OiUOg29Q77/33
	zlpJs48sSXqHfWpj9iFdkg9Fd5qwqo3OBlZlMpzFBnXbbibsVRLzCTcdhvbY3QR/wM1FFGeKa8U07
	+QbSgb8f4Zz9ILopLWWfKqEMDLiHfmdMk8dhVRCTBtQgL1SiKk5S77Oucs8/Tj5FdIO6YW1BctuXB
	+nMqO/sdiV7g2e32eHdz1GTaowHrRK/byN3GKFt6B7qw7cJ1p3X8X/nKC38coafGXFGlWDI0YmNes
	/Iu01oZw/DGuE/NtGLgC4fj/V2am4wdO0dTr2grCCIslHf7OIkjUWynGNlmqgT/lJ5KnsO9c/7kHL
	cSWtmHDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojR3-0000000DvtQ-38EO;
	Wed, 20 Aug 2025 14:05:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoihM-0000000DjqM-1UKR
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-0000fs-TN; Wed, 20 Aug 2025 15:17:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-001Fp8-1r;
	Wed, 20 Aug 2025 15:17:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1U;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:17:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-5-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=2472;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ZbRzzX9ksgBIxWZFUrOSFYLPOYnHCzNIsfQOSEzggi4=;
 b=T2Cefseeo9uK36nvcuC0SKCFxtx47BceyZpCnZDiUkweYWPAVGlzmS8XnyTYWFYzFQvcJWMM1
 VjukRb1aMfoCiacfLxsGxkzTvh6CT9PibSxm/FuMHzFChQim6IFtImK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_061752_402309_3E61490C 
X-CRM114-Status: GOOD (  15.00  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH 05/24] kbuild: allow security config use without source
 tree modification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

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
index a2e5697b09fe219739bf2c4de45db8d54e09fc32..6027b5c37c82a99d1e9518edb790e9934378afab 100644
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
index 4c71774bbbc98f9de9cf5463e5ef431de60be6ac..7629afc432269e70d5fa7403fef3bad28f00135a 100644
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



