Delivery-date: Mon, 31 Aug 2026 12:05:02 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0ysv-009EYy-1Y
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 12:05:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0DA182018C1
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 12:05:02 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QK5pPEnz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JezfrWnSXu6Cf8Kjd77dBjN8syHBdjmQC9A3NaUt/4g=; b=QK5pPEnzXJQp9Rmev90cyy1gTF
	LFM5TyE4zvo83RUMIF151PfO/w39cIrDafsEXFyo0wdv/TCys5LgArYj72f8PrF9V8GyI/0hCMGM+
	GrgzJ3iOUQ3UTnsJwmiWPhkbrqokijrdwObq7L/XU4DV4l2E7XRJ/PDbH/hbUoawhBgFMWMnX/YQz
	Kiv3pqMZ2YX1Vzye4elb/jp/22P6EJj8PP1aBFvly0x43/1BSJgOet4xU66dJFwrZF/IfE+FfC4lG
	RZ4jOl0m2LlAyCIp84/tXBmWs40XnKbUCuSgGc5cRfmENesddYpLm97lCD7oqY2RycTi4k5IsgYzn
	opVHEf8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yrq-000000095AI-1uXH;
	Mon, 31 Aug 2026 10:03:54 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yrd-0000000958h-0N3u
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 10:03:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9CB47200C95;
	Mon, 31 Aug 2026 12:03:37 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x0yrZ-004Edm-1o;
	Mon, 31 Aug 2026 12:03:37 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x0yrZ-000000023Wt-1uPB;
	Mon, 31 Aug 2026 12:03:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master] ARM64: lds: place relocation tables explicitly
Date: Mon, 31 Aug 2026 12:03:32 +0200
Message-ID: <20260831100336.490064-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_030341_276078_00B11503 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  arch/arm/lib64/barebox.lds.S names PHDRS, but doesn't mention
    .rela.dyn, .relr.dyn or .dynsym, so the linker places them as orphans. With
    CONFIG_RELR disabled and a RELA table of several hundred KiB, GNU ld squeezes
    it in-between .efi_runtime.text and .efi_runtime.data. The latter, which
   starts its own PT_LOAD segment, ends then at [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Stat-Signature: spiwcw9e1xm9oqe11wjka3sfdrpk1ypy
X-Rspamd-Queue-Id: 0DA182018C1
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

arch/arm/lib64/barebox.lds.S names PHDRS, but doesn't mention .rela.dyn,
.relr.dyn or .dynsym, so the linker places them as orphans.

With CONFIG_RELR disabled and a RELA table of several hundred KiB, GNU ld
squeezes it in-between .efi_runtime.text and .efi_runtime.data.
The latter, which starts its own PT_LOAD segment, ends then at an
unaligned address:

[15] .efi_runtime.text PROGBITS         00000000001e0000  001f0000
       0000000000002000  0000000000000000  AX       0     0     64
[16] .rela.dyn         RELA             00000000001e2000  001f2000
       00000000000abf30  0000000000000018   A       3     0     8
[17] .efi_runtime.data PROGBITS         000000000028df30  0029df30 <---
       0000000000000168  0000000000000000  WA       0     0     8

This will trigger a runtime panic when failing to apply the (page-wise)
memory protections.

A series for eliminating orphan sections completely is in the works.

For now, let's do the minimal fix of placing the tables via
BAREBOX_RELOCATION_TABLE like we already do for 32-bit ARM and
in the PBL linker script.

Fixes: 2aae71d068f6 ("ARM: lds: place EFI runtime code and data in separate PT_LOAD segments")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib64/barebox.lds.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index a06a078d4142..40c25830cbb9 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -41,6 +41,8 @@ SECTIONS
 		RO_DATA_SECTION
 	} :rodata
 
+	BAREBOX_RELOCATION_TABLE
+
 	.dynamic : { *(.dynamic) } :rodata :dynamic
 
 	. = ALIGN(4096);
-- 
2.47.3



