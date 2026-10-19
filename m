Delivery-date: Mon, 19 Oct 2026 11:54:13 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIk4L-000ZCX-0R
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 11:54:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 00C1E201EF3
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 11:54:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0u+Mivnc;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=f4Y09P6A;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792403653; a=rsa-sha256;
	cv=fail;
	b=XfHxreIFPeFMVs1PbJy3i4BDAu63z8ed184amTOhZFXotTSXAxKoHMrJhNgIcUFI2flMzA
	uC+AMcwYX1fpRsCGcvRWkUQZrVLul7zBPu1AZxR0OIrqqkWjNIx1jR2PF9NECC0JnKM/T1
	CUY04yIwXncEtL6fYhZXGIJYWieWXEjGqFQyDfzgi3qeyWXee65XEmfHlstqJOSDV1ZkBN
	f6OxEfY/OenIWqLVTy6FHg0r+hkAGrU+yNy0MuWSOYKb9dgH3pLLLIo2hoTU2vFF3VoEyw
	aL5q8vDfrLES/g0IX/i1ITzHTj2oAO5dXkL45Va/wsN+eFd8zhuSNB1vhynFFg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0u+Mivnc;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=f4Y09P6A;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792403653;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=WBo6DXs4KSYpZN+6BtFl/vis8/66YOUTrgcP8X7+aKQ=;
	b=PDY6ENAnr89hg/J0TQ7G5S70LerQZ1FMfNu/5vKVquOXjLbsaJysVgJNqhEQv6l/IAXxiN
	+lEMUcINJstk3K03GTHMRQBfFL8oTvtaqXtNWLyjA818lkbW/l5OkFKurx3tvDubYIz/E7
	mTfFVDjJFNb16O+Ei/OaZn7rXUOl+949Jq5hFd9h9yzKvtFsE68NwzlaO7EtmBcq6QeURs
	Dv/BSRWUEgWmviuBuF68SZNSoccGXkKCjqgS/9viURCJfhWl0goSAx78qW1d6HQaNiNKnh
	LtE2f3iKbJdDgcYeh/pzlv2rRjNyCp4p2C8d1ZP28uzYQHulYLp/J02znPyCNg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WBo6DXs4KSYpZN+6BtFl/vis8/66YOUTrgcP8X7+aKQ=; b=0u+Mivncdk4Lt736kXp+qFwvH7
	cqNscqN44ESpd3QjxnNb0xYLAJ/lj3Siy42E4XQ81Gh2Jo4nwv2XlTZ6lA5lkhC2EiAMl0KCPFs4V
	rGuCi8lw0/hB7Pb42ZGC4tC8inuMQ5h334GWxKD+EdlbvZolCul5calTUBELzk4Iy0rBNAnQp23zt
	feZWjsQ6MEAzlibLI+AhaBS3Mq3rrQn0cS7/oJ2kA49fSXEPy4CI4T9urCx6FvB2Rw45sVo9igLFx
	zoJ9EtM24fAfgWxi6k7MCIkioT07ZK8DeYdCCpTHOq7EjllI6e3ciUKPb66UOSe/WpuLJdTgzJKgk
	JnMpdTlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIk31-000000074Fs-1uiW;
	Mon, 19 Oct 2026 09:52:51 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIk2y-000000074Dt-3XvG
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 09:52:50 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C9A36201F18;
	Mon, 19 Oct 2026 11:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792403564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WBo6DXs4KSYpZN+6BtFl/vis8/66YOUTrgcP8X7+aKQ=;
	b=f4Y09P6AK/if5t2eh1KMZQh19JcUYJmYYcifMGTix0kC//4yVALIPua9SL8cLLszJxJ1OZ
	WC9o2miY5CAlWakqgENICbuXzzUt5PDIGNpPdWMVTH0fof1/bPMs2SUmZZOImqrS3R2bLS
	jLki80Vm9UDjYoE62/GZ3AvwXzzvQwMARR7bPcr83yAaRlAlpZkIMGjWyedNyglA0BKRhV
	EWdxG56IXbB6TslTFewQEX6BM9AcdZlm7zHnlFYhtVBm6XlAFGgRqx2EY8EJDhrEynbfFF
	d1WB69yjp8IBK3853c1NJOE4YEIXJQyae2Wm/ZMIEOuD7So3zi4oAJoZluOwXw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792403564; a=rsa-sha256;
	cv=none;
	b=AbqpWJtrUn9YO/dX/J/ECSz68ZapNNYgMlx5mNvnLkt+7orx2VvGVtgtvwXJaGLQ3k2a2b
	1tVE36W6iXMa8//iMqlL8qR+/ezvJhDKivq1+u3il8aa5R/QCPMb5lpfYMAgr3XhIUrhmc
	bhzR12wrVQoMR6C5H0KRyJpUiw8O0E8yPp5vrLgtAxkfMe1gou4SsTcJpPtvtV0AjLVD7M
	QMHaxxQnZlpt0EsyCTACowZweLEmB26go2gOwt2vUIT7ntrefkii91ZtiWH3T4OzjqPBzx
	2YWI4smBpoZdhFBUV/0hEdiUCjAzmvmshfCxZxwRsBb3vswYvR3uBK6OAnZuKw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792403564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WBo6DXs4KSYpZN+6BtFl/vis8/66YOUTrgcP8X7+aKQ=;
	b=EIISudvTmLwfyLo2nCM01//3k5ot9t4IXRWc8Tl/4rYDTX52wp8SEAadQV1GYEQaoERnJv
	wXi4A9K/yJacQMGwZ1EmkvjFmrAqUuUOgycfju8C+hvuWbnv09mA7yuf0pOhwDd6EN618o
	S3WOKqUQMiQkU+akyA7TGUoPLhXhBtG1RJBVBw9uNA5IrVQ2MHRe7xGFsZ1RFlkq+WH5Rw
	Z5Rh5+1Eu/R0pQSuk01RVypOY2wwNI8/yQiKtZln4wwqSK/xkWPOyMi3FvmVBhsA0K2ez1
	b/8Ei49jz167DIu4XE78LHsL0R3vrlBG3iO6iX0TOC+KvLQV5H5fzskcZxNVzA==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Oct 2026 11:52:43 +0200
