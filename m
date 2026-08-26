Delivery-date: Wed, 26 Aug 2026 12:23:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzAn0-007OuB-0i
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 12:23:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CCCBA202101
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 12:23:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DByImorC;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3y/iqSC5ufYTucvaipLeEEqNeFRIN3E5S7QGFCQMc+c=; b=DByImorCinjqr0ESAmbLNHikSK
	QnNuQ7rFCQ5Mm0kqRjjJsyebYw0Xkg9KO5z3SKEEZt65jKd8kMzHWWbg+kErIPa6Ni4zB265g6wrv
	4m8l4FJa14cVobcedeIVsvWfzpKEeC5PxRjTxBOfvRAXWxtH0VIdXTCaLT6HPjuy83iMACsBZGQ6B
	GYumWtYvpGHeh2QUSXcka2hg4hPpqa4R4+cSJJTM26cgSGYxAjui1J2POIy8XlIuFeik/9B640nyR
	udDx9ln6g5RlGOvzpR84SevDPN+alC6Z/m3Bh/qouyDCVPPCIsxEkGp23/jWFcaUJseAswEU4itY7
	F8H+ifAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzA4U-00000002DLa-0eMO;
	Wed, 26 Aug 2026 09:37:26 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzA4R-00000002DKE-1943
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 09:37:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9696820211C;
	Wed, 26 Aug 2026 11:37:21 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzA4P-003PzI-1g;
	Wed, 26 Aug 2026 11:37:21 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzA4P-0000000ATzt-1kzV;
	Wed, 26 Aug 2026 11:37:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] fs: efivarfs: allow creating variables under any GUID in loader mode
Date: Wed, 26 Aug 2026 11:37:13 +0200
Message-ID: <20260826093720.2496298-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_023723_564424_1740A450 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  efivars_create() refuses to create variables outside the barebox
    vendor GUID. That dates from when barebox was only an EFI payload: on somebody
    else's firmware, whose NVRAM holds the platform's own st [...] 
 
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: uke4hd1d7fhjejnerhnxcw1u8xn9rd6h
X-Rspamd-Queue-Id: CCCBA202101

efivars_create() refuses to create variables outside the barebox vendor
GUID. That dates from when barebox was only an EFI payload: on somebody
else's firmware, whose NVRAM holds the platform's own state, a shell that
can create Boot#### or BootOrder under the global GUID is a liability,
and the payload only ever needs barebox-env-<guid> anyway.

The EFI loader took the same efivarfs over unchanged, where the argument
does not hold. The store is barebox' own in-memory buffer backed by a
file it writes itself, and everything the loader starts - the UEFI
Shell, GRUB, the OS - can already create variables under any GUID. Only
the barebox shell was held back:

  barebox:/ echo -o /efivarfs/Timeout-8be4df61-93ca-11d2-aa0d-00e098032b8c 5
  open: Operation not permitted

Lift the restriction when running as the loader, so board scripts can
set up global variables without going through /env/data/init.efivars.
The payload keeps confining itself to its own GUID.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/efivarfs.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index a4d8cc8d0268..1f53c06d66d3 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -66,12 +66,17 @@ static int efivars_create(struct device *dev, const char *pathname,
 	if (pathname[0] == '/')
 		pathname++;
 
-	/* deny creating files with other vendor GUID than our own */
 	ret = efivarfs_parse_filename(pathname, &vendor, &name);
 	if (ret)
 		return -ENOENT;
 
-	if (efi_guidcmp(vendor, EFI_BAREBOX_VENDOR_GUID))
+	/*
+	 * As a payload, barebox is a guest on somebody else's firmware and
+	 * confines itself to its own vendor GUID when creating variables.
+	 * As the loader, the variable store is barebox' own and anything it
+	 * boots may already create variables under any GUID.
+	 */
+	if (!efi_is_loader() && efi_guidcmp(vendor, EFI_BAREBOX_VENDOR_GUID))
 		return -EPERM;
 
 	inode = xzalloc(sizeof(*inode));
-- 
2.47.3



