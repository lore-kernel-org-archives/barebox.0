Delivery-date: Thu, 15 Oct 2026 16:06:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHM60-00DwkH-0Q
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 16:06:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D5E372027F1
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 16:06:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="uH/HHVxW";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=K4G1e7ST;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792073167; a=rsa-sha256;
	cv=pass;
	b=QFcpTkaiWfL240AB+6TZje1pjf3Ar/osJiatJQSj4BsMkh9iBb3aUpREjd18ktWwqOY0RJ
	bA+e51KH0om3u0zOO6aGtvYbrK565ahar5sB96z9t6vk5UZNaE1NIK1WRC7AX1i4qxUp2O
	vNnQHxSUsXVKI1WuBHngJTL4z7DdSORuXJU07tocWwEh5e1L5BC5R5N2pFTvBPpXqh+iJ1
	7Z/mNErQ8AhNwwDyF8yw7VALYq3h4H8fNbL/0y++bAhDWC8XHOb55jeddqkgQOnM83q++d
	5VCaTiANLD3nCWn0Qu4tOvYv7SN3itlacaOSaoGCZF0Wx3Szo/Q3G5AtBTqeTQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="uH/HHVxW";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=K4G1e7ST;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073167;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=RTHUoLCU08T0z9wHL76UDKRGAxB47E+HxitsUgYpyww=;
	b=KcaQJc21abiQaDJFChsuadZFKeBfOU2d5jB/xy5mIF698cjJIZFsYOnOaVTfi1nnVrC2a5
	CalxbJOO83p9oTPg9TjqpsUrUg43kq8QwIi5L7ndwnEwzfv+jhHh1xPqxD/YknCv1+2pam
	XQKdbY9sT8ZMmLdiiVPGXu6R6yoaqnvJ7nqyKkSSxA1IxwR/uL9uFvkPvWFzBBM036Adlf
	xxe2ZCRznOZiD2d5rqXRbiqEIfrjWihSgJcgRV20BsmDCgPvVbcsp+Mb/+Jhff22IF49Xj
	w/iHEU4ywFVR1Cle2Ja2RJtcO+n2KnDDonce2viSNWUcqby/xW7tDvvieye1Rw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RTHUoLCU08T0z9wHL76UDKRGAxB47E+HxitsUgYpyww=; b=uH/HHVxW7PqZzy+1vbK1e1hMPS
	rJDEAP7sqlxyZDT5oSSvDGzYGYHBWNYEemcC3/jJwQ2eVB6b06vwookBorc+DNYG70gsZ2mPqaVUs
	uEEJCo6N//64g6n+cS02s/s/Ijr56lYZaoCC7Zj0/oSEMjDG+qung0WCsESUQf7aHBqixSbbf+H1K
	pIdQ9NwJ5pkkSefeQUWPq2iNNDnA1dqFHY2hoS2MrTMKCmbAUDiRhsNAW38WbhfLZ1nQfTSvceVPJ
	TPDRtXIa1/3ZH/gm/jUtnrqnNd6tw2Sb3dWGy2n7PZ+LmYDW4Sjg1kUpDpS/EZF3MnIf7+5qnVPzS
	VDv81zOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM4c-00000000K1z-3kl3;
	Thu, 15 Oct 2026 14:04:46 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM4a-00000000K1J-0T8l
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 14:04:45 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 825E62027F3;
	Thu, 15 Oct 2026 16:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073077;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RTHUoLCU08T0z9wHL76UDKRGAxB47E+HxitsUgYpyww=;
	b=K4G1e7STbvuwpyVgdNYg9pQwCyxjGf++8eaYq6Iw5XmNQQbBPD2yM5i/xkDo3XIp1vgu+C
	4eKw7poRoHpvybHt3goy5Ai0FvbKVxyhV1VCjVuSXQQNiRAvDMPBlQoBGstzY9Cgc0OpTm
	nnOGA9howjnwVDvMR2TVfTClPwJk2UZdQnM2PcochEsD2YgdmyK8g7f8+ucIN9DS0+hIan
	zMt7Rc2SBLvBd6abatxwHqM9KNOPttDacNTCtNrGnDXL97J8OsfHRJf9zofcEZLrgJfjOY
	m5eqhwtZrvGiBXQh3c8J2+kuNQkcJrUJm056IUjFOMPnFTMN7su3Y3oBwn3NVA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792073077; a=rsa-sha256;
	cv=none;
	b=X1iwiNQJ3Z5e4qjK5PFtrIzZ3zQgXnbJRz/Mr44XfWDjY2I/DOvBiCL8Ibf4ITuHBzZOB8
	uP4LP0imEtgFuNtcJuYBhVsME56Z/Ss/I56mg7u4tbV4q8cO1Ij02gvOR237AFM6TGhqdM
	B7GoDy95NubNXISQPiB/6xGsruZSsyhnLdMhZ8T/BTFTgMN3z9hlPr9DwEFhMPfjUpudDz
	jwz2cz6rDUBu3yqWnAKVZ06a8mb2m4jDZ1flyhZItTkQOL1s/1zcQB4FvQ4QkF3qQKQa+p
	jrU9amAFfI2M1w3FouO+mPn+SqvE+fRMMdkwM6dXVFrGZAs4QoZ9KvslkJ5kXQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073077;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RTHUoLCU08T0z9wHL76UDKRGAxB47E+HxitsUgYpyww=;
	b=K1HpQl7HuW/4qTGpwySMJwPS0UOS/iU/yPcTA+AmoTPWVGFtNWAk64jRE0bYWwT+s3yc/b
	g6e8pVtY2i5ZFXc1k2CAfbqWKizrI5aepGv+2pudCwTfTdoDMp3hLetfTjN5J8gKHxthf+
	4Y/hqGRWrAWZu4+JFkpqmtWkJA7tN8Nd5/XBaL0BQLKpS2om5YZ1fEL6e/7wvdAkUJY+6+
	mt72/WC/H7TkugLGy+M2xBNVIKDS0XquznYPLshENM8srk7ADdBjDQfFOx02eEs0P84k4X
	NsSZPMKxJVhaCs0a3aIo8vneetG2Kg5xoZnO+geyC7i7TJ7eny9EPZra1c19Ag==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 69C2E7402EA;
	Thu, 15 Oct 2026 16:04:37 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] sandbox: console: only look for ^\q on consoles used for input
