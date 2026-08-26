Delivery-date: Wed, 26 Aug 2026 11:38:21 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzA5M-007O3F-1R
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 11:38:21 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C046A201552
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 11:38:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=coUS1evO;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P9eIUiDkmTMhPdm1tGUz9OgJGIa07st2cSm1+XJOcTk=; b=coUS1evOumtkbaG8Zih8XJqikn
	azXS1Ydw9bGGXUqrk/O/XTyUY9eHgf5YCg9+RaOmKBssSjFtuYJ0cqnm2pyOCCvWnzvluayx9Jv5M
	HTygeYGZUpooWAez6RPq4F9RmU63lykz9P/LZ5vbPFbCAVFgIL7SOAsmD7+1fxHlrg9aL0kE3HGZ2
	WJzTonYbEB1L91lZac3EBizPhE4vfdG6TxMa/y3nM7FBpxxE/XttKoxwJ5NP+p0QONgJX0OLDP/UH
	uV2zi5NjZWoqNG+F++aAZSRRvr0aQifRU+fjdMddQTvDzn15avZlL8RavBTsUjB5GwJx9sPtHjlYa
	aBf4lyjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzA4F-00000002DE0-03B5;
	Wed, 26 Aug 2026 09:37:11 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzA49-00000002DBM-033X
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 09:37:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 13958202107;
	Wed, 26 Aug 2026 11:37:03 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzA46-003Pz6-37;
	Wed, 26 Aug 2026 11:37:02 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzA46-0000000ARid-3cZy;
	Wed, 26 Aug 2026 11:37:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 3/4] efi: loader: disk: don't require block-size aligned I/O buffers
Date: Wed, 26 Aug 2026 11:36:50 +0200
Message-ID: <20260826093701.2486248-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826093701.2486248-1-a.fatoum@pengutronix.de>
References: <20260826093701.2486248-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_023705_240817_FA78149C 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The Block I/O protocol's io_align member tells the consumer
    what alignment the buffers passed to read_blocks()/write_blocks() need to
    have. We set it to the block size, but our implementation services [...] 
 
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
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
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
X-Stat-Signature: urgwy8b8gkddythe4fscpydpkay556yd
X-Rspamd-Queue-Id: C046A201552

The Block I/O protocol's io_align member tells the consumer what
alignment the buffers passed to read_blocks()/write_blocks() need to
have. We set it to the block size, but our implementation services all
requests via cdev_read()/cdev_write(), which copy through the block
layer's cache chunks regardless of the caller's buffer alignment, so
there is no such requirement.

Report an io_align of 1 instead, which per UEFI specification, like 0,
means the buffer can be placed anywhere in memory. Prefer 1 over 0 as
a consumer computing the mask as io_align - 1 without checking for 0
first (as U-Boot's own producer side does) keeps working with 1, but
would reject every buffer with 0.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/disk.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/efi/loader/protocols/disk.c b/efi/loader/protocols/disk.c
index 5c5447acca20..5376c9ec9a14 100644
--- a/efi/loader/protocols/disk.c
+++ b/efi/loader/protocols/disk.c
@@ -253,7 +253,13 @@ static efi_status_t efi_disk_add_cdev(efi_handle_t parent,
 	diskobj->media.removable_media = removable;
 	diskobj->media.media_present = true;
 	diskobj->media.read_only = cdev->flags & DEVFS_PARTITION_READONLY;
-	diskobj->media.block_size = diskobj->media.io_align = 1u << blockbits;
+	diskobj->media.block_size = 1u << blockbits;
+	/*
+	 * Reads and writes go through cdev_read()/cdev_write(), which
+	 * always copy through the block layer cache, so any buffer
+	 * alignment is acceptable.
+	 */
+	diskobj->media.io_align = 1;
 	diskobj->media.last_block = (cdev->size >> blockbits) - 1;
 	diskobj->blockbits = blockbits;
 
-- 
2.47.3



