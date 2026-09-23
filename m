Delivery-date: Wed, 23 Sep 2026 08:11:38 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GCg-005KT4-2J
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:11:38 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 885FF201FFC
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:11:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=M+6NoTFh;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="c/Gwy3Bo";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143898;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kQqiggtkLQAv78lY52/O3XngPsuikxrLngJWQpvJ46Y=;
	b=Jn5bTR/unPTG14G1sSYgGOS6BqzL4FdtWs6krAslx28CWIXWyHxKhxXjxAbuj4b285XADV
	k/T+bYI8REgrudYRm7RPBxReNs7lDfRrd2X0GuHvB2zQi5bOmvs0UpjImFlW9jfW1wiSzF
	2ZKBz4Y7uwyjR9yc+eCRiXgB9EZgR9N8kPsFM9IuqUw9bzOuPIo1xCNre9cI7MW2nkGEKc
	09vKXBn4/yN786VLnvIaI2wpkNS+vR8t78H5bRhHPnt9z8QRTAzemR9Z78kbTn9Ye7nyPy
	JJeb07lSXoLN/jIhBt2UcPfUTaewGeAWIkR51yT45CJaaralR+OCrkDBBSdo+g==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790143898; a=rsa-sha256;
	cv=pass;
	b=BPziN2os04KNRkD+sWzw3g4dHv762zh4o/ijSk5WR3wGT/h3ezFi7CQ/oDVSnw7YzMxisb
	qJxcs9QTMZKNN6Omg6Q/X5kSR/uLVL4cD9EBMON8qtl/Z/PX8si2BaPhUizgchOcvGe+vB
	/UxdOpLz72cviakZoPIBgoFpormFgP1t7sR7SFz8YXhWPD91NHrRegDtS6825o/Y6QqrLt
	D5wpdxvnm27MFa+r0pSW4Ke/BFwVaNvDDqhz8NjsBRxAWOssLibySAuQ61y3nBWhQWdMdM
	DwD0KIGcFly8aMR/Cn7rydJWvz7IbHvtjIqq0tEwTvzrAMG1k1fcdSuMlzJG8g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=M+6NoTFh;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="c/Gwy3Bo";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kQqiggtkLQAv78lY52/O3XngPsuikxrLngJWQpvJ46Y=; b=M+6NoTFhPztDZycrvHWQgBeMWQ
	OlwCUHZKzPHwzmJ1ab2z9cpSpuLEfCS19S9Sigd5E7VWCDg42IYHEws5ETGdNBNRXLZ87m+njbgfo
	XFrNsRq0yJPLXxa8YmHrzw/DGkOsrRI/C06RFl2H09t5JctBtWplZ2ZSIlLpGB+6gU5QR6mtqPSMO
	1cWHJfy/ztn/uRwyZN8USQFvkUDbeoTEhlibESQCbZQUapdCvzFL2PBRsvqNZB75PaYGhKg6Takc9
	xoWg/JoLOCA89rr6GQ8XG1t4+kfpDEwMQ6dra03IeI8fy7jrHeSZ/ti3HY/DlZYWoNKMUxQNKN5e2
	FMXFz4OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GBh-00000007FCl-2SJd;
	Wed, 23 Sep 2026 06:10:37 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GBf-00000007FCK-3Btd
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:10:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 16309201FDF;
	Wed, 23 Sep 2026 08:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143834;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kQqiggtkLQAv78lY52/O3XngPsuikxrLngJWQpvJ46Y=;
	b=c/Gwy3BoLwt+QIfrV61EEvH2y8u2z/CA5Xhx7GsgyDy0Xr1isysPDKYyRjrvlwc+El8pid
	Vm1990S5Z6wARn4HVhQLBiY3xBCO7j58DzMEAvL/5gyYToTJM3LPJfKbNxoKQsIKnrHzSR
	SD6+VeAmwuJrKTnH3UzOyB+fLCPrKrP5eBW7fPmwtLFd/YGgAElTR3mWLWetS463+PAT+G
	TN44VrnNo+TTk4A0N8Rs4ZFiTcNDR5dTcmYan8QszAt/0o+zwfmJo3Wlf93bPRU403Ise/
	owAGHrs1nj5FfkWTdQtNbZ46KIslDpBGfmMgRYGa2lA26rQCauJCO17am3vUOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143834;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kQqiggtkLQAv78lY52/O3XngPsuikxrLngJWQpvJ46Y=;
	b=Vy9Wrde/4GXau8/+/9FWaS/TP/dekGChiesxYzh3w/XhKuBoo0pz1cgMJ8e/sSBM0rwU39
	kWXQNwkk46oVhGygyVAHwXt7oXp+XiFYP4LwbQjJ0VR4gNkAcUp+DFO7JGgNK3RquCKkrY
	17PWuqOoINTk1LJVkW6kgttrwCk6GvF1VvTSWGEuiDjwCif/lNH2U5QBSXkIdRkf3HoSM6
	U9Km4m4diFVe42zvZF38s1fjjPxcGjFvYkdO3eunpxZhxbdyVMW8GQTwKhWy7tbEvel1fO
	rkAGZPJfZuHvPmfw92uh0F1eyKseFIdnxULqkigsP72gzIxIqzN/wWvKmICG8A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790143834; a=rsa-sha256;
	cv=none;
	b=XA5wAPjOgMRihGLe/qd1m1YH1aw6yGVhlGzJo2LygI+FOi0B2s8PJ/A+JFWRQ6yOEBTg6o
	5yzTTcDVnqk2fZZ9q8BVnu7+rRbRnZUPe2Flrir5r3hmsP73xP6cQNhqJYC2KOP/NrtR8P
	3th8Je6EBTZYaymmip7gNF0JTAALXaAYk6U0eb/UtauwFHxjj2ggpZqRK5YeuDcI9znOZs
	T9ysc5Pag3i7/0QY+N0fCeKePxsl8MOkWWIhVupasekVn/fkPyzSw8PZ07TDKN6cnoLy95
	uGz8+6qvw9rDK4mlx4rWYlLiaYs0w0vUPFxhzcyMu9UvQh6RRn5kOhDtyGZWpQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GBe-002M4W-01;
	Wed, 23 Sep 2026 08:10:34 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GBd-0000000BoeC-3y5G;
	Wed, 23 Sep 2026 08:10:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260922093712.1895604-1-a.fatoum@pengutronix.de>
References: <20260922093712.1895604-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] usb: dwc3: imx8mp: check dev_request_mem_resource
 return with IS_ERR
Message-Id: <179014383394.2816255.5682573792226999932.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:10:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_231035_959639_E8D0A3EB 
X-CRM114-Status: UNSURE (   5.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 22 Sep 2026 11:37:11 +0200, Ahmad Fatoum wrote: >
    dev_request_mem_resource() returns an ERR_PTR() and never NULL, so the >
   warning could never be printed and an error pointer would be used as [...]
    
 
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
X-Spamd-Result: default: False [-60.80 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.95%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 885FF201FFC
X-Stat-Signature: 9ka5i5y7zgdmhx4j7ikxddgwrdqym9ey


On Tue, 22 Sep 2026 11:37:11 +0200, Ahmad Fatoum wrote:
> dev_request_mem_resource() returns an ERR_PTR() and never NULL, so the
> warning could never be printed and an error pointer would be used as
> MMIO address. Fix this by using IS_ERR for the error check.
> 
> 

Applied, thanks!

[1/1] usb: dwc3: imx8mp: check dev_request_mem_resource return with IS_ERR
      https://git.pengutronix.de/cgit/barebox/commit/?id=e005bdbb0441 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



