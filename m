Delivery-date: Mon, 09 Nov 2026 10:02:37 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQLGu-008y0W-21
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 10:02:37 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D51AE20177D
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 10:02:36 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gxwK5Jtk;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YkOljV9L;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214956;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=8Cdc4+vFgDiquaywBxqyl6oHiBVpIVGE+t5qZvBkNaY=;
	b=avggaO8tAo5M4Dl9oF+vVAJJ0T5Dn9ijIHcz/NlnBaW1bm0bru/SAqi/uhPnRSdtKKwbQA
	GxHgbUYy0fb6RvVS5+1v1gPF4VYdlX25lFteiGyzzvUD42B/LF9OC8gANlFbCnqRSMugz5
	oE0YsMrvClBSiR3soySBRMhCvCbYc69dhFD10Y/tdD09fY7xS6mMlKc1K/AVq7WdPKhHBZ
	Oaud4nc7lRQGQr4Pv/UysSPtaGymZUH0/f6GuiiZe3YHhrw3nT527zidyEcCDjpdcmq3aa
	spZIBEIYojdtdJ5Q00ilySGUgoynugmfuqvDBNIGAQRLznR8dWH59wLkhNeyZA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794214956; a=rsa-sha256;
	cv=pass;
	b=bcyS5Cie8n0FCb1QY+7N6eRMWXxPIcJDAuKnOPplZkr0b6EQlwweg8tNRNI94dYYY34H3J
	+nk7VsozdzGQw8y+f1DOSyWvVXbqBCEkq3uZPI9l+a1qOJlDRlVpzJZls9lXME+94hN1IY
	+t387g8CYyBT04tX2xhJJrm5IdmiZIXIRY98BGeqXegCoHGgDjcLDpCZffns3YW3Oe56qW
	uwQ3QkLNmlLNah3uCC/UQTRnB1IICimgxUsJFRo4C0sVhX8kJW7a3A55cCfr6EavhzkyOj
	tThkkzAoJCO1c5A+TsHfJ1n/l/wqSH4Y9V3L5d9vkFssf56Vm8kiW+yPzj/ubA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gxwK5Jtk;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YkOljV9L;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=8Cdc4+vFgDiquaywBxqyl6oHiBVpIVGE+t5qZvBkNaY=; b=gxwK5JtkFSs7Kx
	ZkJ+SrgIeVkCEhUJ/602lxCPH4nQ3aTGs5ZyTEpJVlrIQ3KjLqr0Zg8cAI07oyMhoLsmTNsJFNl91
	UO/LQYrEhJoSvIngJSQiBBYoX4gMkdWmVmrD4anRoQdJmj4uxnf0TdhJVBTnVeBc1ch3Z5XdhH3L9
	Kxyqlbxa/FWnLEectGa6e/bm9GSvoAQHlOQJt5rPK0eSYeIQN/6ZPCi7Ie0mVbb0a/p2x5r1r8fcd
	qMCDyOsjrCJGzRGjFbld8VizBnooWDUnT4I8SQ9aD2VaKHIEktyos0PY1NPMhSqQ4g0fHKVxKZCG+
	E/6/c3/8UAk7bAfxZsCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLFT-000000009wc-3cJt;
	Mon, 09 Nov 2026 09:01:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLFN-000000009va-24BY
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 09:01:04 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B545520033C;
	Mon, 09 Nov 2026 10:00:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214859;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8Cdc4+vFgDiquaywBxqyl6oHiBVpIVGE+t5qZvBkNaY=;
	b=YkOljV9L9QrPIQDzAe82e8WX/Jd4VqI8snmRu1PohXY28uiHp6v3NcYHgGB5A+wrn1tOLf
	Af+owyev98tWSYtaqYgNQTSoLhAcvRSPrZzlfLtpv+JaEhFfKDxDZoyUjLO4OmogeiHk81
	R1AQretw2TRyEUc24C2oq/jYtnVPHuiBlnt6d4YeW6jQXGnRnMEixS66oZMyBi4D5R4lO0
	YIoGuMenKOErPV8djzWoFxtuk6O7lT86DUglCn720FIYNjgT7UyeYjcIUG45iRGqWhOSJU
	1fKZ3Ha3p0txwRU5payUyMaj1NM6/JbWUSvIiTfcnzI+FOsMBEPOWJZ2HlFBoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214859;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8Cdc4+vFgDiquaywBxqyl6oHiBVpIVGE+t5qZvBkNaY=;
	b=Do7xLWNt1ed5GgWHsbCButig9l89M1L2bjSenk7CsU7j3IlfwMh8MeCw35wJqxT2jw4ZBn
	Lhj4XtSfbKb7wAS9r622gepLdXHHtR6QcNjIrg+civaVY26FYv5SZwBdmSIRrYAsbapddg
	SAPnQ+DUS8UGhBSnNhdIrQd+ZDb9zQ33fVsLXMvDEbNh9KCKAMW+9Y+QnpaF2XhJV7KCeX
	teVizc2oX4CB/uTkMzL9IUotErzdGGe01bYwo7VKaxJOk40V9KoUa2ZaHv70XvKvPZJSYj
	DdTup+7j2bIkqe8WODAmqR5vYnJcwvY8i0lCP7XcG3Jcy1j5kdCIfR2Nt7cUZA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794214859; a=rsa-sha256;
	cv=none;
	b=XI9GmsV/t/EfBH98D+LW2xX1O91++ebMew7cAU8+X/c95/1ANbQ75hNHn2Rb+/iwzAjFwH
	mSfXZFWgh8azNchHHgk5O/sB5n8JCi0Fib12Qy9vRfy0hfEI/rFP+cOxi90uHCiwFP/5Au
	iEs+xlPcGPwEO2uISasUwBnpGXJiLzs661OgBnFYWiRm1BbWbP/De2/OeshnGS3WuN5Ycu
	4ZGCRFsYJ0zRxZdiRTQFAx6sr+nyJEdO9aNyDAR8Xhtyu7187MjIqEr2QBXh8GK0TF7OOI
	6NYzlOddVtp/t6qMi8ArKB9CSn1E9bimwOroVby8yeFOs8imcXv+IHN6ePxHCg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id A6060FF898;
	Mon, 09 Nov 2026 10:00:59 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261108201613.1401590-1-a.fatoum@barebox.org>
