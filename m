Delivery-date: Tue, 01 Sep 2026 17:17:23 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1QEk-009gXs-2N
	for lore@lore.pengutronix.de;
	Tue, 01 Sep 2026 17:17:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3EC94200F5D
	for <lore@pengutronix.de>; Tue, 01 Sep 2026 17:17:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pMcp1qKJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mF9672C00OPSZE1T8G1PlApvsxMk5/CRsFX5Twc8Um8=; b=pMcp1qKJJx6g1xqVUgierbryJx
	AcCYygE6dhYDqB3WbIXgJGROPb0ZSxT/EKxCAlGopJkw7eTuy6Bo2mreqJ2nNZ/C3gsi5YmX2K2wY
	o2wIt1mUT8TRDClvmgdtG7vcjuEZw4N3tGKCkhW4KqmOAlQ5AFRXNuS2FuyvnUikKec5YJF/nQE8S
	8RHYmFUOM4wD8V24t4sebx0Yfpv81ZP0/6gECiVIn8jIE3q/T3WMLkPDaP76jL9Zdty+O74Kc4+VE
	/sJT6/2Q7ScJD6WpowvBTNFWlLw1iLSLLcmA7ywmve7wnhGppgCYmuEOrsdRp14/FtqWc0TsHU8XH
	Nv4mFwXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QEG-0000000CSiW-3j3y;
	Tue, 01 Sep 2026 15:16:52 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QED-0000000CShX-2Y1n
	for barebox@lists.infradead.org;
	Tue, 01 Sep 2026 15:16:51 +0000
Received: from [IPv6:2a0a:edc0:0:701:daff:4114:609c:7715] (unknown [IPv6:2a0a:edc0:0:701:daff:4114:609c:7715])
	(Authenticated sender: fpg@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7B51F200F5D;
	Tue, 01 Sep 2026 17:16:41 +0200 (CEST)
Message-ID: <0f9f2f7007672dbceb1fc53f2c8705115d8d5677.camel@pengutronix.de>
Subject: Re: [PATCH RFT 1/4] efi: payload: ignore ESP state.dtb if device
 tree is populated
From: Fabian Pflug <f.pflug@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: fpg@pengutronix.de, chalianis1@gmail.com
Date: Tue, 01 Sep 2026 17:16:41 +0200
In-Reply-To: <20260826121640.2936023-2-a.fatoum@pengutronix.de>
References: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
	 <20260826121640.2936023-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_081649_798688_9F7C0EE6 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hey, On Wed, 2026-08-26 at 14:15 +0200, Ahmad Fatoum wrote:
    > In preparation for allowing the state nodes to ship inside the barebox
   > binary (as we do for non-EFI-payload already), add provisions to skip [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Stat-Signature: p9q3t17m3jn9nujig7wbnhctyhc5z7s3
X-Rspamd-Queue-Id: 3EC94200F5D
X-Spamd-Result: default: False [-57.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[f.pflug@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Hey,

On Wed, 2026-08-26 at 14:15 +0200, Ahmad Fatoum wrote:
> In preparation for allowing the state nodes to ship inside the barebox
> binary (as we do for non-EFI-payload already), add provisions to skip
> the external file if barebox already has a populated DT.
>=20
> Also for the case that a state had already been set up, skip manual
> creation of the state node.
>=20
> Assisted-by: Claude:opus-5
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> =C2=A0efi/payload/init.c | 16 ++++++++++++++++
> =C2=A01 file changed, 16 insertions(+)
>=20
> diff --git a/efi/payload/init.c b/efi/payload/init.c
> index 1e5f2eb8cf56..db4bc25682a3 100644
> --- a/efi/payload/init.c
> +++ b/efi/payload/init.c
> @@ -284,6 +284,7 @@ static int efi_late_init(void)
> =C2=A0{
> =C2=A0	const char *state_desc =3D "/boot/EFI/barebox/state.dtb";
> =C2=A0	struct device_node *state_root =3D NULL;
> +	struct device_node *root;
> =C2=A0	size_t size;
> =C2=A0	void *fdt;
> =C2=A0	int ret;
> @@ -303,6 +304,17 @@ static int efi_late_init(void)
> =C2=A0		return 0;
> =C2=A0	}
> =C2=A0
> +	/*
> +	 * A device tree built into barebox takes precedence: any state it
> +	 * describes has been instantiated by the state driver already.
> +	 */
> +	root =3D of_get_root_node();
> +	if (root && !list_empty(&root->children)) {
> +		pr_warn("device tree is populated, ignoring %s\n", state_desc);
> +		free(fdt);
> +		return 0;
> +	}

I would put the check a bit earlier and more sophisticated. Currently I eit=
her get an info message, that the state.dtb
could not be found, or a warning, if it could be found, but the compiled in=
 dts takes precedence.

The first is confusing when looking at dmesg.

/Fabian

> +
> =C2=A0	state_root =3D of_unflatten_dtb(fdt, size);
> =C2=A0	free(fdt);
> =C2=A0
> @@ -320,6 +332,10 @@ static int efi_late_init(void)
> =C2=A0			return 0;
> =C2=A0		}
> =C2=A0
> +		/* probing the registered tree may have instantiated it already */
> +		if (state_by_node(np))
> +			return 0;
> +
> =C2=A0		state =3D state_new_from_node(np, false);
> =C2=A0		if (IS_ERR(state))
> =C2=A0			return PTR_ERR(state);


