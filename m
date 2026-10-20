Delivery-date: Tue, 20 Oct 2026 15:50:39 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJAEh-00136s-07
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 15:50:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4920E2021EE
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 15:50:39 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Zw3jtwls;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=d6JKAU1f;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792504239; a=rsa-sha256;
	cv=pass;
	b=Ixdio6/QHIRMGYHbCUrDC30wwE5CWOONNI8l5akt7K35bPRopDxKel/s5TiTKt+KNP4kZt
	uSfq8CoooNxjIx6M/Men7Ne1W46MAr/NVP6mzfDyTakJik0QyfH1QBmB5I5FRAP0SRWo33
	RRJunw09j9Ay1mQ9Q6v8/lBOWyWFNJB8RlRoy7KiXGmQbAMMOVcbA8/23Jh05+ghK7FbyE
	PtceoRDsdZplCPaBBf8s0+8RG20rGxhs+QlCELiMCG2QZZu+X/SEVuSY7UcwIJxnJQiXXy
	Rl7Aig/hLmUPGior8ATX2ruEcSQcQGzkofIZ7Wwf8o+3tEwzx7xQFZQ6dPsTrA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Zw3jtwls;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=d6JKAU1f;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504239;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=FvTyJIthSFnQwDab67vPvo1eqq29wFRNtrWrCADVlPA=;
	b=Var2F1Lyt07P0vMUgRoDDa37d4dvP4iukO4ksSMJ3dGjPdSRvIfiQY2PBbSW8vkxptocW3
	fclpFA5OnjfWXw/Yjj24d0brCNeAqp+JTg5+kniCyUYYISxRkx+2ma+IOxFsMxlrwmhQx9
	abqtoHWoji4oiEeWJ+avbwIObEmHl8OLPZLL27CwhTpeM3Z+MxM9biOcdf+pcKYsFiigyP
	cVAgKE5kVNNkdqXCR5rLQgxqQtUPwq57801RMUUFm+RAjv9GR7lWthWr3X6v247lnQ+qRE
	jZI+/EprexgWtpO+BQCxCzJxNJaqlvpvkDRG6b9ohUN0XUYl7UmMRqE92juuwA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FvTyJIthSFnQwDab67vPvo1eqq29wFRNtrWrCADVlPA=; b=Zw3jtwlsjNEqY16phO5z7+9hU6
	LCRwWuqzWv4dXb/WZGN6qF6a8vRSfMsf4VofBBh3fnYGIH2tkPLSWfHYq7NArcQ8kCMYheSI4dxxL
	2NbBOMXJfL0KF/TWSpp5jgKDCIoOJB2bhfOiT2+b3LgeJlBGCeEC/3J1ZAhzUcFyyubQ4lO9EulWa
	kV1sc0dG2sN5b9qe1d/9y0eB3gU1lT3DYq7lQ4roGVyPUFXTEiSx0TNGCdafWLdskDTZmcdORIQBu
	ABt+HRvOXCMWXcnvmjWbiC0YEYBECCe8tDBdK/fiqW5VFE0m+56QJ2p1ddcBzT4YdFR7oLPGOedim
	QFULKtaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJADa-00000009pX0-1XQr;
	Tue, 20 Oct 2026 13:49:30 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJADX-00000009pWH-14ko
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 13:49:29 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 97BA2201B9F;
	Tue, 20 Oct 2026 15:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504163;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FvTyJIthSFnQwDab67vPvo1eqq29wFRNtrWrCADVlPA=;
	b=d6JKAU1fkDCrzj2B+f1h0mQGU6aYWP6X6Lq18CQzDaY7d+18g46qJR9wmsx+C3NaTB548U
	SjNlQn4157F4/7PU7PZyapktqr/0RCE0P+SjeqDfz6XAj8aVA0N51J7EHXuiu95qeNSZ+3
	5VZKMQRNp2vItj6fsMTQrHAPwwitBkDsRrVShWrXLyHWSxuQar0FJGWl5girvgavQTLdVN
	uJjrxxcbHLR0r6bNpaB/J0V1zBxTo8sSdmbG95IMN2EgArN/Y6B+oInKv7KBAT+qwezGKy
	oPpnSkQ35pQD43jDLdGMw4p99hluizJB6cIX9OSy+7i0ESuOxs1yS9QiRTnRLQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792504163; a=rsa-sha256;
	cv=none;
	b=KfX8g5XnZArFwXlr9Oja1QC0PuzDB6uOV2X2qAHJEBmSJkCotjJU1iSjpaCcLNEtgIu7EC
	/C3RQzNY2ill6Qzc2EMEUqt2yp+OpZD3hR1JDKDALht+H5J9BbuJOEanVgQ3ANM6QaIkBb
	3CvLdOJxezHp5bmKcfwD145Qq5PApm8gYZajn+tyqmeJNT+4xA3CcqoFDsDZdXo+OzkA6J
	TBcLL+f/HH8tpHZyrNW9krkYjrwZ9SR5LG5wbhAxGQILskPIKuwP181XsmkzWIJO0ta+Ln
	HZnMeu3nUKVkfQc12c/vwjK6ev8ULU5sLOPZDJgzjVwXP+Uca8wr/hkGIPV6YQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504163;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FvTyJIthSFnQwDab67vPvo1eqq29wFRNtrWrCADVlPA=;
	b=TEoVH8nqFdUe8U5VLMV18cY9n3JYyjnqqjd0+xVG9i1Kz62BAAq3e1vH6PG9oZpfLC6XV0
	STtDlLLy9qX+xzYMgQBsa5X75v92eQBjtx4XbITipzLusz+GEEV7B8CRESKpFv8FDS5V/Q
	gpjbmZtJC96xmUY5AZ2RARYUycKUqPTlj0hnQgomuidzXk4AOVxCpFFq9rb8+xThtKRHPu
	+VthHdQb818Q0hYf9vYgzVwcxLMG1E6lzwQ5SBqXl1RF64arwjq3Zo4jlpbjAgXQc2QjTw
	1SOx9Uv5JBPk3T2XrADGX0aifYEkZ2T1IbPDK+GHccTc38uBnel562UiuL1Aow==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 8833DFFA47;
	Tue, 20 Oct 2026 15:49:23 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: lst@pengutronix.de, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261020085339.1398299-1-a.fatoum@pengutronix.de>
References: <20261020085339.1398299-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master] ARM: dts: zii-imx8mq-ultra: move i210 below the
 PCIe root port
Message-Id: <179250416355.2715094.12659182849984813056.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 15:49:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_064927_459091_FC30832D 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 20 Oct 2026 10:53:38 +0200, Ahmad Fatoum wrote: >
    Linux commit 2f42bbebb7be ("arm64: dts: imx8mq: Add Root Port node and >
   PERST property"), which came in with the v7.2-rc1 dts sync, added a [...] 
 
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
X-Rspamd-Queue-Id: 4920E2021EE
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ogq4efyb53e78kae49wtc5pmchasaqqx


On Tue, 20 Oct 2026 10:53:38 +0200, Ahmad Fatoum wrote:
> Linux commit 2f42bbebb7be ("arm64: dts: imx8mq: Add Root Port node and
> PERST property"), which came in with the v7.2-rc1 dts sync, added a
> pcie@0 root port node to the i.MX8MQ PCIe controllers. Our ZII Ultra DT
> already has a host@0 node with the same devfn below pcie1 to describe
> the i210.
> 
> Drop our our own addition and describe the i210 below the new root port
> node instead.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: zii-imx8mq-ultra: move i210 below the PCIe root port
      https://git.pengutronix.de/cgit/barebox/commit/?id=2fd5f4ce4fb2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



