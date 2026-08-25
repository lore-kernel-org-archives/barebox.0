Delivery-date: Tue, 25 Aug 2026 09:53:28 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wylyJ-006zr3-2M
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 09:53:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4E3FC200F47
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 09:53:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kOp219Mr;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7+brExKhom5u/aA6Y8Gwr0VmbNtzeTSIXzUI4YOYXZY=; b=kOp219MrkVWXLaDKYLP4kHHUNA
	i4rrgluPY4Kqe6ga4xAwG7k0WSWreNChqoMPHwx8TBOH1lIVo4aoDRjP3KHTn6uzmnyw3iYz1puTB
	8p8CBHqxXzLbX+vKOleIp/XhP6v8lBJsLGLp6PZYHAKQ6bX44vbLjvm3QnZxULd/6bidMsPTHS+pi
	lzXGC1CeXr4xHbkjY2EtWQoY1RAwCWrwvl27V+5PUva48UaM2ny44M7cN0/gJBN/uliIV8sLSz6Ck
	Q5BV5mmwc2nito1btw1RBjbyAmngLsTSnIVrZ5iQMsoasOuaA8WabtBJ6vsckV5/kNACoNl0wWMMI
	629Ryd8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wylxo-00000000K9A-2oNQ;
	Tue, 25 Aug 2026 07:52:56 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wylxl-00000000K8R-2J8I
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 07:52:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E3AA5200740;
	Tue, 25 Aug 2026 09:52:49 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wylxh-003Eg8-2l;
	Tue, 25 Aug 2026 09:52:49 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wylxh-00000004Ft0-32dw;
	Tue, 25 Aug 2026 09:52:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master] ARM64: efi-header: declare the code section writable
Date: Tue, 25 Aug 2026 09:52:46 +0200
Message-ID: <20260825075248.1014060-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_005253_743972_58A6A72F 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  CONFIG_PBL_FULLY_PIC was initially introduced to make the
   enough of the early PBL position-independent, so it can execute until barebox
    is relocated to EFI allocated RWX memory. This was required beca [...] 
 
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
X-Stat-Signature: sqnmxi5zqze6tom6whar7hke5xp3mfwk
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
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
X-Rspamd-Queue-Id: 4E3FC200F47

CONFIG_PBL_FULLY_PIC was initially introduced to make the enough of the
early PBL position-independent, so it can execute until barebox is
relocated to EFI allocated RWX memory.
This was required because the EDK-II EFI firmware I tested against
mapped the barebox code section read-only.

While W^X is desirable, the current setup is broken: We do not check at
compile-time that there are no relocations, so compiler updates and code
changes can make this regress. Also the memory barebox allocates for
itself is RWX as we do not ask for other types of memory via NX_COMPAT.

For this reason, correctly reflect in the PE header's characteristics
that barebox as EFI payload needs to run with code section mapped RWX.

barebox running as EFI loader is unaffected.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/efi-header-aarch64.S | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/cpu/efi-header-aarch64.S b/arch/arm/cpu/efi-header-aarch64.S
index 941d0d8fdcaa..b2e891b3872c 100644
--- a/arch/arm/cpu/efi-header-aarch64.S
+++ b/arch/arm/cpu/efi-header-aarch64.S
@@ -94,8 +94,17 @@
 	.long	0					// PointerToLineNumbers
 	.short	0					// NumberOfRelocations
 	.short	0					// NumberOfLineNumbers
+	/*
+	 * TODO: drop the WRITE here and set NX_COMPAT flag
+	 *
+	 * Before we can do this however, we will need a restructure of the PBL:
+	 * early relocation code will need to go into its own section that's
+	 * enforced at build-time to be clear of any relocations and only then
+	 * we can set RX for it and RW for the data.
+	 */
 	.long	IMAGE_SCN_CNT_CODE | \
 		IMAGE_SCN_MEM_READ | \
+		IMAGE_SCN_MEM_WRITE | \
 		IMAGE_SCN_MEM_EXECUTE			// Characteristics
 
 	.ascii	".data\0\0\0"
-- 
2.47.3



