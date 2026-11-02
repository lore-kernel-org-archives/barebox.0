Delivery-date: Mon, 02 Nov 2026 15:30:39 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNt3W-006PVz-2M
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 15:30:39 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EA018200153
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 15:30:38 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=M+Ojg+r4;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Ylw6ErcS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793629838;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=OPTtFc6Nox2jhQ6bb/vGvzVLeiW/2GfBkR4c45gE5Eg=;
	b=eo5i0HLErTB8OItQDtYnkIyG8cLVr2duCH8vUV2R58OzPcxpgBNi7S0pcsKZQsCPoi/PqO
	4hGgza9b9SgZrdMiQ/t42/SstomrDKLpq29wdD0X59o/UWWT3Jqc4dyBcO9X67UYvib5gF
	F6HCecltDMH9kXKAfF+P3txpIX93GZeaZJbGccUya9pacjuoYL8BNb9I3dXE5f3QCpXN1S
	iRzRwEPlLLyD4uNF3h6L+sNov/easEBnzmpJZMrG36S1+C5WMLU3sZKXwDdWjxyaXuK5Vu
	kOpThkye1RvJ18qyW2p+a7gHt11qUiWMrO/JK36m3rs+goXaDT4TUY5NNacAGA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=M+Ojg+r4;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Ylw6ErcS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793629838; a=rsa-sha256;
	cv=fail;
	b=NMVFpBwXeUoZpUYM5thCTeXL/WeA4j/FDpQgGBIFntcr1ztRAaxR8bdLFm1dHsJo2Xrr1j
	ibrxfRH6DY5MS6Zvp4TxQ+EmHf5vfnsZ+YP/gWwPdm99Wsno/8yyr7BE6jMUtBomy3nBIT
	uhWnB/MQec25cWbn13xIrj+kB5qNfcXLtHQfeqa8hILfhJLxFIYBNs4fQjK/V5SU1O89x0
	8Vue8n1RVnonM07v2D66WFB9U/Bmw3AS9/akl5kkMoTYDSaQpd1Op4zu+t4XBxD6dcHHcJ
	k3S+vYRtBKA8y1ctCuqyKdFUBeDMJf8V+YiZxnDWDOn2J60Zirb4c5XwYmFuhw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OPTtFc6Nox2jhQ6bb/vGvzVLeiW/2GfBkR4c45gE5Eg=; b=M+Ojg+r4Z96byX/7mlQyhSDpnl
	1ntQSEvtW8WFWMVX7S8YjeIcNioVNb67ghcABNgsCHGoT7K6RPe1h5ngDr7uhBPrwfYk53eZ10ycz
	mxbxdChnQoO4g5zWM3J8OU85K7EiroIlB+lCh2Oue7AnNnyJuWAcvE7YrzKeiXC27xYl5ZsPJH5tH
	H32+eR0d4A3gIp2SCXC7dpzq3K3BYpcMQA0Je8yd3X4f6Mk8Uy15SVNkMSkManCzeh5CQ69n9vig8
	YVLgvsvdsPmnz2nQir7AqEWTRh9Xzc1SykWX96UsA5gteXIqjvXLoxK42QaNCLpA48K6+SIZ2mWUa
	wjp/82zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNt2V-0000000GpvG-0FkF;
	Mon, 02 Nov 2026 14:29:35 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNt2N-0000000GpqI-45fw
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 14:29:32 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0033520039C;
	Mon, 02 Nov 2026 15:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793629766;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OPTtFc6Nox2jhQ6bb/vGvzVLeiW/2GfBkR4c45gE5Eg=;
	b=Ylw6ErcSPDj2XUl+Lb9wObUpnWJibIrG7Y2w7c9cNXRPsZOMCafAk1SWRUd000EDxRkx3T
	e0XK1Kc8xKBJbNBUIG5YV5hf5tTxDpq0Vt36L9A3EwBhgIpd5JIq33UhcCAK9++rgQytci
	ZPglTQThNEKhAV1FyALcEfsficK6HKhOol2mjzOT6sPPSt4cWDlFDBXXeABSUVme+YCFmk
	dgdfX/q2AFVVBqJC3fiJImSdYL/a99S1NA9WXg2jAUkevAJ4XKm1rmD6oMi0NFRiseanCw
	KzlZUR23bTP69wM4IbM9gUAe1E7wNyR8SHV2PIZBX2jzskQLlIYFhBcP0/MUxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793629766;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OPTtFc6Nox2jhQ6bb/vGvzVLeiW/2GfBkR4c45gE5Eg=;
	b=M2lJg5W1z25ZcJMprPs3rWwBjV+HLp4HZndmp2cNKtV3jia8JtEiX0icudrosWfbilvaVT
	Drm/f8yet0FXM2IT2VcQ0jPUItYsq5eCth7kurIy66GzPHYMhk8kR0VpF87S5/OfI2Jhcl
	ZicCoXzdpt7bwPmh0WGktxnS+e+Nh1swPTb3a3FxCkMGI+4yrxPyD40iA1A8cvNGkD12Pv
	YOgPj3G7kb+x4wzI8tmNF0EtOITBwixxtZLaT9Cv83Yi5dSg/IfXMqHlZUikJZbmVQMA7n
	N8YWDLD6kZrAQKDl/euCJBUBHIQOj/lDec2Cb9S/dhvg18wW1Ym2cIxk1WKwUw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793629766; a=rsa-sha256;
	cv=none;
	b=EuVCKoC6zeWzmt+aHw3TeGfXrAoFal5rAWerAtRh42szdJPrFVEbua0H3ZIE2a3t5eLtsB
	g4ygkFVzAmabQjnhG8DKEFNi6CJrlcY1H3M5LzRc6DfmNapYDMGQdHf7p1r7xD+0P3IMQK
	QqvfCN3zq8q2xcdR/wh33b9c268hIOI0W3REOgn5B9xHmG7vpRLMsGEDAV3ILpqGu5kidW
	lVbSMB6/Ha/dNDRUZY13JsKi/YsHChW+hlElQLCyewmLbG2vJ4UxxXybgWEjX/N9QtCrcY
	WUsFUXz5hy6O3JoqHRaoCVUkdCp747hANgi4roda71TwOqjlgDiQm9k/O1BEuA==
