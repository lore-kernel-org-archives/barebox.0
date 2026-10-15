Delivery-date: Thu, 15 Oct 2026 15:08:45 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHLCP-00DvrJ-24
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 15:08:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 656AA201BBB
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 15:08:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sMvHRf7b;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DcTwwMvP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792069721; a=rsa-sha256;
	cv=pass;
	b=RkBF/FFD665BjE/LU2/BjXjMHvyedG3vlFiXCrHj2sKDsJu5ncstor4gRQR+eeJg4Sd1YI
	p+cOWNTW/jpWBXSGvBIMOcTx2EKbJs+Oq/V2vk2m7BqNUkfE7YKYAp5Lx8GHtYfNFJUpRs
	wg2bNqy4095kydQiLzrEFiR2ar+0+qxaCBWokv3OtjottCh0lCNwXCL43EO+Rx0pr9K0YC
	IxUvwc2WieF1nN9qZM8BYQWjgY/2MrS5eEnk4MjAXhEaLFMxbKYIadFCW9HlrqydHImT94
	OtqT8DPtPPXxQcDjz4azXMMucz7oTuFEN+IWF/nuTs2NKtWGv3CE2Z39NFz54A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sMvHRf7b;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DcTwwMvP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792069721;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PUOAWpOwbUX+969fAlZBSGYeq4UDnDLBjdxTN1DaY58=;
	b=XPeKQYgZmTw4RfS0n4oNKApUlLZqMdXCnrido2+GSu4PQLFv64NdTCkiVaZLBAcuHRa1wZ
	Psod0uFeZaj8QSdvqzGNEMnbu+MNdj+Syh3qj0J0n4RLkeykiep8KG7moRkBLROc2WuzDl
	lLfjkxV19EiYHOB2TDZZQll0xLTfAm7lOl69nJNsapKNDD3ryyjsaM0+llykzhJtAHTfF2
	0AZ+IvsMx+Qk+6+POeCjHvBpS6Glg3VtcSthz89TxqJHDw49xiNZn+fvS8i2eJwFEZa+tz
	jdScxZwFMhVYLoTHOGeGEHbLOeQAKwao0q3kdacB3GY73DouKXuCImuR9hkj/Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PUOAWpOwbUX+969fAlZBSGYeq4UDnDLBjdxTN1DaY58=; b=sMvHRf7bT+D8bgR1r+CKiQn1JX
	RFkIaYjXsQvII0Rp0+RVHadlUY/hg/HRjDSYebA2b1bPRCc4u/5Zw0ReluBxZEjIMJOvOqFYQD1zO
	fouq1aP4rSnWG7ohdOvDdIvqGNXuX9XGfv4elLGnij0LhUBPOk4ufj5Oct4sSMH1MKprA+yLX6+18
	BID1qlK+SaSOWvoIUX5tcgkxdHumTxqImbo/JbUd8SKFtgqZ4zv0rnPXAjVn7UAAoUXQ+Zq9BHhym
	3xScA6eJAdRpPLnMy2L7gxWb8iturlexQTpNLoGC+acMQIVZTlc7eiZuoJUQHCrr8645Oz1/yw8Ml
	89wggJ/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHLB0-00000000DPa-24of;
	Thu, 15 Oct 2026 13:07:18 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHLAx-00000000DPD-3Qra
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 13:07:17 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0A40A200563;
	Thu, 15 Oct 2026 15:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792069630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PUOAWpOwbUX+969fAlZBSGYeq4UDnDLBjdxTN1DaY58=;
	b=DcTwwMvPW8NdW4z0oBr+S3Lzrwo+maVZKqBF0lCUvJ2pFRwQZOtfJpMrXFecCKfgSJbWkq
	x5W9Jz7R6FvwXb/J0PldOxTgS0itK7YXecxSmOvDwhasPMU4KGOrpFc014e0zpZmeGGiKf
	JI6olX4wy15lbN1L2bu1Sk8ddyTOiRWc+Z8Jd69u40/sbWtvWoePOKFcUuBNgst6j4TVEV
	3TOWcgXGnA0QEhJ6hDQCZy3HDcXGnuMXke4FL8CUZBaZxGWfiwVzw3y2zrl8b3iPV6nmGc
	Tb1tRfo3tqP4Dr5Kt9BPAyRYbMP7gy+ZtCgiwu6ehLqVBLjratFr9WMrdGn1aw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792069630; a=rsa-sha256;
	cv=none;
	b=KOkDmZz6Xy1yCYJXaV+w1rBVhEMo3NKXNh0ZDhpMR1PR5cQUcClkCXGkmdfWef+RQZNcbo
	+/v5Q2hH2Wdj//4axrVJ6NssJYEW3v5y20qR9gaDfQY1tKmn+sAq4mDGwmYdrXfkIaV1VO
	MUKdaREROEV/wdVxgsdV6uJSugcUeRVIhEMNvz1GZfmoXIddwiL/JeUuRgO4uRAibQ2shT
	2p6WPNvEgV2UYFERx+LjLU37rkPQgeT2UslvY2CZadbvi1qlFZy4L2gyFuY9JQJi1x3O+0
	G+wlTi/+uwFxqyZTrTkkIszpDAp0HXRZBBv9Sg7n+MzEL2dp0cAkvo4aXNKVPg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792069630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PUOAWpOwbUX+969fAlZBSGYeq4UDnDLBjdxTN1DaY58=;
	b=XYH5M1vSB5R+Rrb2dw5dfV9su3BW9cs5mGnG/v1l0pisU6C6PtnE6JRE+IJpPvA5us8zDd
	LwRizFDukquNZ/S7ZmILpCIB3HfGDBdjBZQV7tgOqjMX71GpsEydOsDVzBPcepHEuCKKYD
	DKiZwwHJwrCX6WOqIXOLtvop64GaOscMl/rviiS50YWnXKZQvrY+RoClhmK3/xJQxL/rkI
	Z3qJLNXVPZo3BTQCJ5yNac9Aes5iQ/5fIlCR4C/HFzX8egFXC9wgCICNyKVEgZueptz1Q9
	FhfPOlcVyhcVqKtvHot+0lKkdywbjy4PqX5xN6GTg8MJ3hN1MVhe80N+f90hmw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id E9361FF991;
	Thu, 15 Oct 2026 15:07:09 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: fpg@pengutronix.de