Date: Thu, 15 Oct 2026 16:04:33 +0200
Message-ID: <20261015140436.1148772-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_070444_496212_70FA0D18 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The ^\q panic hotkey
    is checked on every byte any console reads, so a console whose device file
    carries binary data, like a future 9P trans_fd, kills barebox as soon as
   the two bytes show up in the st [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D5E372027F1
X-Stat-Signature: dugf4ur8pcyz7na9di748dd8d4fakz86

From: Ahmad Fatoum <a.fatoum@barebox.org>

The ^\q panic hotkey is checked on every byte any console reads, so a
console whose device file carries binary data, like a future 9P trans_fd,
kills barebox as soon as the two bytes show up in the stream.

Only check consoles that are active for stdin.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/serial/linux_console.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/linux_console.c b/drivers/serial/linux_console.c
index b8303dfd12ef..6256232d594b 100644
--- a/drivers/serial/linux_console.c
+++ b/drivers/serial/linux_console.c
@@ -38,7 +38,7 @@ static int linux_console_getc(struct console_device *cdev)
 
 	linux_read(d->stdinfd, &c, 1);
 
-	if (old_c == 0x1c && c == 'q')
+	if ((cdev->f_active & CONSOLE_STDIN) && old_c == 0x1c && c == 'q')
 		panic("^\\q pressed - exiting");
 
 	old_c = c;
-- 
2.47.3



