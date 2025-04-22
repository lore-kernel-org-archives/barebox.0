Delivery-date: Tue, 22 Apr 2025 12:29:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Ase-0040z0-1d
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:29:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Asd-0002Wy-Sy
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:29:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kVsRvKUGswUzA9/92SuVFF6DW4DPfxHr5kvAZa1EjU0=; b=0bhJNCxf4Nn4nL2/5Ro6ZX/cd+
	x+HlnerGuTwK+jpVp9M08jGJKvJFFkvpmjA80UU6aNuhqA9w3Rn9jrIWA3+ijcMoKyj9KzHbNtRr9
	34Lx3PCpbct718+9nnRD+0lb5yHoAWDMZaWLTOg5dyEa7ZLFC2LLT6HUms2Z/+Qdm3j5bBgm/T+Ep
	UNQNZSaNaypOvE7u8KmwooVknyz8G/xVi6kK9m9jdWU3W8akGmbwvGFwSKoTi7NZWExxyMJl8p5I4
	aUI/ZglV4en5ryAbawgwRcNcU6cXLW6UZKuAQJeCEmK6MIQ9zBYU41Mf96vxtyCYWc3xRAxGKXXzh
	Osjzf4sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AsF-00000006lxe-3HWO;
	Tue, 22 Apr 2025 10:29:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AEV-00000006cJI-3Qeb
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:48:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u7AEU-0001TP-Iy; Tue, 22 Apr 2025 11:48:02 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7AEU-001Wvm-1E;
	Tue, 22 Apr 2025 11:48:02 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7AEU-00F6J6-0o;
	Tue, 22 Apr 2025 11:48:02 +0200
Date: Tue, 22 Apr 2025 11:48:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lars Schmidt <l.schmidt@pengutronix.de>
Cc: barebox@lists.infradead.org, Lars Schmidt <lsc@pengutronix.de>
Message-ID: <aAdl0luG_RLHfSvw@pengutronix.de>
References: <20250416153008.1898565-1-l.schmidt@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250416153008.1898565-1-l.schmidt@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_024803_855777_620E4670 
X-CRM114-Status: GOOD (  22.50  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pinctrl: at91: add sama5d3 compatible after DT regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 16, 2025 at 05:30:08PM +0200, Lars Schmidt wrote:
> From: Lars Schmidt <lsc@pengutronix.de>
> 
> Commit f9abec74133a6 ("ARM: dts: microchip: Remove additional compatible

Addded 'Linux' in front of 'Commit' to make clear where to look for this
commit.

Sascha

> string from PIO3 pinctrl nodes") removed compatible string
> atmel,at91sam9x5-pinctrl, which was used by pinctrl driver for sama3d3 in
> barebox. Compatible string atmel,sama5d3-pinctrl was left in list, so
> that needs to be included for identification.
> 
> The removal caused an issue during boot process. The system did still boot,
> but no bootloader console was shown. Leaving the user without
> possibility to interact with the bootloader.
> 
> The DT ABI breakage has been reported upstream:
> 
> https://lore.kernel.org/all/fcdb9283-07aa-4d50-ac4d-317b0a4e5f7e@pengutronix.de/
> 
> Signed-off-by: Lars Schmidt <lsc@pengutronix.de>
> ---
>  drivers/pinctrl/pinctrl-at91.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
> index a3372a5035..ddc725187b 100644
> --- a/drivers/pinctrl/pinctrl-at91.c
> +++ b/drivers/pinctrl/pinctrl-at91.c
> @@ -370,6 +370,9 @@ static struct at91_pinctrl_mux_ops at91sam9x5_ops = {
>  
>  static struct of_device_id at91_pinctrl_dt_ids[] = {
>  	{
> +		.compatible = "atmel,sama5d3-pinctrl",
> +		.data = &at91sam9x5_ops,
> +	}, {
>  		.compatible = "atmel,at91rm9200-pinctrl",
>  		.data = &at91rm9200_ops,
>  	}, {
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


