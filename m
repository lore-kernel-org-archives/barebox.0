Delivery-date: Mon, 19 Oct 2026 13:46:16 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIlol-000bDp-1n
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 13:46:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C709A201BFB
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 13:46:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rl1W57k9;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Bk6GpO2t;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792410375; a=rsa-sha256;
	cv=pass;
	b=MyfWhAuvcqbkUNs+XIWNKHkQ8eItuprKzq8HKhO0lcYHGa6BcdSBQ9CqALNV54ngaaXcV9
	yz43J+lRk2GBm61zMtljvsSTdBR+7KqNJCANSJD1PM5EWGuHbhhVMkduHxC4bJZyesJOPA
	eqf5NCq1U9CNiJuANxr+AgmJZ9RQcPva257eHSzaS8l1obgqjX5adujiXPoM3Y1CHnfvEM
	+SNV/NYP0tnAGKlUKIuhgu+GhgxQjBsuUEkYYiNWE2PnK0rKla8IVouy4sbySe/EURuVw+
	oXySlNIEG09hP/TKRJ+/3J2+u2l5o+NbKG2N9TyNiBig3fqVxZL70dIvPZAS1Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rl1W57k9;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Bk6GpO2t;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792410375;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Use7nXQynjA1Rv3UZT+eNpeZsNegjMT6Ax9cnDncS7I=;
	b=ebgShJRuSxxKJ+5nVOXZ9X4bnULKcd/Gzgd6scv8RVfFI2K8mRFnc+dqaJSyZCNzQKcxyf
	mY4CWTiXDFatImIrncob/802SAvRaS2GQ/3ngaljOMtQTIB9+FW0b3Gz+1VnxITh+TD5XQ
	Bkve0SKpcHkaIqQTBb8MS3Jy6euDQUzxGkgiZq2+IilqHXGmd0JvpNoqCp51nFFZqzepWc
	7pl08hCVcZiRtCxHcsCZvg4MnjusQ06lAwlZfQ9cLAeoD2qAU5d0vjcnbUP2OFYvpY/6kY
	XdKUOctAX8fr9N3jy5HMHIxPFsdXS5bY3HzwwG4tN5fEfAzfwHMrKJCY+4Qq3Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Use7nXQynjA1Rv3UZT+eNpeZsNegjMT6Ax9cnDncS7I=; b=rl1W57k9LmkpeqRQODWiQcl8Xy
	+HFA35HbvzyurdceNtv0xoifsIkR2XlACCkpyQKMFoohq7R/G4i+wG+/tu8mCLBylg4cXK5eAJq+u
	0FU1PS7ZY+K3PXUkE6Z+gIQ27fWWO0tTJmpU58oJHDHkLIQl+ssRFbOLGrmWO2+dH9dr14tlkvaXA
	Nfp0OP/ugSn+CrHsyxw2Qt5e2rGcA+NHfzojvsK9GT+wxq6To5PUJha6KgDwmjY2vQitLQ2ia6nOE
	YwiWCIVbRNDvJLZiJ3l43aL5ITIVaN4u3+WNMZdp4TkgKWABgVViV/uIGafgeFxmI1Tq8N9VZ6gmF
	tbUXDTJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIlnX-00000007JkW-3oRz;
	Mon, 19 Oct 2026 11:44:59 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIlnU-00000007Jj5-0JQY
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 11:44:59 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2A347201BFB;
	Mon, 19 Oct 2026 13:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792410294;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Use7nXQynjA1Rv3UZT+eNpeZsNegjMT6Ax9cnDncS7I=;
	b=Bk6GpO2tnYOaro5BvDvDIOhCXaLJuVZO7ZRifxeTN2Pv4eYUY4asttJ8/2hkSyjEaKT3ZJ
	vzeenaBSE+nAHtTwJ7tSEkgpKxiHAwDctjo1GCj3xDYdPdWm7Bm+UElgnQEIoduOJoLYpP
	YPBOPHjz0CtJu3NdlsKD2Dbjn8phALbQVjTsyRg5sVs/3ufZ8AxkyjXrynCUgcHXS3ZOKx
	QUYfS6o0XUXOG8q72KQZQMoJXCAs8TRG5Kxg8iZI/bf6FRUx2MKn0yAmYRYE4iFyC1bBPH
	hVOWwMLu88ErA9n/WgzLEeJWI2FAlhijkCsnY7HSHXAaRYbK/AefX8oT1O7ZFQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792410294; a=rsa-sha256;
	cv=none;
	b=XzsVTNx6QuhuJ5Y/wjVJwR1Lx3/bOoEPW1fab3ZKv0imbM3nFO4KIx1W73nf2a/2shymOU
	W2Qrkc66vckjm2BtiDfe6P7Ct/hMuyHwkaGV1RJsgEBgobXIji97gxbVBlGEPvxHlsloGD
	aD6el1g8KQsjU8LpgrdakCE30QUC4MCBwO4qHLv3DkOY/P+XHOSK3xaRFbM2I8igltq32h
	GSQVWsiita3IACcyKGrgwCGVBJbbIPexITFLsUjUt3i4I7mXXIemmfmcsKla3mawBiFzwm
	Jnf4+BntZ/HF9T9Ntv8LI5UIpC4hCWKZE8TDJTXe8bjdhacyjG0XXd5j388LyQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792410294;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Use7nXQynjA1Rv3UZT+eNpeZsNegjMT6Ax9cnDncS7I=;
	b=cnzgTG/KwD4tp2HSWNLCZcISkl/p1nd8Y8MN/LNphxtZ/hsCtK5Vshy+8CtGkzgcuQjyq1
	uqXeCM4vE/pd/MS3ddgzJraguUSvTjWfeDSa8qEDtmdbX9kGQxHHQ8/RcnTlOnlCM1kmQx
	0i+4l1VFjVEoP7DiZzYf2VnFoUnqERU5VCzb4ZpJRrRrrKVt8YwI2wHbwByPve/Z4mQ3nR
	xciYm7iWDQH3o9Z/csjCCr1qJl1xWWRNDG2rQv4fIra6CMlIXJUIRWtOxSzRFoZvANtLGL
	NxAV9yNdV1QVSxeKX63MB0Bn37QNeRBJn1i9q2uYH7SismItVZNiYfGIWmOOuQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 1805AFF899;
	Mon, 19 Oct 2026 13:44:54 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261019-atmel-mci-fixes-v1-0-6a636f3b28ca@pengutronix.de>