Message-ID: <69649d23-655f-4a66-91d0-7eaeb0ca9311@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 0/3] fs: return error pointers from ->get_link() on
 failure
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <8953d8c7-38ef-44a0-b0aa-4cf8e5d609ad@pengutronix.de>
References: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
 <8953d8c7-38ef-44a0-b0aa-4cf8e5d609ad@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 02 Nov 2026 14:29:25 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_062928_173342_533C8775 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-11-02 11:21, Ahmad Fatoum wrote: > Hello Sascha, >
    > On 11/2/26 10:08 AM, Sascha Hauer wrote: > > Like in Linux, the callers
    of ->get_link() expect an error pointer when > > the link can't be [...] 
 
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_MIXED(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: sapd71exazrai8tmzw1m4gtiys985h3w
X-Rspamd-Queue-Id: EA018200153

On 2026-11-02 11:21, Ahmad Fatoum wrote:
> Hello Sascha,
>=20
> On 11/2/26 10:08 AM, Sascha Hauer wrote:
> > Like in Linux, the callers of ->get_link() expect an error pointer when
> > the link can't be read: readlinkat() checks the result only with
> > IS_ERR() before copying from it, and path lookup takes NULL to mean that
> > the link has already been followed and continues from the directory
> > containing the link. barebox has no nd_jump_link(), so a NULL from
> > ->get_link() is never legitimate there.
> >=20
> > 9p and nfs already return error pointers, and the squashfs series posted
> > separately converts squashfs_get_link(). This series converts the
> > remaining file systems:
> >=20
> > - legacy returned NULL when the driver's readlink failed.
>=20
> What do you think, is it time we (meaning you, because you said the
> l-word) do something about the legacy file systems? :D

Yes, sure. I can have a look into it.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