References: <20261108201613.1401590-1-a.fatoum@barebox.org>
Subject: Re: [PATCH] net: designware_eqos: leave the MAC alone while the
 link is down
Message-Id: <179421485967.493373.1956668714819638396.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 10:00:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_010102_908175_D370D76B 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 08 Nov 2026 21:16:12 +0100, Ahmad Fatoum wrote: >
    The PHY core calls adjust_link on a link loss as well, with whatever > speed
    and duplex the PHY driver falls back to, 10 Mbit/s half duplex > [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Spamd-Result: default: False [-60.40 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.97%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D51AE20177D
X-Stat-Signature: ue3z6ac9hye1qiwzouk3n9zq6hkre1rf
X-Rspamd-Action: no action


On Sun, 08 Nov 2026 21:16:12 +0100, Ahmad Fatoum wrote:
> The PHY core calls adjust_link on a link loss as well, with whatever
> speed and duplex the PHY driver falls back to, 10 Mbit/s half duplex
> for genphy, and eqos_adjust_link() programs the MAC for that.
> 
> On the Amlogic A9 (DWMAC 5.30 behind the G12A glue, which isn't in
> barebox yet), the detour over 10 Mbit/s every so often leaves the RGMII
> transmit path dead until the next speed change. On a BY401, that was
> about every other ifdown/ifup.
> 
> [...]

Applied, thanks!

[1/1] net: designware_eqos: leave the MAC alone while the link is down
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f286bb04508 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



