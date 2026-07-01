Delivery-date: Wed, 01 Jul 2026 11:28:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1werFZ-00Boga-04
	for lore@lore.pengutronix.de;
	Wed, 01 Jul 2026 11:28:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D73F3201955
	for <lore@pengutronix.de>; Wed, 01 Jul 2026 11:28:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nxqsW41F;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WEHU9X4JLPcep5yG4OVEAtbHxDdI4omiXFD8Br0hcvU=; b=nxqsW41FIAiflvB+GctAQsSrP6
	F2TrwfFNvXbpt/KmAgvQCJ7VT7ti2w/XDQrLdHhLC9btQu013jrwN/wszaWpzrfS6hzt/ofNmDOgu
	+4uoxy2N7CnTV//fBMXyjCgQ41kh7CqQuVNbM0EHXC4J1GNAVw7DCCWD1OjFeQV2VKR3OjIx2HUjH
	J3ZVyeDLGVzGn/D2N/fZzleN1UU/niIR2h7oDG2Seg8Y2rqDCC2Nw240RF2jOZycqO+oSZRtbh8MQ
	CNG2BszuiOwWiq6GMfooUd0jl8DAxUPyxN80rN5/bfXoZ2KiCVlSks9fDLJPg2zeRysa0/4g5SQB1
	k2NlTuRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werEO-00000001CC4-1gvr;
	Wed, 01 Jul 2026 09:27:44 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werEL-00000001CAe-0iT6
	for barebox@lists.infradead.org;
	Wed, 01 Jul 2026 09:27:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AFA7120040F;
	Wed, 01 Jul 2026 11:27:38 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-005YRk-1n;
	Wed, 01 Jul 2026 11:27:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-00000003pCn-1xVp;
	Wed, 01 Jul 2026 11:27:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 01 Jul 2026 11:27:34 +0200
Subject: [PATCH 1/6] partitions: gpt: Adjust last_usable_lba to real device
 size when writing
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260701-gpt-size-fixes-v1-1-aec2e5641a19@pengutronix.de>
References: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
In-Reply-To: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782898058; l=761;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=yqrxtfwRvKzXRIX5eN0+miPbZdRLrJCQzIKKoWPYeNE=;
 b=r1Wi3FKtpWLqqWgL1WzBMIgFUSeraZFfcp1RtMSeebdaLc63H2hEtvfueltOHp2MxYMouwL5L
 zaIesajD1ATCVXaNefmu6LgYLBgQhxbTBEQ6S9I9vgEpqyR4HzgDVYJ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_022741_363801_B648758F 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When writing disk images to a device the last_usable_lba field
    in the GPT header normally doesn't match the actual device size. Adjust the
    field to the actual device size when writing a partition tabl [...] 
 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Queue-Id: D73F3201955
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Action: no action
X-Stat-Signature: i8hgxuc1sqmm56knu1pb4877u16btip5
X-Rspamd-Server: mx1

When writing disk images to a device the last_usable_lba field in the GPT
header normally doesn't match the actual device size. Adjust the field
to the actual device size when writing a partition table.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 674f920743..28198f25b1 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -862,6 +862,8 @@ static int __efi_partition_write(struct efi_partition_desc *epd, bool primary)
 
 	size = count / GPT_BLOCK_SIZE;
 
+	gpt->last_usable_lba = cpu_to_le64(last_lba(blk) - (size + 2));
+
 	if (primary) {
 		my_lba = 1;
 

-- 
2.47.3



