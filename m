Delivery-date: Tue, 17 Nov 2026 09:23:04 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTET2-000MOZ-0P
	for lore@lore.pengutronix.de;
	Tue, 17 Nov 2026 09:23:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ACEF7205A22
	for <lore@pengutronix.de>; Tue, 17 Nov 2026 09:23:04 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oBSeHd33;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZojF0BFS;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794903784;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=aufOxnEc6ht22E2oWZkBvJiUNLgSNyKSPRI2j8uaHrg=;
	b=QMw70WNaPB+1GX98Ktk2y8tOaSt9HkL6wzfdnppwhC5P59w+w4oPoWz+ITr6IymnqPRU57
	TXnF8iFs8BBdpEprI6MrqE9yFIpcoc2oyjjwofggnOr9RkzDMTCA27yYi24VVxVMOPUzI9
	127grkY6IPX/Lknf3mGzAvejWtKAEtZDutUurv04sNfXeRJByZxeZmW1BrVFF/fvleHpbS
	ZT2ObZVV9m0QCMaSdL8A8lhpllKmQWuUKhIYUgt/XYzyyFqKSITe40EqhpmoeXM1KGRKNg
	cgTNEHr5pO2q4FWAygEq4JOPM9Nn1EBzFloYyEuPoul8LvCC5PzfujXjAuyzQQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794903784; a=rsa-sha256;
	cv=pass;
	b=CRe3UDj1t5JP+J7W0J4i1uzejVXp6T1ikibcryaksIj5LldhZJwJ3AwgNVs9Na8a1Dq2ks
	1LgiXjCIMK8GBpjDPyxJN+0EK98XsFkfJ+ZtI63qy+Y2S6YxLbDavs6+0wNKBcoFzz8FIJ
	ztt1VkKhSPQtlU1iV6IXuH6iEZceN4hGpXTDpYeRTc4RuCSYG4g5NySxpT1mdpRoGBp6dH
	J7u9r3eonhqoG5bhNmzej8B8UrdbsIHMk+gKTp8UPxsBnACTntZK1Vn4peq5VqLR23sKFd
	wSmoo9wRdCHwqFPA8RA2pAa99P+fT73Z7JSsOKsuecAIHqF0oYaor0oIBHXzWQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oBSeHd33;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZojF0BFS;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=aufOxnEc6ht22E2oWZkBvJiUNLgSNyKSPRI2j8uaHrg=; b=oBSeHd33NjrGM4
	xZKQChUJjsI+5vMKAop4QCYuVCyoOs/4pFLtHoKujnjFDV5SdV3oFplQESQiW2sroQWl6GF2kODUN
	u61sPImWj7zFXc/LYKzFfGNU4FP55KPO364PbYHDaYamFavM70HBeAELzo2wqewZnmb9sDPU0P70k
	HCAUaL54neg8q79ccPsb3XGKSIKLRnKhr299A0WmpoAyxPy0xNbQPgMEQLWip24KFtI3UigNF1bRJ
	lzorjrDaLYAWi8iGGh7y5HH3oL889/hNCu/miY6pclT5aIa/6fi854W7yuDM57FWzlCzrHNKuslZb
	kHaZwJV3uvSj+FWhNtLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTERm-00000004rv7-0KmP;
	Tue, 17 Nov 2026 08:21:46 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTERi-00000004rtb-0mJo
	for barebox@lists.infradead.org;
	Tue, 17 Nov 2026 08:21:44 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 15C0E201917;
	Tue, 17 Nov 2026 09:21:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794903698;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aufOxnEc6ht22E2oWZkBvJiUNLgSNyKSPRI2j8uaHrg=;
	b=ZojF0BFS1lrGJfGzXcNHp/lj0KUFuIBXb8xIzUkyOzLk1UyrbmYTmquptWok+geeLFNUOv
	FwqoDCF8O2RJz9tGmdZS7+ntDg0RRZFtlnoAVwMMNRKdtcGWCRAU719Pjh51Dodsvdpzif
	fr3ocVfnbKwFeLr7Dv6mpTYmYvz7DQUlvOaIT6lhvTeQSG/CJ9J5z3F7QSJIvwjkpX3Zdc
	5eTin6hj3G/SwGmwS+ldXH+bUVp0A/7NI4BZSJme6gSN2oMd2wZg6xe/o74NuNlBt+jY1U
	B1F9O+Qg6aObbHHPOsi7z2BB0fmMCZIUQwzjEZFxAlZFrqS1kQLLnPq4S07TgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794903698;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aufOxnEc6ht22E2oWZkBvJiUNLgSNyKSPRI2j8uaHrg=;
	b=f1PT1iH4uZoH1L7dMnc+i7/8eLI0C1ev8DltN06EoFByLa41ILdA6Ppx2PaPij7qNa7Io/
	GkNhz5be+zq3yo3KvdN9cSlyRx4Tcnb4wFZg75ICG3DYencewCbN3IVD6Fq+1IpEyHJxwK
	Heq5oGhdSvLl1X0fT0YPtt+85PeSEvjhAIa/1kUCTv8WZLmnORKifHraAErBC8QfGF9qUB
	hiDm1opWgDsdEWni01F/4X2a4iRKXvtGWtV1QxWSL5JDu7GphgLE8Ah4kQUdt/b/peOqkU
	bwHCESH32I+MYDlNneCX0c7yvHe6oaWwXiqrZi5Er2l2Qk5D1zuNO7Q+Je3LBw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794903698; a=rsa-sha256;
	cv=none;
	b=XIZXT/PrjvPc+NDjOpV4SN78zLzS/pTsgqHSUF8sZp/4d3Hf7qynmeHls73BF4rwsmCVl2
	TSN9X/HIBRYqWwJcTJ9yfDE3VeEJrI0EF1OC1tEozNC221J5DoB+224Yf1PP4YaLf/E/kZ
	6sKYJh3DaZTptLyITYFO+RZr6T6l3XWh0aaETNS1gP0akiKTTQJb9C329rz3TPPjktN9fN
	KHLuCGRZPO8qhTURw2Q4V+jtF6R6ifJcpmEhNmYNbD8LVsuT1kyzHhTEF1NQTd1ET/zesM
	ZBtbNCRUBUJYwBwIDFbxwOBAMZEjt//Zp2Wtm5Vjb8FHsI64DF0qT3rkGiYjzw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 09D80FFBC0;
	Tue, 17 Nov 2026 09:21:38 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261113184905.2137464-1-a.fatoum@barebox.org>
