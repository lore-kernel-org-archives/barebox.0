Delivery-date: Wed, 18 Nov 2026 15:54:12 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh35-000njg-0r
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:54:12 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 62CDA205ABD
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:54:07 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="IBS4DJ/q";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=bg+7OZwP;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013647;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=WCpMJBl/fbTtyOHBlsUgjvCfiJcg3XAgHor3EFw+Ixk=;
	b=U199Xl2PZHqQBKoZxf49ALnqO+tBGkZEs0Xq0WveffRVcBx18huMPJM14opRgCbtd6qzGS
	iZ2q5ZvEqTAvfDICFDy+DCOtXHsm3B0gDRAiLAF8EuQXboiVbd0/sidgP9qABF5MgCvsR+
	1NlHYrq+JbfB0qRU1TuXuJj4QcU2etZNw381WrIS1kYMdhqDSThbDW52adlvW3SEE/tTu0
	EWuzFaKq3akVD7MlzQZtRFTl3/WFtlkK0P2mVl40K/WcNIqdY/Xc3tDAEV2NDqhqSkCfuj
	7QqjNIQ1V7YqqYtYHkj3W0NKb3pq+vqdv8GOs4NDMbo2PlpExdAGWZIr4aREbA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013647; a=rsa-sha256;
	cv=fail;
	b=Zx6BoimyDqQyBZhHjNB/qM3pav8Uc8d9yuasZ5Lon8aUAwLsBjeIFx0CLzBnObVBSDsnVQ
	X5D/gxkidwt4nrVQEkM8NMX/X5IsNYp98WPPoUJMROYs9hk7/Mlh55iQF/EXuQYbG7LdGF
	VvrLHdkthM9XY0+wM/1G1hrV9OITXxut9VAjQ3pQwyLC83Ho8ZVj+Be5J157dZcpFkDCgN
	r+cR8q/qgu4tEMiO2rtdwe7CH4ACqRpVbTJvuwZGZ9qZRBKGAJUTHuYYl/nfl6upx5Y+kI
	B2hV2fqp+VhEgr2oPj6mQX1lMWzuwZSOTqM9vjjysoAuPoknZ6i3MoU4+sRWLw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="IBS4DJ/q";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=bg+7OZwP;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=WCpMJBl/fbTtyOHBlsUgjvCfiJcg3XAgHor3EFw+Ixk=; b=IBS4DJ/q33AVvX
	ZZP7XzxkHGm+unwzdi/14XIKdcM7Hqlo60Hj7p8ED27ZpUHFu/CJZhsKgfY1y7qRtX+0yY+EuTxA2
	n1lP7DPT1K7/5F353s3UEriQGC4WEG+S5JbTRQ9Xi27WbFhQ76U66cpCWHcSABBQ27jamV5v7X59E
	+lK++W/MOHqXKvaQEwMcUclMHgxiHiRYRcCxQqEHobUqfzCaCbfHIPIkXQEyzEvN36rmz+3WuAZk8
	VoC2U2rfHAZy2vanNxc00ETK9PrMfEzuC8Au0Dy0FMu8M/RyYNkSiPfI1EUU+xUxBiQHzsP2WYKYB
	ealmP5k+SKSyu1opyqYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1t-00000009AID-3RWH;
	Wed, 18 Nov 2026 14:52:57 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1r-00000009AFg-1ko3
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:56 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AB9E3205AF3;
	Wed, 18 Nov 2026 15:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WCpMJBl/fbTtyOHBlsUgjvCfiJcg3XAgHor3EFw+Ixk=;
	b=bg+7OZwPJrKw6J5sSkL3hhFeTugrcvm629wcsA62Y/KCABD8RMb8fut1cd5Zf7zpx4HRpv
	DKZlPCrbWC+cLkG8sONlquGaFdF6slxNp3f94QVXF6T9zQOm/SRH8tGNSdJKoV/T06XgwF
	SBv7bZDJb5PscQfvy1iMH+xYmfbsjY2eDth9rCsJrwpU1DpWrtyyHDDo/iUhFvEEzkn0o/
	tuB4ZENAjzgViyik6VLgtU+GYQmnvZkliv5Q24RakbhltfcSRr3T99Fwv3+3QAV0oEft9f
	I0nLVTARjtNXs0xXu9KXIVD9sVL8hjXCZgG34Rgz9Phm1f73+BwKvt4XBFbsmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WCpMJBl/fbTtyOHBlsUgjvCfiJcg3XAgHor3EFw+Ixk=;
	b=NqA+jr68h8HH1jZz1xxmVdRt1VSS7oRPKTOc/BXdJ2ImKL26FCE6rIpL3lY8K+w3bZWxi6
	V8suAqebtd8VAoZQXMOuhdYEsi6URTWCoQfELVwl/HQcvEKtJcE/rig9f1uz/1lfdi8Ti5
	F1/CPlK2q2o4eI8RsDtE1UFap7J38q7VDB3VuI58KjRMkh1ZRxe2WqYRRTMx9QlWMeJxMD
	8nh45ouAWbjz3niBloh8uRF0RfWZBm8p3MzE+7lMGBRIt9OXY+5uxlgALPbatKcggOGWra
	pIk83SMKNCZNj7LqlYjSSF2PqJrboXAPDfBwfyxjfIdBEwfy3m9Lavb5jeDnxQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013569; a=rsa-sha256;
	cv=none;
	b=cqd/ShAHvLHQk4Hk8RadcGWuD+PG+LRUeCMqKsDGCHdZLO/OK74DA1DVYtsxfxp7QD1XXB
	MiOd/u0LN8K6Vc5fLyTOOwAdwaznNSyryy6as8od+C7G5kjcErqfuzXca7b2Z7Ip5KCnox
	/LJisEFHUiKZoOQnLLySdIHJdPF68mx4UE3q+QsL1N+x1PhK/1oh+qwWWk63o4gumz2Yk1
	7FxNhQB736KK4jJlwj1fxBuSzh2sbdk4MLwOlKSp7piVyhI7BL4TjuLtOKzdEWcLCFh6tB
	d50CvBaikyIpjI4yVM4IqCI1OK+5YnkSsYHi7nBy9hYZrSzQbzesxB07/5FpwQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:52:03 +0100
