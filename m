Delivery-date: Tue, 20 Oct 2026 09:15:49 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ44a-000wHl-1t
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:15:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BDB042008F0
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:15:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FQNYVTSG;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OPcAcv2d;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792480548; a=rsa-sha256;
	cv=pass;
	b=FTFKHVk2LCKZdMjTrbpaX7jqYCZpqSHZhds/nffb83h4KRr2PScUwdHXzjkFGIRMYsfOCk
	QJSXnb7kQ/0rfR9vLYOEgkeeXv+wCsRiUt0a/Z1xNxUQvIRgDZjvuDoZYBE6ddohLSWIdG
	OX7PuAI3ZzxSUBN7xLhbTLHg3ZhmzJ9VETRdjFdAW5FiqTaZ5dfiV8DvUnKqFeBK2EssfU
	qpu+IAkELVpFkRoFtDvjOPCONobIs7UN734+2NqYsPRJqMyvffNUmSFMPt3or22KlNFdYN
	eLpLW5bE9Op7Y6QLdE5nsJu1KkHs1ETXLBx5TR590ObFpHZwh/cPKMwOZtLulA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FQNYVTSG;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OPcAcv2d;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480548;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Iwvv/0ZonR6DUhcoA0Ck7lhm5U70/38kKARHJ6L1ePU=;
	b=MbETgIzDi3a6b8tyqOdbfN+p2S9HhalW0N/h603swsy1C/rlNG8RsO+E1Kr5kGeZVtlkvb
	1U2NwOn+S712b7275FXbIGfFyOnipeDy5F0weVV9lTHgjq9b503PyZS5CspKWP7Fcd4QfS
	9u5HZeCMz/KJpMQ26kF/+bB2XLAG4AygaF2FLNw/OpVDuswLQC/mKr1xGcd9j7PKVxYPhn
	kkKaUXcBZquWZQK4Q0Ev9H1d64tqOzXX8y+hZdKLQ43o/5y3EVBO55l7GimazcMdde7D9S
	SD7Cqaa79v5ezqmhitVcLsViP38MUOQ+eSt5UNz4+heXQf1tgwxK4lCK1adQoA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Iwvv/0ZonR6DUhcoA0Ck7lhm5U70/38kKARHJ6L1ePU=; b=FQNYVTSGR0FcVixSW4LSyqptWb
	6TZYRiVMXEV+ur1O9ktGcumnrCfi8GBoeKgsQgOwQJRBc8A7PIctv0DQS9K8DkUYpT+ygGaDK/3Ux
	nLLm2snrvjyMs2ZQrR1R46f73hZdDRDRxUPB9I0QOf2s4H6VMKcJ8YQbfaLHY7kzmNvhYWVGtV5Of
	QhYIO/stGmZxEzeRK/HyjqBxgseaqoD4EQiD71y7mdrGA6IZVfiYrzB1NEja8lPJyk/T8rAVtKQiw
	suq50Fwuy+F1anpaX0sNlbxeY0ac+Fn+nWzb5Mq2NVpo+Eu4JLVHO+aLhx70nT8M2M8qQ2m0UeT5U
	gkM5uqeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ43U-0000000903l-49Wq;
	Tue, 20 Oct 2026 07:14:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ43Q-0000000902i-1u7C
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:14:39 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 960432021F2;
	Tue, 20 Oct 2026 09:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480474;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Iwvv/0ZonR6DUhcoA0Ck7lhm5U70/38kKARHJ6L1ePU=;
	b=OPcAcv2diqO+r8ZIQltYA8aWtoiGXO0N7vPAxzkyjMYYqJTiD1y6uTk4JU3xgZjgqG/q2q
	cgXypQUcQq3JyR/cRJWujd5YcQyoBCPFMZCSU5Hc9eyGw/18d9yfSo3yCkIu8DUHAMbDyh
	jXhwthG+C18IkHcWBRb3hM9AaMrgjo7deIIpk2Y5CuLjZLuOP7Zes4pP8/+/fG0XROz1ac
	A5ePS/a2whXU7hizy20NlOr3REELDyHojqcS8a+fehWEoVRlyJ6i/JSxdHRpZZ46tEwe/C
	bc1S+VBCKUw+RxLdmrV7I8D8QfdB1NcxWvPm4O4THmaYw1Vym+Vp0XaKqkc1Qg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480474; a=rsa-sha256;
	cv=none;
	b=KBNlVbQzQ3e/Mr3o7UB+BF1DvSFjE8ABwd5KJ4n24NrOrRj1+AmenON7hN3sh1kiBT8/Sa
	tj2hlYuyKQTsxa/IFsOW5cIw1/TTA0atnR9Ttjvxx97qBXWzsd3AMMN061xIpH+IOFIT03
	uGLOGVjCcMkXU1a+jlNKtgLrwYLPN2VSgIpU/3LeeqftGEhUEvSNGaTZvwEK7QYDC4PLnf
	+IJE3QEOYlSy+3Y3Q3N0SRBlYDAIGhgKM5Z7KiRRkQ/KcKIeRyRixBY0QJjOK2S/5yJdt+
	YvcsX/TRUBG0r1yZsZdXaiO/4sSlmnj/mIJpqbF+okS69ROTL+GxFY3Kx886vw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480474;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Iwvv/0ZonR6DUhcoA0Ck7lhm5U70/38kKARHJ6L1ePU=;
	b=gjHmQjz3Q3ktG27sWOs3J0XOLdiiQvL1pintyVmZvxm/XssznHWbj7QuED0rruLAXXpFoc
	+hyqtf8Ym2Jtjwu5x/NSOT1JKNO890z2kJRO1plQryz35AKbVlpUxQ/bC05ZuLLs6i3rVG
	ep9e5qVOAHnayl848h/MQiFNXPo1wvdsoQ30/ndlzl8XEnmo/O6MO3I/hzO+IZ8HCSMkiJ
	s98PbyJvnd+HaQRrZtK18mYnlvLI8WM5JAy4VnuTGo+bOHDvRGdbRCM4HCWEQeze99LdCh
	n9nGa+IJR9vhnC46ReNZuYYClJHjawDsxPo+kg/rc01dMtKOjh5bMnvt8Wo6Ng==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 8AC741010A8;
	Tue, 20 Oct 2026 09:14:34 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
