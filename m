Delivery-date: Tue, 22 Sep 2026 12:49:41 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8y4D-00529A-19
	for lore@lore.pengutronix.de;
	Tue, 22 Sep 2026 12:49:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 34F2E201F45
	for <lore@pengutronix.de>; Tue, 22 Sep 2026 12:49:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ajqcNvUT;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FQRXc1XQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074181;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=6R78XU3TrkLPOr9WEQeNHMFyyVU6qo5dyqoBFgYi0FE=;
	b=DsTf27BH6QTsMRRmk1nA3SSmCCPTG6biJQJMhf5kDtGCjlGoEdzyRSx6Z2pNyKc0ijAw+g
	LLcF5mMcaAsTia3nl3/JNphps2t1fS9UYs/XInK1qY3TEZKIQ04/Dgki3fHF6hptn6nqze
	OAE4rdNcOU9saMopSFcAIhWkSHvIS1AVskf/M6mKVaIZGU/yNHKPaEW8zhHH6ouLKHbSDJ
	cYbsMZbqhJB87z8r3j3HfRmTBaskiZpfdo6cv4VdrTNrIJEiyKiYKETakvwLGwL7d6Y6+f
	90KHrCHeat9EdNT816NXJoffK6kLquUULBiyYrHpBitALtNOX+weZfwgHDmwew==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790074181; a=rsa-sha256;
	cv=pass;
	b=QvTEUC3OfsVoeC/+5sogeHSJ2NVi90UjXSEeRW/OnAIWVtJ09GUizJk4cQYU15mTSsnuz8
	322pAxBrdSLSw9K7UbuuLBLDu9Oxer9ZK8OZY0SJ1tyb0HC2eMgjt7x170lR/yqTxUx6/b
	Z1qFOyIMklWNCBdwxfxW9dFkiwS8yr5v4kkmJOmTja9z6O1fC4NOHssi6/UnIt2J8etjBd
	JCkVjW8DkFNzRZZ4u+4DG/2WBFMXAZm4tSMh/31QwAYjDySahxo421VYqE/SVwxNDIT7v8
	f51g0xOieVi56mXiWGQm2TP/HML8XfKRfeAVDD4DP44wRtuVNHwPtjBf050P9w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ajqcNvUT;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FQRXc1XQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6R78XU3TrkLPOr9WEQeNHMFyyVU6qo5dyqoBFgYi0FE=; b=ajqcNvUTQCdT/CB0D3p8mjIBY+
	+WKAaIbxKxhmgwWN1W7E+iNIeOKLs/ymfeI0gJ4dH4wvGRi8UGjKYyvx3awQxRqPffgMZgRLEEnbG
	s+IrCQ0tVLrQ1AP1FVqcnrCsSShIsJl/ikCQdoVJYA5o6Lugz1vFO/8DYnuKVS/0MHUT2LSFHSENs
	Uz5TjtaaJc+NGcNSLTZEC6+3KboBs3ix+XOA8Gy4lGdpNlLLQNwlziIP2Ay4s2mnao7MwfH3E8yqo
	E65YxhxCscqrtSL5wYd/ZExRiB/dwG09P52/pGXjhRpEtOdivXudXaAx6qN1E2HYGrvIsob9XMFMq
	2g33vfxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2x-000000056G9-0fwh;
	Tue, 22 Sep 2026 10:48:23 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2s-000000056E8-3XBB
	for barebox@lists.infradead.org;
	Tue, 22 Sep 2026 10:48:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D2C8B201F19;
	Tue, 22 Sep 2026 12:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6R78XU3TrkLPOr9WEQeNHMFyyVU6qo5dyqoBFgYi0FE=;
	b=FQRXc1XQe1wP/z6bd2wTSCoeLiCZ5UtJrtlhRWbbAydqMKaIeol3lQ2sissnZdoERGjVMl
	8SF/ghodgaDexPszJd7G3xvJsa6ow1ReHqVdKej8hfKzy0U7L6wMWXQoCELsXJnu0csDw1
	Qm8Jj6vUGRs4dLbu0FgDWjJApvaWaLav+annrjKaWVUpkFfkX9bZYC7szTObOSBJBeZ8Ac
	FixzfoJdyKweRcdLDpr37syEeNxiG2Kd1x7vLZXrXLfvFF7PQGnWKjD42gIhAXWR4m2a7n
	g0LFyssdP9PVqZ+cBy1unU/SDOfBfMKrxiEIVDbu6QKm0m5SGirDObBlzEjfSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6R78XU3TrkLPOr9WEQeNHMFyyVU6qo5dyqoBFgYi0FE=;
	b=eIrVlHIAvrK1wBHK/78QrR/Y3S00OsJulZNCfX0kxdXMFeedp28hKul4eoV6O/RlPcikCX
	N2XrUqzZRcvV+ObjUFuHscqpMq6iwyqaAB77w15U8OvWn/W8LY3azvuf+mAv5hGeSxEcuP
	UBEDh9+SlNh2c/q5uUQxozcjJ9zE/7Safb9LLW6zYhrVAeqbYDHsCvhxMI7Q/O+40i0zwH
	7Kp/jfg+OeYt3CK4afiBWy38/TDrRlBl2o180rMSyHXOZfzFySKQHr7cQJDxLwNgPYAUDs
	zeiff56vp92Q8bznEFfk4NVxpm+iSTTEoECcNjBNKWEAMvi2aicFSD2By3nYUw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790074096; a=rsa-sha256;
	cv=none;
	b=FjaUIGNXnyyBZsr9r84a10P+68Ua1arb9NN7mK23PG1ClyrK81eRMyvTZQfN6j5/uIOxef
	IF9Zk94uYs1BqJXtEq4owjI3fpMcOJ8p0PXRkV68liuvFvVc5MYwica0SxqeIo/oSu5pOp
	AuE3LYbazk4Vx8OTCOJ7Z++8iCWTcyo0rXBx4rTkq8NQVgFG5pzJubety455JDwlEDsIWI
	WO67XBkcCB+Gq32WG03mpeQCN/tBNpFjSMFzIV3z574zAHBxrsBZ3OYFjdlvsdnA1fz+6d
	FGvh05KTMA1NC9BmayrLgV1qA1GLRNO36yav86Dh15flwSKBUV4kWNRQAGDuyg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2q-002DSb-2T;
	Tue, 22 Sep 2026 12:48:16 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2r-00000001M6y-0nqd;
	Tue, 22 Sep 2026 12:48:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 1/5] commands: rksecure: exit if invalid integer passed to -b
