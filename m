Delivery-date: Tue, 10 Mar 2026 11:20:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzuCg-00A3xr-0Q
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:20:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzuCg-0007kl-Fz
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:20:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/YUTTyOExrEKC+hTvlViPnmetR1Wd9E6rcZ1jG870S4=; b=KrIZdcXJft918FsjAeADA7VGAd
	5AIT4PHZqrostU4OkgWsMT5Ffs/iz0tjJsGkKN3QGcvkZC393McNHg3I1ZKa86dF/bt9XoSA9j3hc
	H1nEKbeuMZq6M23PHL2k6/Lllpvvf7QXtODzXTObWcN5y5Mb/dtJMKrWpOQ0D59DLNwagVu/X2Rl7
	UynugKSfQ3UfWtodS4O1tFZ1gFf42j5ae2p3GBGmbVAGNn6gaIv0x0IBiR8InB/zl/SXMcibh9j27
	Gs3F+kQhLul2aiNNt9Dz1vjmL8j90wxhdlfsnWdVFx2UOcZzN6Ka+nswnw3Nzfd3TqiGGe+wEMrsl
	Jl6MLW9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuCD-00000009BHS-14hx;
	Tue, 10 Mar 2026 10:20:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuCB-00000009BHI-34pZ
	for barebox@bombadil.infradead.org;
	Tue, 10 Mar 2026 10:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=/YUTTyOExrEKC+hTvlViPnmetR1Wd9E6rcZ1jG870S4=; b=OaHfBY1VUkHq3Rug/xzNqU+2pu
	El/4FQvIBd7scln5QSYFtv3vuuECyc4ZwdGal933SnSS/vX4mGsdJ2MYnsf5dTE3dI6hf/c5HYofv
	Ux/9lXp+0qoj7HB08HjYM1nGoHkj3QDbI4A6ECJvONpOjz8fHsVKQuYeDFyja48azrPOpmYi+kg2Q
	3fAxk+7IABXzeZ39hmNowgmcgyyMDGMCIrT6nbRR189/SE4Mk+0RXBA08KpcRwLl2nOkgIPARuxwP
	7igZwiT86ZqKhuoxbnKn4orKm8pr4nk8Mjg1ZKRzC2FGMR/8BxyHiTXs6n6fQ/KtgisljMdZxt+U6
	AEN3p1qg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuC7-0000000EEcg-1vKJ
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:20:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vzuC5-0007bE-Lb; Tue, 10 Mar 2026 11:20:05 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vzuC3-004gGr-2O;
	Tue, 10 Mar 2026 11:20:05 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vzuC4-0000000BV7p-49nD;
	Tue, 10 Mar 2026 11:20:05 +0100
Date: Tue, 10 Mar 2026 11:20:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Cc: barebox@lists.infradead.org
Message-ID: <aa_wVOPwEBZn__Pn@pengutronix.de>
References: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
 <20260304110013.495725-6-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304110013.495725-6-robin.van.der.gracht@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_102007_610569_2701546D 
X-CRM114-Status: GOOD (  18.22  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/9] ARM: boards: protonic-rk356x: Move mecsbc code to
 model init function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Robin,

On Wed, Mar 04, 2026 at 12:00:09PM +0100, Robin van der Gracht wrote:
> This adds a means for registering a model specific late initcall function.

Please explain why this is necessary in the commit message.

> +static int prt_rk356x_mecsbc_init(void)
> +{
> +	if (prt_priv.hw_id == 0 && prt_priv.hw_rev == 0)
> +		of_register_fixup(mecsbc_sd_of_fixup, prt_priv.dev);
> +
> +	return 0;
> +}
> +
> +static int prt_rk356x_devices_init(void)
> +{
> +	int ret;
> +
> +	if (prt_priv.model->init) {
> +		ret = prt_priv.model->init();
> +		if (ret) {
> +			pr_warn("Model init failed with %d\n", ret);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +late_initcall(prt_rk356x_devices_init);

This executes unconditionally on all boards. You have a patch later in
this series fixing that, please squash it into this patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


