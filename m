Delivery-date: Thu, 04 Sep 2025 10:56:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5lw-007yfl-2r
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 10:56:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5lv-000436-JD
	for lore@pengutronix.de; Thu, 04 Sep 2025 10:56:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jymv9sTmUakFoqC5W8C4+VHqyKJX1tZWrEMgTHwIVDI=; b=kzPTTd6oeR5Mci4jSEM/TdZeS0
	Zo0vbouzWdXIsezGYr3mwR13YZdJw48j6DFIbqgiLpBjMJXd7gF1BpHwZNNcq2YJjkGaiI+ht8UWv
	kFtKqDnTuWXBsYzWxQUDcEf5q7+AOkUreeOLdl/av4+s/7SjrgAo4lEMgxKNlWrkhc0oGo9ZcjtjM
	hoW/UP9wNQYq5pe6HFublsgtR0+zLpCVWy68B9avxdIZwZD50qq0DDKs5BVRl+b/mmg1109vuFep4
	WlQBqQAgRCyEeEzY+dt5hof0i0Lv1tt9Kf6vJafow5wUmI9q/iaOV70WoZDKWxVyVfSzpaw+8eLWf
	WVBGsW9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5lS-0000000ANrM-3y8a;
	Thu, 04 Sep 2025 08:56:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu57a-0000000A9Ae-0jjq
	for barebox@bombadil.infradead.org;
	Thu, 04 Sep 2025 08:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=jymv9sTmUakFoqC5W8C4+VHqyKJX1tZWrEMgTHwIVDI=; b=G0OyeVWmbYLs2S9trM86Qzck4W
	h/phAtz+LVcH/TG9FDhbX8tOmmiIsA6JQQeL4epuuiMq13NzOFCX/ar1z1zsrtjq1EonTIWW37Bhk
	yh+5kgzHYznrvuDWW8N/z6ze0lEbX1BGHCRDXRY+nbZr04rGmSrRJWAnF0PUyAGWCtVEtxBJz/Qtw
	zKxJ92Z7xnJCFb3RJXa8CrRALWXr91xzD2Pig1M5GX0MFCOG4WG6gfzVRHy20ZYzYIxw16kBhuY0/
	CgJR63TwPvXFOOvqOSHZW2JQ2qa6xCHs+wpFoAAjL9YZQ8iyjRKZRRubAPUReSSMhNhlcX1GbynNA
	0CM/cddg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu57X-00000004JCm-0HtG
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 08:15:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu57U-0008Ma-73; Thu, 04 Sep 2025 10:15:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu57U-003hEP-07;
	Thu, 04 Sep 2025 10:15:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu57T-00000000Nvw-3wFB;
	Thu, 04 Sep 2025 10:14:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Sep 2025 10:14:58 +0200
Message-ID: <20250904081459.91984-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_091503_273293_F9641675 
X-CRM114-Status: UNSURE (   8.82  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] kbuild: do not descend into images/ twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By having a dependency on images/barebox-dt-2nd.img for the symlink we
may hit a race where the rule for barebox-dt-2nd.img inside in
images/Makefile is executed twice leading to build breakage.

Fix this by changing the dependency in the top-level Makefile to be on
images/, so make doesn't attempt descending twice into images/Makefile
in parallel.

Fixes: a1f893cc16e6 ("kbuild: collect compatibility symlink creation in symlink-y")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 7620c47cf459..169b750fe151 100644
--- a/Makefile
+++ b/Makefile
@@ -829,6 +829,7 @@ images/%: $(BAREBOX_PROPER) FORCE
 
 ifdef CONFIG_PBL_IMAGE
 SYMLINK_TARGET_barebox.efi = images/barebox-dt-2nd.img
+SYMLINK_DEP_barebox.efi = images
 symlink-$(CONFIG_EFI_STUB) += barebox.efi
 all: $(BAREBOX_PROPER) images
 else
@@ -840,8 +841,8 @@ endif
 all: $(symlink-y)
 
 .SECONDEXPANSION:
-$(symlink-y): $$(SYMLINK_TARGET_$$(@F)) FORCE
-	$(call if_changed,symlink_quiet)
+$(symlink-y): $$(or $$(SYMLINK_DEP_$$(@F)),$$(SYMLINK_TARGET_$$(@F))) FORCE
+	@ln -fsn --relative $(SYMLINK_TARGET_$(@F)) $@
 
 common-$(CONFIG_PBL_IMAGE)	+= pbl/
 common-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv/
-- 
2.47.2



