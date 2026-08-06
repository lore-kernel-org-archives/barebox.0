Delivery-date: Thu, 06 Aug 2026 15:06:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrxnW-000Bap-3D
	for lore@lore.pengutronix.de;
	Thu, 06 Aug 2026 15:06:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8C986200FDB
	for <lore@pengutronix.de>; Thu, 06 Aug 2026 15:06:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VAFFDx8A;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=Ol35meuuDO8wmfbIhggEEg/c33NMOAHeOgMHmkprUfE=; b=VAFFDx8An6BI+1PBSkqP9VFaWP
	B7C2j3rm8SWuZtTC6dIB29uglCrY0BbjrfTdqcogJu2prMpsiixSNM4NrBxnVxglXXiWnSZEsqbNk
	r5H2m+XC4BO5DUJgUbLIdSFP8pc3yCSoQD5H7dLO6FWrd/EdSvnyGZWntgYVkxfFCC99I/Pi9VIke
	kBCR+jco0iteWmHfzf3Ns6XLFFuJ/cIpR502CCUISICaLOqVxwD+0xxd7l9OPxQqOZmxbYo+TjNhk
	gauyMPj5pZ85dwSCJesArWGTpeHS1kfjexOgGg+NACYcLdI3zS4b4FjASG0Ndtx4O1tvjRbKgl+j3
	Syk0L7mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrxm5-00000005qgx-3yRZ;
	Thu, 06 Aug 2026 13:04:41 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrxm2-00000005qgL-2poX
	for barebox@lists.infradead.org;
	Thu, 06 Aug 2026 13:04:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 43B91200FDB;
	Thu, 06 Aug 2026 15:04:31 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wrxlv-00064w-0d;
	Thu, 06 Aug 2026 15:04:31 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wrxlv-0000000FsgQ-0NZx;
	Thu, 06 Aug 2026 15:04:31 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] fixup! net: designware_eqs: set upper 32bit address for
 DMA descriptors to support 64-bit addressing
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, zhengxiaojun <zheng.xiaojun@foxmail.com>, "Ahmad
 Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <20260805142143.3845127-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 06 Aug 2026 13:04:31 +0000
Message-Id: <E1wrxlv-0000000FsgQ-0NZx@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_060438_866832_78B53DCC 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-05 16:21, Ahmad Fatoum wrote: > net: designware_eqos:
    fix left shift count >= width of type > > CI builds with -Werror, including
    -Werror=shift-count-overflow, which > fails for STM32MP ena [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Queue-Id: 8C986200FDB
X-Stat-Signature: gpim9urpykusmetefgtyeynrq9wezo4u
X-Spamd-Result: default: False [-1.71 / 15.00];
	SEM_URIBL(3.50)[foxmail.com:email];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,foxmail.com,pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_ALLOW(0.00)[+mx:c];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On 2026-08-05 16:21, Ahmad Fatoum wrote:
> net: designware_eqos: fix left shift count >=3D width of type
>=20
> CI builds with -Werror, including -Werror=3Dshift-count-overflow, which
> fails for STM32MP enabled platform that use EQOS on a 32-bit platform.
>=20
> As des1 will have always been programmed to zero on a 32-bit platform,
> we can just suppress the warning with a cast.
>=20
> Cc: zhengxiaojun <zheng.xiaojun@foxmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/designware_eqos.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> index 332dc7eb7366..4011b006dd70 100644
> --- a/drivers/net/designware_eqos.c
> +++ b/drivers/net/designware_eqos.c
> @@ -955,8 +955,8 @@ void eqos_remove(struct device *dev)
> =20
>  	mdiobus_unregister(&eqos->miibus);
> =20
> -	dma =3D eqos->rx_descs[0].des1;
> -	dma =3D (dma << 32) + eqos->rx_descs[0].des0;
> +	dma =3D (u64)eqos->rx_descs[0].des1 << 32;
> +	dma |=3D eqos->rx_descs[0].des0;

I also stumbled upon this and was halfway through implementing an
alternative: keep the virtual address around in private data so that
we can directly use it instead of reconstructing it from the descriptor
ring. I've sent it out now.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