Subject: [PATCH 1/2] mci: atmel_mci: improve timeout error message
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261019-atmel-mci-fixes-v1-1-6a636f3b28ca@pengutronix.de>
References: <20261019-atmel-mci-fixes-v1-0-6a636f3b28ca@pengutronix.de>
In-Reply-To: <20261019-atmel-mci-fixes-v1-0-6a636f3b28ca@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792403564; l=1413;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jt8g/NHMbfMx2zYon3VLS/QYkRRP4HS6RTgWNgDaJkc=;
 b=BQeiF7ONxC7n0tT3ZKSAnd1/ifxY1toeM6FwIFTy3iPddA/pLWVDupQ8ALpvY04yrrl2J/2mR
 nvdpNweFKfCCEhr7N/BstcK/AGnyeAwa+tQ3/+KWUD38liNQol/OvlD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_025249_043295_183A811B 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On a command timeout, the driver only prints "command/data
    timeout", which says neither which command failed nor whether the card did
    not respond at all (RTOE) or the data phase timed out (DTOE). Print the command
    index, the kind of timeout and the raw status register instead, e.g.: 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 00C1E201EF3
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: zjgpmj5mkdm9w5z9syirqmzz8pxy33tj

On a command timeout, the driver only prints "command/data timeout",
which says neither which command failed nor whether the card did not
respond at all (RTOE) or the data phase timed out (DTOE).

Print the command index, the kind of timeout and the raw status
register instead, e.g.:

  ERROR: atmel_mci f0000000.mmc@f0000000.of: CMD18: response timeout (SR=0x04100005)

This made it possible to see that it was a read command that the card
did not answer while it was still programming a previous write.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/atmel_mci_common.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/atmel_mci_common.c b/drivers/mci/atmel_mci_common.c
index 170c021eba..3a081b8b63 100644
--- a/drivers/mci/atmel_mci_common.c
+++ b/drivers/mci/atmel_mci_common.c
@@ -243,7 +243,9 @@ static int atmci_read_response(struct atmel_mci *host, unsigned int stat)
 	resp = (u32 *)cmd->response;
 
 	if (stat & (ATMCI_RTOE | ATMCI_DTOE)) {
-		dev_err(host->hw_dev, "command/data timeout\n");
+		dev_err(host->hw_dev, "CMD%u: %s timeout (SR=0x%08x)\n",
+			cmd->cmdidx, stat & ATMCI_RTOE ? "response" : "data",
+			stat);
 		return -ETIMEDOUT;
 	} else if ((stat & ATMCI_RCRCE) && (cmd->resp_type & MMC_RSP_CRC)) {
 		dev_err(host->hw_dev, "cmd crc error\n");

-- 
2.47.3



