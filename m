Delivery-date: Wed, 26 Aug 2026 11:40:48 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzA7j-007O56-1l
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 11:40:48 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EF1E22017E5
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 11:40:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2M7PrIXq;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=19TET3FibxnAdfdxvhiTMknGA9kxdhfIoDMDFZiXFxw=; b=2M7PrIXq0lRJslJ5zhQ+/zvVkw
	cEPE+Fh8HuY79acLteU/gTpJn0cVpwQgV53nOju34a8qG4gmQDoS+dW1ZkvLYe/fJZA9IT0ReyMIu
	exPsS1m3u3TvxShRKB/m86ipHGseUiQCbNb4IIFDxpDEDbjvu4GPBbVg6YbaslJQ+FJA8GmW3U8WM
	ypR6zlAKNf83fZNlOkNmkglaWzchq3G4s10DAmyiPrZoyo0kctlIyf3/538uARZf+VybkEH3zTsMH
	wUvSZZXL4SRSwEe8uaKR28OMQyM2/p0fzDiLTUZzltc2KF3jItoliNw5p1dwctUwhqOD0y6AO86A7
	IQEMRtyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzA6h-00000002DiA-3VV5;
	Wed, 26 Aug 2026 09:39:43 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzA6d-00000002Dhl-2r2g
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 09:39:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8CAC8202040;
	Wed, 26 Aug 2026 11:39:37 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzA6b-003PzR-1U;
	Wed, 26 Aug 2026 11:39:37 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzA6b-0000000AfMr-1UBD;
	Wed, 26 Aug 2026 11:39:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] partitions: efi: only warn about valid GPT entries beyond the limit
Date: Wed, 26 Aug 2026 11:39:36 +0200
Message-ID: <20260826093936.2542278-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_023939_897554_64FECDEE 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  GPT headers may describe more than the customary 128 partition
    entries. xorriso for example writes a 248 entry table for hybrid ISOs like
    the Alpine Linux images, of which only three entries are in us [...] 
 
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
X-Stat-Signature: ygtiks6a3cbanfu7jnpo7wnqtzkfb1rh
X-Rspamd-Queue-Id: EF1E22017E5

GPT headers may describe more than the customary 128 partition entries.
xorriso for example writes a 248 entry table for hybrid ISOs like the
Alpine Linux images, of which only three entries are in use. barebox
would then warn on every boot:

  WARNING: GPT has more partitions than we support (248) > max partition number (128)

although it could handle every partition that actually exists. Iterate
over all entries instead and only warn about the valid ones that we
have to ignore.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/efi.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 7ec54a98e335..d9f0e1a00d45 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -626,12 +626,6 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 
 	nb_part = le32_to_cpu(gpt->num_partition_entries);
 
-	if (nb_part > MAX_PARTITION) {
-		dev_warn(blk->dev, "GPT has more partitions than we support (%d) > max partition number (%d)\n",
-			 nb_part, MAX_PARTITION);
-		nb_part = MAX_PARTITION;
-	}
-
 	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
 	add_gpt_diskuuid_param(epd, blk);
 
@@ -641,6 +635,12 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 			continue;
 		}
 
+		if (i >= MAX_PARTITION) {
+			dev_warn(blk->dev, "ignoring GPT partition %d beyond the %d we support\n",
+				 i + 1, MAX_PARTITION);
+			continue;
+		}
+
 		epart = xzalloc(sizeof(*epart));
 		epart->pte = &ptes[i];
 		pentry = &epart->part;
-- 
2.47.3



