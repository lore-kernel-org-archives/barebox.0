Delivery-date: Wed, 17 Sep 2025 15:54:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbx-0045n8-0y
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 15:54:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbw-0006ik-8i
	for lore@pengutronix.de; Wed, 17 Sep 2025 15:54:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FzweyN7kMxOEe4klda4DXuq829dwNLoG6gGnQyHAR/8=; b=O4Aog2zghk4ErtRJPpELYZzYop
	gZl7REF8FtGA+rhdX9l3TB5DO6svNQAtICS3HtXf88r4r/389Hkwvx3SP+Q3iWyGSUQ5YpK8K7Mjv
	qmE/NcUBAgfYbFksJf4MG4CSF9LhB3aMh0wwyHn3yEUPzv9OuLz9Q+BBc9z2CEwSsOvUtO1KUsqjV
	MZSaQIblUO1hFL5PWlrZ47u9V+Z43+Psvx5idg8wGNTaaGrm792iSDzIub3Jv32Li4w+wva2JiqpF
	QFlEbC9+llN4i0I4a1iIjrCdprsUAB3a1Q/myumCs4hFaazb3UHMD+EiC/UVC54KWG3OKh9DJBWrM
	OszN49ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbU-0000000BsyW-3qfy;
	Wed, 17 Sep 2025 13:53:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbS-0000000Bsuu-3kRN
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 13:53:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbB-0006AY-CP; Wed, 17 Sep 2025 15:53:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-001luQ-2f;
	Wed, 17 Sep 2025 15:53:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-2vE9;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-5-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=2472;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=c7SDkdUFMMYE5lhr9mclaOzkAGDq4+nEio1kfwdRSXs=;
 b=q8OGM8fjUmR1zT1eY0+vgIBpSCn6ARLd8QfcUZLHAnaVh/AimeJkIpxwXUmmIHGXQ/xHgJy3r
 VlDTw4Xw9EqAAQS4fhHKoEqJk50A28Yfjs/dwoFAsiZSw6ai9K5/flR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_065347_024560_B90E9EB7 
X-CRM114-Status: GOOD (  14.90  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/24] kbuild: allow security config use without source
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
index 5f1e6ab21ce0ca8f612e129aacffd45123421498..760ac28e8ff8989d18ed517aa07524209014884d 100644
--- a/Makefile
+++ b/Makefile
@@ -100,7 +100,7 @@ ifeq ($(silence),s)
 quiet=silent_
 endif
 
-export quiet Q KBUILD_VERBOSE
+export quiet Q KBUILD_VERBOSE KPOLICY_TMPUPDATE
 
 # Kbuild will save output files in the current working directory.
 # This does not need to match to the root of the kernel source tree.
@@ -1215,8 +1215,10 @@ security_checkconfigs: collect-policies $(KPOLICY.tmp) FORCE
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
index a84e85e73d68f2740c3b02899200a7285e6f58d1..e517feb56ef09464310b014014aa95e012b0b376 100644
--- a/scripts/Makefile.policy
+++ b/scripts/Makefile.policy
@@ -18,7 +18,11 @@ endif
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
2.47.3



