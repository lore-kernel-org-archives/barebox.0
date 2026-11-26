Delivery-date: Thu, 26 Nov 2026 17:12:02 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWc4o-003VEC-16
	for lore@lore.pengutronix.de;
	Thu, 26 Nov 2026 17:12:02 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 21533205A86
	for <lore@pengutronix.de>; Thu, 26 Nov 2026 17:11:58 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=npQbZEWA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795709518;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=1z2DfXmQukDtp/750qW7XrOKc8CkwbsBxZm0cL+G7tQ=;
	b=XnFHuxlQba13V5EjnvNlVnkqUgNPE/LmE0YVN1q9Al53VGK1w+AUbBP0UEQ4j4K0RE+Alm
	Ooqo47NEoKIAeZD7f3orsVT5Vkc3B8txgFNsAIoi63cvSCqXZmBeOcdM2cvxrknyRmf8qr
	F+bZSv1k3D06ycwne5yiKP6KQY2wTEco8CeQ7qly21pQbUAQw/6XfWTMZe5NiWRgH80z2n
	dQ1SIANDe+Gb5BM1gsXFWiSdQLqwutEg99XtR3lsasviy53I5dTtpcLk5prjcFJBnKQSSX
	tlX2CDR9xV2+P4kSjnEbphkYODsm5enepTGP3wWW11jWv2pLWUYmLJIJbeHd/A==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=npQbZEWA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795709518; a=rsa-sha256;
	cv=none;
	b=HlsV3dSVSyU2XKLC5x7dICupXGEZX38ZFnh1kC8t4BgBKGAGw7QXJ+jIfngDXmeQlsRnur
	0qpkL0+N9TBh8FZ5pEkfAfCJN03AaX4hEu5e6ANzUDDthA50y3b1uv53giaPlPtLBnl+8p
	vQpTPh6I8Fz78KfM+1c1rnoCFK32oRO/aQOIn1sE8q3yXWs+2zX9bQJmd5KN5xBRMNgiRE
	riYVwGyqJLHtLj2VQKFLpaimayRjox4bktCGrWi6Rqp/frRXdM+6o+QYBRVs7Wm7A+w2Tk
	+0I9toYmZjeKzrwXWgU8FkENo1Y2RK+M9cF/IeSrXF0INY5hKPx+QchcRxSgCw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=1z2DfXmQukDtp/750qW7XrOKc8CkwbsBxZm0cL+G7tQ=; b=npQbZEWAsQl+XM
	EWJgZ9Ka8nofbY1IqBnppC7dp4zEpV2mJsAIrQanLrzZrz4FLkPE1BtsiQvLwXVq4k5rq54P38fKm
	aZ0G0/rdHLgglbfWpbGzFTM9hJMV0h4oUPJKRS4O/td87TLsDHiLMzqHf83ymYrzPCWKg601GT/8e
	Lda7wqmJgX/qWxopulojFO3VBsgGZT7mS87hYmIGJ9QohFtZ/aC0CmZX0vztjSoSPUF+ryXPWpzFB
	kffaxYLNngtdG7oqs/u9a84AAVGsR664s8o6nJ+mQtB8+sGAxGPfAUXiyFqTZfO+dQqYFgzssyh8E
	rHHdcq3FBJ7TsaPXEBXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWc3N-0000000DrjP-04Tu;
	Thu, 26 Nov 2026 16:10:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWc3J-0000000Dri4-1MJM
	for barebox@lists.infradead.org;
	Thu, 26 Nov 2026 16:10:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.guest.stw.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xWc3H-00050B-1q; Thu, 26 Nov 2026 17:10:27 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Tobias Waldekranz <tobias@waldekranz.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master 2/3] dm: verity: don't read past the superblock salt
Date: Thu, 26 Nov 2026 17:10:22 +0100
Message-ID: <20261126161025.1929975-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261126161025.1929975-1-a.fatoum@barebox.org>
References: <20261126161025.1929975-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_081029_949543_9B6EB779 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  dm_verity_config_from_sb() formats salt_size bytes of the
   256-byte salt with %*phN, but salt_size is a 16-bit field from the superblock
    and barebox doesn't cap %*phN at 64 bytes like Linux. veritysetu [...] 
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.9 DMARC_NONE             DMARC none policy
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
X-Stat-Signature: ydsn87q38b5tgm7q4hzfttbot5ney8sz
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 21533205A86

dm_verity_config_from_sb() formats salt_size bytes of the 256-byte salt
with %*phN, but salt_size is a 16-bit field from the superblock and
barebox doesn't cap %*phN at 64 bytes like Linux. veritysetup thus reads
up to 64K of stack into the table, which veritysetup dump prints.

Let's reject superblocks whose salt doesn't fit.

Fixes: f2cc4a0a5f3c ("dm: verity: Add helper to parse superblock information")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/block/dm/dm-verity.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/block/dm/dm-verity.c b/drivers/block/dm/dm-verity.c
index 63616ce86f0e..c4f88852b5f2 100644
--- a/drivers/block/dm/dm-verity.c
+++ b/drivers/block/dm/dm-verity.c
@@ -483,6 +483,7 @@ char *dm_verity_config_from_sb(const char *data_dev, const char *hash_dev,
 			       const char *root_hash)
 {
 	struct dm_verity_sb sb;
+	unsigned int salt_size;
 	blkcnt_t sects;
 	ssize_t n;
 	int fd;
@@ -507,6 +508,10 @@ char *dm_verity_config_from_sb(const char *data_dev, const char *hash_dev,
 	    strpbrk(sb.algorithm, " \t\n"))
 		return ERR_PTR(-EINVAL);
 
+	salt_size = le16_to_cpu(sb.salt_size);
+	if (salt_size > sizeof(sb.salt))
+		return ERR_PTR(-EINVAL);
+
 	sects = le32_to_cpu(sb.data_block_size) >> SECTOR_SHIFT;
 	if (!sects)
 		return ERR_PTR(-ERANGE);
@@ -518,6 +523,6 @@ char *dm_verity_config_from_sb(const char *data_dev, const char *hash_dev,
 			 le32_to_cpu(sb.data_block_size),
 			 le32_to_cpu(sb.hash_block_size),
 			 le64_to_cpu(sb.data_blocks), sb.algorithm, root_hash,
-			 le16_to_cpu(sb.salt_size), sb.salt);
+			 salt_size, sb.salt);
 }
 EXPORT_SYMBOL(dm_verity_config_from_sb);
-- 
2.47.3



