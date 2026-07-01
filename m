Delivery-date: Wed, 01 Jul 2026 11:29:01 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1werFd-00BohN-2A
	for lore@lore.pengutronix.de;
	Wed, 01 Jul 2026 11:29:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 75985201955
	for <lore@pengutronix.de>; Wed, 01 Jul 2026 11:29:01 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=W0DuLzHf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wp0+nQ2q23q1/mP/kkCJEX6lPIA9E5uRCwiKVJiYFX8=; b=W0DuLzHfVByrLVQnLjr3OmTzny
	ExasG4ZdH0lsOrcDtDrhoe7rI962zUHQiJq7b9GMQAR3i9AVBEHYLNLmztd7pJAJNay9yjXHhyvTf
	0qVOpsJLUytjoR+GnxdJgPIY+iSemYgV1vBVTqL6L1UJ70fDdGIYzVzX0frWZSnVFPbGcXJKudm1M
	Dk/ePeSLGcCDCrGxQLlc1QLpzM6rnNmzhtTyxyhLA9J+5nHaz1buzq6J3v2sP0fd2+FYPwl78VdUX
	ceJZE4ceTsAxUl22U616l5iHlXCataowWIDz5px9r5eChBEssqvYXBYzopsudzkkzXYtDCpUFjy+6
	Hczx4ndQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werEO-00000001CC9-24Kw;
	Wed, 01 Jul 2026 09:27:44 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werEL-00000001CAf-0soF
	for barebox@lists.infradead.org;
	Wed, 01 Jul 2026 09:27:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BA9812019BD;
	Wed, 01 Jul 2026 11:27:38 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-005YRm-1q;
	Wed, 01 Jul 2026 11:27:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-00000003pCn-1yHE;
	Wed, 01 Jul 2026 11:27:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 01 Jul 2026 11:27:35 +0200
Subject: [PATCH 2/6] partitions: gpt: refresh also when primary or
 alternate is invalid
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260701-gpt-size-fixes-v1-2-aec2e5641a19@pengutronix.de>
References: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
In-Reply-To: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782898058; l=1780;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ThVrilQLyr0NuItL32QoRq505clc7JNv5mtkJEaYZlQ=;
 b=zMcflvUBioOKKIOX4z8gBEgoJ8ptHFR1k9ZDP5nw415H3jwfx8ac8yWokkLGmF8NYEfz/kvET
 8Hy8jhwHzwtAH7hOyXAWLGZOvYjp9Tr1QtBxgSyDT9cskrReG5z1TZY
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_022741_399259_430096DD 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Currently we only refresh/repair when primary and alternate
    GPT differ. When either of them is missing, we should repair as well. Signed-off-by:
    Sascha Hauer <s.hauer@pengutronix.de> --- common/partitions/efi.c | 32 +++++++++++++++++++++
    1 file changed, 21 insertions(+), 11 deletions(-) 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Queue-Id: 75985201955
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Action: no action
X-Stat-Signature: oh56ee935od1qd3oioc34yycr1bzmq3q
X-Rspamd-Server: mx1

Currently we only refresh/repair when primary and alternate GPT differ. When
either of them is missing, we should repair as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 32 +++++++++++++++++++++-----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 28198f25b1..98172672ff 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -385,10 +385,20 @@ compare_gpts(struct block_device *blk, gpt_header *pgpt, gpt_header *agpt,
 	     u64 lastlba)
 {
 	struct device *dev = blk->dev;
-
 	int error_found = 0;
-	if (!pgpt || !agpt)
-		return;
+
+	if (!pgpt) {
+		dev_warn(dev, "GPT:Primary GPT not found\n");
+		error_found++;
+		goto refresh;
+	}
+
+	if (!agpt) {
+		dev_warn(dev, "GPT:Alternate GPT not found\n");
+		error_found++;
+		goto refresh;
+	}
+
 	if (le64_to_cpu(pgpt->my_lba) != le64_to_cpu(agpt->alternate_lba)) {
 		dev_warn(dev,
 		       "GPT:Primary header LBA != Alt. header alternate_lba\n");
@@ -469,15 +479,15 @@ compare_gpts(struct block_device *blk, gpt_header *pgpt, gpt_header *agpt,
 		error_found++;
 	}
 
-	if (error_found) {
-		add_gpt_refresh(blk);
-		if (!IS_ENABLED(CONFIG_PARTITION_DISK_EFI_REFRESH))
-			dev_info(dev, "GPT: will repair later if global.system.gpt_refresh=1\n");
-		else
-			dev_warn(dev, "GPT: Use parted to correct GPT errors.\n");
-	}
+	if (!error_found)
+		return;
 
-	return;
+refresh:
+	add_gpt_refresh(blk);
+	if (!IS_ENABLED(CONFIG_PARTITION_DISK_EFI_REFRESH))
+		dev_info(dev, "GPT: will repair later if global.system.gpt_refresh=1\n");
+	else
+		dev_warn(dev, "GPT: Use parted to correct GPT errors.\n");
 }
 
 /**

-- 
2.47.3