References: <20261019-atmel-mci-fixes-v1-0-6a636f3b28ca@pengutronix.de>
Subject: Re: [PATCH 0/2] mci: fix read timeouts following SD card writes
Message-Id: <179241029408.2495271.18387423895103962186.b4-ty@pengutronix.de>
Date: Mon, 19 Oct 2026 13:44:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_044457_732096_062D77A2 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 19 Oct 2026 11:52:42 +0200, Sascha Hauer wrote: >
    On a KSZ9477-EVB (SAMA5D3), saveenv fails on the first attempt after > the
    SD card has been freshly flashed, and larger raw writes to the > c [...] 
 
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
X-Rspamd-Queue-Id: C709A201BFB
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
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
X-Stat-Signature: yaeii1q4ix1tzhpo83hgiydfnmc513pf


On Mon, 19 Oct 2026 11:52:42 +0200, Sascha Hauer wrote:
> On a KSZ9477-EVB (SAMA5D3), saveenv fails on the first attempt after
> the SD card has been freshly flashed, and larger raw writes to the
> card fail as well:
> 
>   ERROR: atmel_mci f0000000.mmc@f0000000.of: command/data timeout
>   ERROR: atmel_mci f0000000.mmc@f0000000.of: command/data timeout
> 
> [...]

Applied, thanks!

[1/2] mci: atmel_mci: improve timeout error message
      https://git.pengutronix.de/cgit/barebox/commit/?id=bf7b978c8c3a (link may not be stable)
[2/2] mci: wait for card to leave programming state after block writes
      https://git.pengutronix.de/cgit/barebox/commit/?id=d43bedfe62b7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



