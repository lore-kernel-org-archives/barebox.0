Delivery-date: Mon, 24 Aug 2026 14:01:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyTMq-006gpH-29
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 14:01:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 516FE201B9A
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 14:01:33 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NZ3esdJ7;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N6+Y86SMpbR00ut7ptwdfM9IDNHzKIH3I/QLuyLuA8c=; b=NZ3esdJ7MwrwiAPqnd9P/yOn8P
	cigFf4yzAkuieWl5youZFA305/c99p8iyoU5Cc1sVFKxJ8Hg+Jerc6VCve519BrukG7WC9ZuD8RFB
	+YyK66qdDjKBdn+9cGm7sjoKSvoZfn15jQprLclvzPrj2xt581CHQVSoaSXO4gcX6wNPTZi7LIEnR
	Pu5Ghx2jut8dfrohnY+z/7tucR06vK6oHj1rFrNQ2bivSPWQx0SeeekuNsFGmu990XP3iOM7WKNIN
	RjITqrMyrXhsjT/aEe/eo6Hv/c7IQ5002GCt9m2LGdC6m7Jifk6ejznNtx5DfGM7LFXL8d5VtW9Wq
	kzCfVnng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTLp-0000000GZ2n-09rs;
	Mon, 24 Aug 2026 12:00:29 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTLl-0000000GZ1E-0s2J
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 12:00:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 81E88201BC9;
	Mon, 24 Aug 2026 14:00:23 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTLj-00368Y-1P;
	Mon, 24 Aug 2026 14:00:23 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTLj-0000000DyeC-1BWi;
	Mon, 24 Aug 2026 14:00:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 3/4] partitions: dos: bound extended partition chain
Date: Mon, 24 Aug 2026 13:59:57 +0200
Message-ID: <20260824120022.3299742-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260824120022.3299742-1-a.fatoum@pengutronix.de>
References: <20260824120022.3299742-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_050026_233060_03215FB3 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  dos_extended_partition() follows the EBR chain by reading
   each logical partition's link entry (the second entry in the EBR) to locate
    the next EBR. The loop is an unbounded while (1) and thus could ke [...] 
 
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
X-Stat-Signature: tdsyj5ak4gz4c5c6xrynughf7qsks9yg
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
X-Rspamd-Queue-Id: 516FE201B9A

dos_extended_partition() follows the EBR chain by reading each logical
partition's link entry (the second entry in the EBR) to locate the next
EBR. The loop is an unbounded while (1) and thus could keep running
until barebox runs out of memory.

Bound it at MAX_PARTITION to fix this.

Fixes: 57392a862d40 ("partition: allocate struct partition in parser")
Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/dos.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index e5286cb6eb1f..3d9e6e67c676 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -129,11 +129,11 @@ static void dos_extended_partition(struct block_device *blk, struct dos_partitio
 	uint8_t *buf = xmalloc(BLOCKSIZE(blk));
 	uint32_t ebr_sector = partition->first_sec;
 	struct partition_entry *table = (struct partition_entry *)&buf[0x1be];
-	unsigned partno = 4;
+	unsigned partno;
 	struct dos_partition *dpart;
 	struct partition *pentry;
 
-	while (1) {
+	for (partno = 4; partno < MAX_PARTITION; partno++) {
 		int rc, i;
 
 		dev_dbg(blk->dev, "expect EBR in sector 0x%x\n", ebr_sector);
@@ -176,8 +176,6 @@ static void dos_extended_partition(struct block_device *blk, struct dos_partitio
 
 		list_add_tail(&pentry->list, &dpd->pd.partitions);
 
-		partno++;
-
 		/* the second entry defines the start of the next ebr if != 0 */
 		if (get_unaligned_le32(&table[1].partition_start))
 			ebr_sector = partition->first_sec +
@@ -186,6 +184,12 @@ static void dos_extended_partition(struct block_device *blk, struct dos_partitio
 			break;
 	}
 
+	/* bound the EBR chain: a cyclic link would loop forever */
+	if (partno == MAX_PARTITION) {
+		dev_err(blk->dev, "too many logical partitions\n");
+		goto out;
+	}
+
 out:
 	free(buf);
 	return;
-- 
2.47.3