In-Reply-To: <20261015092554.210438-1-a.fatoum@pengutronix.de>
References: <20261015092554.210438-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH v2 0/4] efi: payload: allow extension via fragments
Message-Id: <179206962993.2298281.16159482816371778683.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 15:07:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_060716_032346_D700BBBC 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 11:23:26 +0200, Ahmad Fatoum wrote: >
    CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload, because
    > it has no internal DT at build-time and until recently not even a [...]
    
 
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 656AA201BBB
X-Stat-Signature: ftwxe4d3j3ucseemyyjxryo4zefishjw


On Thu, 15 Oct 2026 11:23:26 +0200, Ahmad Fatoum wrote:
> CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload, because
> it has no internal DT at build-time and until recently not even a DT at
> runtime.
> 
> This series adds the necessary bits to have this work the same on
> non-EFI-payload platforms.
> 
> [...]

Applied, thanks!

[1/4] efi: payload: ignore ESP state.dtb if device tree is populated
      https://git.pengutronix.de/cgit/barebox/commit/?id=df4e979e8b8e (link may not be stable)
[2/4] kbuild: dtc: introduce empty fallback device tree
      https://git.pengutronix.de/cgit/barebox/commit/?id=756c8a432495 (link may not be stable)
[3/4] efi: payload: export device tree in barebox-dtb EFI variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=21a84d913166 (link may not be stable)
[4/4] Documentation: efi: describe device tree handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=9dd077fdf33a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



