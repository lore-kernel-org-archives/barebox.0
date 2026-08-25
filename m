Delivery-date: Tue, 25 Aug 2026 10:54:33 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wymvR-0070q5-0M
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 10:54:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B3F1C200F47
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 10:54:33 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=e3pr3IOO;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DqYmRUaK38YH+E7lokSriIKeZnjBH7PA3ZtU6iJPD+M=; b=e3pr3IOOFUFqoVjR70PainXDEq
	6zSarF21IR6IjFj87LhhAgFjB4xyrGb8rfk5Qkr8EVKqUT1Y5ylsX6oAkBANGC1nKR2E5zezrLYBz
	Uvj7bCnEuv2byxPkkzNrz0S4Oa0Yd9+wocv6Ob0WJNIDTREhmp+3Hrgm+uz8nb3TRR2m+TsF8jMY5
	wDxB33riFeeQclM2GWYxVlkjWZASeAc+lPVIaMU3ha5rCFbIcsNVkDh637cWG4HL6zgfRFuTYU5XQ
	hHAWMW/0GfEH4RCRRDImmuNAmmUnViAj8K/29C23PdAU97s7rHs4P3xZ8PalLu+WoF5TESbrn631E
	Sn1T0UBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wymuJ-00000000Qhz-2jmZ;
	Tue, 25 Aug 2026 08:53:23 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wymuF-00000000QgF-2zA1
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 08:53:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 96288201BC9;
	Tue, 25 Aug 2026 10:53:17 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wymuD-003F9h-1j;
	Tue, 25 Aug 2026 10:53:17 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wymuD-00000005VOs-1pDS;
	Tue, 25 Aug 2026 10:53:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] efi: don't truncate EFI_MEMORY_RUNTIME when setting resource attributes
Date: Tue, 25 Aug 2026 10:53:15 +0200
Message-ID: <20260825085316.1312263-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_015320_713594_21498464 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  resource_set_efi_memory_type_attrs() stored the runtime attribute
    with res->runtime = attrs & EFI_MEMORY_RUNTIME; but struct resource declares
    runtime as a one-bit field and EFI_MEMORY_RUNTIME is bit 63, so the assignment
    keeps only the low bit of the masked value and always stores zero. Every
   caller passing the [...] 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: acukrnoskhnzzxnsndf58944qpuuuaze
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: B3F1C200F47

resource_set_efi_memory_type_attrs() stored the runtime attribute with

	res->runtime = attrs & EFI_MEMORY_RUNTIME;

but struct resource declares runtime as a one-bit field and
EFI_MEMORY_RUNTIME is bit 63, so the assignment keeps only the low bit of
the masked value and always stores zero. Every caller passing the
attribute silently ended up with a non-runtime resource.

This went unnoticed because the other places marking a resource as
runtime, common/memory.c and efi_allocate_pages(), assign res->runtime =
true directly. The setter is used by efi/payload/iomem.c, which converts
the firmware-provided memory map into resources when barebox runs as an
EFI payload, so barebox lost the runtime flag on every region it imported.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/memory.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/efi/memory.h b/include/efi/memory.h
index df980a0f348f..74e714099021 100644
--- a/include/efi/memory.h
+++ b/include/efi/memory.h
@@ -71,7 +71,7 @@ static inline void resource_set_efi_memory_type_attrs(struct resource *res,
 						u64 attrs)
 {
 	res->type = type;
-	res->runtime = attrs & EFI_MEMORY_RUNTIME;
+	res->runtime = !!(attrs & EFI_MEMORY_RUNTIME);
 	res->attrs = attrs & ~EFI_MEMORY_RUNTIME;
 	res->flags |= IORESOURCE_TYPE_VALID;
 }
-- 
2.47.3



