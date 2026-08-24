Delivery-date: Mon, 24 Aug 2026 09:31:16 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyP9I-006ciZ-02
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 09:31:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 96D93200444
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 09:31:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=T30t10MN;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TGgNuAFOu7jJAbM4cTktmiJtrRKY0YQqseuVuJtXKMg=; b=T30t10MN/0W547RIazZq4k/DkO
	xVr4cbxRW1Wj1lWjT0jumEuYdEScBL2svOOnA8jhnif1dze0RMWJJtyCqW4QYSWsCV0dCboLek1sM
	wc8WxTo1MigmBmzC+ueyB3GpY9Xx7ioU+loz1FEvgGtulq5PeApjESw8DMCdf/qgPUMpa9qb/erkL
	sUdoleJtvH5Q4t28bntTGWXCWLxGrV3piI9UDSRuwJPEVqaJeq/x5lDpUbPK76IC8MXyv+dvesZQf
	EftWAEehxEgaolND8H36b56VVEaEb1cf9PUwaMyMB9xToImRWWkZzlqTeo3WOSZKkZHckrGkc1RLi
	HLhn+Blg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyP8J-0000000G56M-0BpX;
	Mon, 24 Aug 2026 07:30:15 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyP8E-0000000G53o-2PTG
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 07:30:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E5459201B02;
	Mon, 24 Aug 2026 09:30:08 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyP8C-00346X-2e;
	Mon, 24 Aug 2026 09:30:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyP8C-0000000Di4D-313n;
	Mon, 24 Aug 2026 09:30:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 3/4] ARM: allow CONFIG_ARM_MMU_PERMISSIONS together with EFI_RUNTIME
Date: Mon, 24 Aug 2026 09:29:53 +0200
Message-ID: <20260824073005.3267576-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
References: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_003010_791362_6A97614A 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The exclusion was
    added because the MMU permission code could only handle a single text/rodata
    section, while EFI_RUNTIME adds a second set, and because EFI payloads expect
    RWX mappings. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 1ma63g14dfg5wrficywwra9inmoo43u6
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 96D93200444

From: Ahmad Fatoum <a.fatoum@barebox.org>

The exclusion was added because the MMU permission code could only
handle a single text/rodata section, while EFI_RUNTIME adds a second
set, and because EFI payloads expect RWX mappings.

Both reasons are gone: barebox proper is a proper ELF now and PBL
applies permissions from the PT_LOAD segment flags, which since the
preceding commits include separate segments for the EFI runtime
services code and data, and code-type EFI page allocations are
remapped executable at allocation time.

As ARM_MMU_PERMISSIONS defaults to y, the multi_v8_efiloader and
multi_v8_efi CI configurations start testing W^X together with the
EFI loader with this commit.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 02580611d9c3..47089df2a0e1 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -468,7 +468,7 @@ config ARM_UNWIND
 
 config ARM_MMU_PERMISSIONS
 	bool "Map with extended RO/X permissions"
-	depends on MMU && !EFI_RUNTIME
+	depends on MMU
 	default y
 	help
 	  Enable this option to map readonly sections as readonly, executable
-- 
2.47.3