Subject: [PATCH 13/13] fs: efivarfs: zero-fill variables grown by truncate
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-13-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=1170;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ffLC1S46TcZEzhfyT9TPvtR4UBuyDbKr0g94Z4N5bvc=;
 b=a66ikHChYGB4gwZQSf15wYrMWU4kUP/4rwRwA3LdxKIrRhkTA8utHbXDvDtU4RPwuIojuGQ8t
 UTR7382AbtnBAJiIo+7ZqbLV6F50eO7zBm4KoNKNDIHqYm/fwhmxxFm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065255_646153_6480BC0E 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  efivarfs_truncate() grows the buffer of a variable with realloc(),
    which leaves the new bytes uninitialized, and stores the variable with them:
    write 1000 bytes, ftruncate(300), ftruncate(600) -> bytes 300..599 hold whatever
    was in memory 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 62CDA205ABD
X-Rspamd-Server: mx1
X-Stat-Signature: eh9hq6aippa4mepujhpbaoeeygaw8w8d

efivarfs_truncate() grows the buffer of a variable with realloc(), which
leaves the new bytes uninitialized, and stores the variable with them:

  write 1000 bytes, ftruncate(300), ftruncate(600)
  -> bytes 300..599 hold whatever was in memory

Clear what the variable grows by.

Fixes: 46b5a6d6527f ("fs: efivars: implement write support")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/efivarfs.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index da826234b9..efc6d9a12b 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -232,8 +232,11 @@ static int efivarfs_truncate(struct file *f, loff_t size)
 	struct efi_runtime_services *rt = efile->priv->rt;
 	efi_status_t efiret;
 
+	efile->buf = realloc(efile->buf, size + sizeof(uint32_t));
+	/* what a variable grows by reads back as zeroes */
+	if (size > efile->size)
+		memset(efile->buf + efile->size, 0, size - efile->size);
 	efile->size = size;
-	efile->buf = realloc(efile->buf, efile->size + sizeof(uint32_t));
 
 	efiret = rt->set_variable(efile->name, &efile->vendor,
 				  efile->attributes,

-- 
2.47.3