References: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
Subject: Re: [PATCH v2 0/5] of: overlay: fix __symbols__ handling and add
 selftest suite
Message-Id: <179248047455.2120587.5347220652419826609.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 09:14:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_001436_651220_9948633C 
X-CRM114-Status: UNSURE (   3.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 19 Oct 2026 12:05:43 +0200, Stefan Kerkmann wrote:
    > Applied, thanks! [1/5] of: overlay: of_overlay_fix_path: skip symbols without
    __overlay__ node https://git.pengutronix.de/cgit/barebox/commit/?id=f3c88b1eb127
    (link may not be stable) [2/5] of: overlay: fix_path/apply [...] 
 
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
X-Rspamd-Queue-Id: BDB042008F0
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: j7p9drpgmkfry1tz5qo7dey8qkghbuch


On Mon, 19 Oct 2026 12:05:43 +0200, Stefan Kerkmann wrote:
> 


Applied, thanks!

[1/5] of: overlay: of_overlay_fix_path: skip symbols without __overlay__ node
      https://git.pengutronix.de/cgit/barebox/commit/?id=f3c88b1eb127 (link may not be stable)
[2/5] of: overlay: fix_path/apply_symbols: add more debugging calls
      https://git.pengutronix.de/cgit/barebox/commit/?id=ccd4ec97f11f (link may not be stable)
[3/5] tests: of_overlay: add selftests skeleton
      https://git.pengutronix.de/cgit/barebox/commit/?id=39a0a5b3d99d (link may not be stable)
[4/5] tests: of_overlay: add __symbols__ merging tests
      https://git.pengutronix.de/cgit/barebox/commit/?id=afc7580916c0 (link may not be stable)
[5/5] tests: of_overlay: add fragment application tests
      https://git.pengutronix.de/cgit/barebox/commit/?id=b913cc2af36e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



