Delivery-date: Mon, 09 Nov 2026 09:58:24 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQLCp-008xxD-28
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 09:58:24 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D9F0C200EAE
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 09:58:23 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UgqKN6UJ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XUP4ZOK0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214703;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=rjDW3723Ah0P6J3SNAZ1qNtJyUcYlM+pukdEVE8ljqU=;
	b=FrPnmvb7QyJWWLKAbEOqc9IzeCD+rTTf6slDIQaNgZNAUN+L3jnFyJYiumLeFSmEkyos+6
	DOV1VD9gPJGcjYkemi8PKJxDT9vKAEXrrGxxKA0bM2hb7pSOje/OQz10QU5D5+bgRu82Zm
	wNkAO58JzE0UbjAklAySaC7cbwdSm6wfg7fAi983zgjPxfgfcgYA7f9T1qQh0hyxWtgTWm
	NJ2HA2ZnMruxn7hLFe4ck5FFMmpRtaZV4l9Vu2NgrCI/dBs3hpyGiyHl3kT/D1X2br4gxE
	ff2ctr5mSNE6gOmtXmAayd6ywZrwbeP7Ijxjrc4J7BnRxCWWbV2hWH21zGcbxQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794214703; a=rsa-sha256;
	cv=pass;
	b=eB7kwVJ0kg9Sx6ca7ek8kakFEgfrJ4BOONhMzrHQRe3N2GPAXk4r84v96UoqNHIr0Qpca5
	LHE1i/GWajU2aY9SJldizJCXJSA4Qso1f9skZ8sTYbNno9du98thsuHqaaRKt1I1QKTMal
	pqtvwt4ueyqftry1XCpwOEZ9T2kbh7KS9VqSP9JfetIGNC0u93H0JB4CyBxHGWRIjbGOuJ
	vRgbn+IrC62Qg8/KGReA90hkQOjYq+DEX4XrARqvgU7YGtcfyW614sRiHahGzhaAGZWVC4
	yRMrSDYiTlwxRgadbdPW840mBYimk9No6OlGYeM7jez4p5r+qOImXIBCYdvBew==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UgqKN6UJ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XUP4ZOK0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=rjDW3723Ah0P6J3SNAZ1qNtJyUcYlM+pukdEVE8ljqU=; b=UgqKN6UJAqc3zt
	+c+nrqB5GWpq4fcgCCnXJP9evl2JEg0lcaQ4nmaKlV7RliVx2Oq4AaoXFqLK577FnZYTcG6EGtuxj
	v1TEn6i6Ej8XXTDT9YvaHz0Q1qTdQH16goI1PTB3whazWG3QX9HY+MSI2W0v/JG90YGmVZCYvdJmP
	6/4kGuQZjxpyHzKk1rTJxP5600zMjXUiYGhANx489E3aG7NDColKD7hpatLvfoCdHRGSlh+1EbdG4
	d4S7xrXos1vB74Ge7CiE7SC2WX34OOIStKlYlx3G4vClmmepGDovIykI7cNQuJOmfMH804C+Qna1o
	6Uqexb1N79Wuqb8Y/tTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLBq-000000009a6-0SlK;
	Mon, 09 Nov 2026 08:57:22 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLBm-000000009Zj-1BTS
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 08:57:20 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0A2AC200AD7;
	Mon, 09 Nov 2026 09:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rjDW3723Ah0P6J3SNAZ1qNtJyUcYlM+pukdEVE8ljqU=;
	b=XUP4ZOK0cv40vwZIhGLNZb6dWNgYtWASU3Kqoa3CS+cB6ACgwxVC+zqFuwWf5hGlScKva0
	UVNLwOTrBLTW5NOi4Bxtzmp+HK43BRtBVzQNamSOvnyZrrqckuD4EJblVfsjDBUGre3EIs
	gQOvHes5Xrq9k2lcxMDr0vJafeUzjnEsE0X5qZmfAGbUEfy+tnTKeNu9KOWl2MWJ2VRaQk
	UgzhoPMVG69lYw3nW6VKD92he5yAVsWslCZtOMxdJdmAAy6URMMZIO9M2sq2VHj3AOUe0n
	6YGH5/NcxobYvB6MFRDdw21+lPcqDa51X4ZD9DTZm+cKJOZnKIgbVGAQV7rhtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rjDW3723Ah0P6J3SNAZ1qNtJyUcYlM+pukdEVE8ljqU=;
	b=ExaxB+w+omCXl0Fl2tNWEyeksxqGyvS/hYV5DxqVvYWlI38j2pzFHGNoFAwDlr9Yvw0l4L
	gdyfj8UM+KI0jE/j1z6LyzMHtH3/Yo3YSOz0Hy2bZxmCas6xlCVslAcCO+QvyQ3/OHI3er
	wh482xHt/3W3IVWjrew76GeKFJgW12vp9L0Hz6qFnmV2ZjDj1blxPJuariQbEcDnyHqzIu
	/BtD46PGxwMQYtnd3J/vRdZJdc3u7Qwh1hKQaVKEJ5DzdoHOC0Xcf0zvA9gujQ/52IIlNI
	CCyBdWNtVEiiJVPX3hV/CjYku/Ka31jao+U0KeLZ5KIKEogjga8RHxntG2T8nQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794214636; a=rsa-sha256;
	cv=none;
	b=GCNLZZIG91J28+TWPfM3NsEiPutfsyS/x6wZcUqK5DU2wfPH9PtvtZqiyEhwzfyYJrPyor
	MRuivPmqIvwtQKMP4uLGmSiNQnahg8ZN+iXOVW6jqjJ6PWu2FSYbbc7VnXIR+WxIKSQBw+
	KyvEWyMyRHPryv6bLz3A0H0kj0stPzM2oR3DjGXtS8HFfq5QaEmzx+Oe7cvydZyZB03t0Q
	b8wMp2Nfa1G0vfiaEVoDVAMtB2v4zqyn23ausMx4NFeeeXddd0Fm5hSjc/mZeWI/gQ3Tvw
	GFtIJR+uXUHTzxqJdLLgUz0IGm0oCEMWQ2nIuP/7jav1tdBE++fOxgD9KuxY7w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id E9F05FF898;
	Mon, 09 Nov 2026 09:57:15 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261108104543.1296711-1-a.fatoum@barebox.org>
References: <20261108104543.1296711-1-a.fatoum@barebox.org>
Subject: Re: [PATCH master] input: virtio_input: don't free poller-enabled
 beeper on remove
Message-Id: <179421463594.490792.1834217916547185554.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 09:57:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_005718_504541_A91716AC 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 08 Nov 2026 11:45:42 +0100, Ahmad Fatoum wrote: >
    The sound card of a virtio keyboard is embedded in the driver's private >
    data, which virtinput_remove() frees. > > Drop the free and instead [...]
    
 
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
X-Spamd-Result: default: False [-60.45 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.84)[99.30%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
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
X-Rspamd-Queue-Id: D9F0C200EAE
X-Stat-Signature: yut8ptxops3uior1efrrxye7dyoq5959
X-Rspamd-Action: no action


On Sun, 08 Nov 2026 11:45:42 +0100, Ahmad Fatoum wrote:
> The sound card of a virtio keyboard is embedded in the driver's private
> data, which virtinput_remove() frees.
> 
> Drop the free and instead just disable the soundcard, so it can no
> longer beep. A proper fix would be to add support for unregistering
> sound cards, but that can follow after devm support lands.
> 
> [...]

Applied, thanks!

[1/1] input: virtio_input: don't free poller-enabled beeper on remove
      https://git.pengutronix.de/cgit/barebox/commit/?id=4d054fece787 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



