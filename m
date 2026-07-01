Delivery-date: Wed, 01 Jul 2026 11:28:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1werFZ-00Bogl-14
	for lore@lore.pengutronix.de;
	Wed, 01 Jul 2026 11:28:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 23699201955
	for <lore@pengutronix.de>; Wed, 01 Jul 2026 11:28:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wB3+Xn55;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=unLPRj64A4fY+PCt+DKnxbMzTXtqcSf17hlsxZbMAf8=; b=wB3+Xn55SAClfwfKc2fyc7V75C
	10l3C22UsF3qFQ/78hDsDSv7t3lR3rohAE+FO/kYRQ/XCmGaKFvNh2MQPF1nvnMih79mj6sTYe6R5
	EIIFoOSBXrt8W4YGMzPtVMtAUG4Fc9zpIBzOdaki/NZqLvj0dHm9qwus9qYcsQvl1wSbgnU/Wvpev
	9dar42OfMXHelB2zv7KMUqt27Kua2a5ZhVfwmOZ+G6PlHQlpkBCMvXfKXC5+rv5h+Ywpj6t8UX4sH
	yMc9Q1H0z4gw5pcpdBNPz8JLBNxsR8rvNuOFWsgQjqEH+jY1uXW15tGXQE6d8uDix8uUYsS36iuOO
	sNt6h6sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werER-00000001CDQ-1GkG;
	Wed, 01 Jul 2026 09:27:47 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werEO-00000001CBp-2U9o
	for barebox@lists.infradead.org;
	Wed, 01 Jul 2026 09:27:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B43BC201955;
	Wed, 01 Jul 2026 11:27:38 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-005YRn-1t;
	Wed, 01 Jul 2026 11:27:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-00000003pCn-1zpL;
	Wed, 01 Jul 2026 11:27:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 01 Jul 2026 11:27:36 +0200
Subject: [PATCH 3/6] partitions: gpt: validate mkpart range against GPT
 usable LBAs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260701-gpt-size-fixes-v1-3-aec2e5641a19@pengutronix.de>
References: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
In-Reply-To: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782898058; l=1986;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=yMmZ6NBn9PUDyz5Icn4pDDum7C3bm+FCNVzGNeVSI7k=;
 b=BTkyVALvb8GZ1/e9aA+r3AWWkyeTx3dxoa/ZD67fN6gvfYPuPbRr46uY5zuVcZOXnMaehEdoe
 h09/y3j9V0IBB8RRwCDm4aI8mv/QDGQKEyvx0P+QtB1X2PokSflhMct
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_022744_801421_F8ACCDE4 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  efi_partition_mkpart() validated the requested partition range
    against hardcoded device geometry: start_lba against a fixed 34 and end_lba
    against last_lba(blk) - 33. These offsets assume the default [...] 
 
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
Cc: Sascha Hauer <sascha@saschahauer.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Queue-Id: 23699201955
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: mzqxmy3yp99cfifjdttiodffqxs9si6t
X-Rspamd-Server: mx1

efi_partition_mkpart() validated the requested partition range against
hardcoded device geometry: start_lba against a fixed 34 and end_lba
against last_lba(blk) - 33. These offsets assume the default layout of
128 partition entries (32 sectors) plus the backup GPT header.

The authoritative bounds are first_usable_lba and last_usable_lba stored
in the GPT header being modified. They can differ from the hardcoded
values, e.g. when a table is read from disk that was created for a
smaller device (last_usable_lba retains the smaller value until the GPT
is rewritten) or that reserves a differently sized partition entry
array. In those cases the old check allowed a partition to extend past
last_usable_lba, overlapping the reserved backup entry array and GPT
header.

Check start_lba/end_lba against the header's first_usable_lba and
last_usable_lba instead.

Signed-off-by: Sascha Hauer <sascha@saschahauer.de>
---
 common/partitions/efi.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 98172672ff..59b9fa9b55 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -764,15 +764,18 @@ static __maybe_unused int efi_partition_mkpart(struct partition_desc *pd,
 	gpt_entry *pte;
 	int i;
 	const guid_t *guid;
+	uint64_t first_usable_lba = le64_to_cpu(gpt->first_usable_lba);
+	uint64_t last_usable_lba = le64_to_cpu(gpt->last_usable_lba);
 
-	if (start_lba < 34) {
-		pr_err("invalid start LBA %lld, minimum is 34\n", start_lba);
+	if (start_lba < first_usable_lba) {
+		pr_err("invalid start LBA %lld, minimum is %lld\n", start_lba,
+		       first_usable_lba);
 		return -EINVAL;
 	}
 
-	if (end_lba >= last_lba(pd->blk) - 33) {
+	if (end_lba > last_usable_lba) {
 		pr_err("invalid end LBA %lld, maximum is %lld\n", end_lba,
-		       last_lba(pd->blk) - 34);
+		       last_usable_lba);
 		return -EINVAL;
 	}
 

-- 
2.47.3



