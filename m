Delivery-date: Wed, 26 Aug 2026 11:32:15 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wz9zS-007NxA-0l
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 11:32:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D2F302017E5
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 11:32:14 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Yu2pX2OI;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TS0/bPei6FVaeixhtG9sbq6f2jMmCBSTrhao+pid2XA=; b=Yu2pX2OIvTYvF2vpSmHaiDekr+
	6392g5NcvfJPjzSqDGTsG9jCMS1Usq7iYBn0r+d0MNzlOMC/NoVrpmK1f2CfSQ/PJ8V4q7JfXjgxq
	5DDRwRyFl8FNgqHu+d142TQ7TiN5Tt1/Nc106zgxbvj37nlYC9G9Gxbrc6eLnMzMrK8k7WYlyKX9L
	uBEM761ay+ki3jyeV9ZtKBqJzH0qFmRpfVVlkwgWI1pCapMGOIp3Xesp1D3pBgL/XfnjRBeAxffTr
	22YTKvsa3A5TcvOHoAhEJn6UYrUxqNzeghbh3XsmWOYPnVqx4frZclSdc4iASXPiBHyv85SUVoptg
	BmyjJnXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz9yN-00000002CUY-2w0S;
	Wed, 26 Aug 2026 09:31:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz9yK-00000002CTh-2Zlw
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 09:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AD6F0200FEE;
	Wed, 26 Aug 2026 11:31:02 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wz9yI-003PtV-22;
	Wed, 26 Aug 2026 11:31:02 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wz9yI-00000009x82-2Dz0;
	Wed, 26 Aug 2026 11:31:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 1/2] efi: payload: iomem: use efi_uintn_t for the memory map key
Date: Wed, 26 Aug 2026 11:30:51 +0200
Message-ID: <20260826093059.2370477-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_023104_806383_0D8CDF58 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The GetMemoryMap() boot service takes a pointer to an efi_uintn_t
    for the map key. Passing a pointer to an unsigned long fails to compile on
    32-bit architectures, where efi_uintn_t is 32-bit: efi/payload/iomem.c:161:45:
    error: passing argument 3 of 'BS->get_memory_map' from incompatible pointer
    type 
 
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
X-Stat-Signature: swk9rfsy5r84infscojyxewdfo1fd8pg
X-Rspamd-Queue-Id: D2F302017E5

The GetMemoryMap() boot service takes a pointer to an efi_uintn_t for
the map key. Passing a pointer to an unsigned long fails to compile on
32-bit architectures, where efi_uintn_t is 32-bit:

  efi/payload/iomem.c:161:45: error: passing argument 3 of
  'BS->get_memory_map' from incompatible pointer type

Use the correct type.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/iomem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/iomem.c b/efi/payload/iomem.c
index 8b92dc47a7b9..515bf05233f8 100644
--- a/efi/payload/iomem.c
+++ b/efi/payload/iomem.c
@@ -148,7 +148,7 @@ static int efi_barebox_populate_mmap(void)
 	void *mmap_buf = NULL, *desc;
 	efi_status_t efiret;
 	size_t mmap_size;
-	ulong mapkey;
+	efi_uintn_t mapkey;
 	size_t descsz;
 	u32 descver;
 	int ret = 0;
-- 
2.47.3