Date: Tue, 22 Sep 2026 12:47:52 +0200
Message-ID: <20260922104813.317584-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922104813.317584-1-a.fatoum@pengutronix.de>
References: <20260922104813.317584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_034819_347171_F481A6F9 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  kstrtouint() is defined with __must_check and we will enforce
    this in a follow-up commit. The rksecure command used the function, but didn't
    check its return value. Fix this. Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
    --- commands/rksecure.c | 4 +++- 1 file changed, 3 insertions(+), 1 deletion(-)
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 34F2E201F45
X-Stat-Signature: s48ydojr6hk349wr8wgd7onmoa5w9opc

kstrtouint() is defined with __must_check and we will enforce this in a
follow-up commit. The rksecure command used the function, but didn't check
its return value. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/rksecure.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/commands/rksecure.c b/commands/rksecure.c
index d761cac152ce..8f277af761dc 100644
--- a/commands/rksecure.c
+++ b/commands/rksecure.c
@@ -93,7 +93,9 @@ static int do_rksecure(int argc, char *argv[])
 			hash = optarg;
 			break;
 		case 'b':
-			kstrtouint(optarg, 10, &key_size_bits);
+			ret = kstrtouint(optarg, 10, &key_size_bits);
+			if (ret)
+				return ret;
 			break;
 		case 'l':
 			lockdown = 1;
-- 
2.47.3