References: <20261108101110.1270196-4-a.fatoum@barebox.org>
 <20261113184905.2137464-1-a.fatoum@barebox.org>
Subject: Re: (subset) [PATCH] fixup! commands: mipi_dsi: add command for
 easier DCS experimentation
Message-Id: <179490369802.2182349.2392269548795431387.b4-ty@pengutronix.de>
Date: Tue, 17 Nov 2026 09:21:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_002142_385256_251FA6CB 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 13 Nov 2026 19:49:04 +0100, Ahmad Fatoum wrote: >
    The option description is overly specific, as the option is short for > verbose
    anyway, just say that. > > Applied, thanks! [1/1] fixup! commands: mipi_dsi:
    add command for easier DCS experimentation https://git.pengutronix.de/cgit/barebox/commit/?id=05b84a481b22
    (link may not be stable) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
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
X-Spamd-Result: default: False [-60.45 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.84)[99.31%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: ACEF7205A22
X-Rspamd-Server: mx1
X-Stat-Signature: cfz79k9t1punx1y5sh6eyafi43sscjpi


On Fri, 13 Nov 2026 19:49:04 +0100, Ahmad Fatoum wrote:
> The option description is overly specific, as the option is short for
> verbose anyway, just say that.
> 
> 

Applied, thanks!

[1/1] fixup! commands: mipi_dsi: add command for easier DCS experimentation
      https://git.pengutronix.de/cgit/barebox/commit/?id=05b84a481b22 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



