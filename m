Delivery-date: Mon, 22 Apr 2024 12:00:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryqTd-00BMxQ-2c
	for lore@lore.pengutronix.de;
	Mon, 22 Apr 2024 12:00:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryqTZ-0002rH-5V
	for lore@pengutronix.de; Mon, 22 Apr 2024 12:00:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LozHHhmWnYPiILcAAMfFhtSHxTLy4cxam3VcSGx0AUs=; b=BBGbxdf4luhw4VXygQZtdIK7HF
	EQv1ON3L1mSxmfDznonEZup+dtISOLzKSchVshYsVf+cEHXrxV8waCDh7Lv4Pt+LvM3w4ggXO+6p3
	CMkHjV6qbqsqpTej83jtEp1oXfznzBRfRWOGB1x7JAbE8vuVVrrgeaDeDC85b+mIMs/U6sKszCNMH
	E3TlXgIwucD8dLH7nsOJh9IKJRUsFmHIj9ZCssBT+KQGI7VpdkIg0pQf2NmYgsZxGCecdPxPmBgjS
	ImrI9BOKtSUCKe1ReKta/dLWwgesHPPiSgNAHXQwOzJk8T8gX2C4U39hBLb2tzFn1WKx/lvADUiA8
	Ve4bylYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryqTF-0000000D4B6-0qKo;
	Mon, 22 Apr 2024 10:00:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rypPW-0000000ClrM-2DZ4
	for barebox@bombadil.infradead.org;
	Mon, 22 Apr 2024 08:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=LozHHhmWnYPiILcAAMfFhtSHxTLy4cxam3VcSGx0AUs=; b=TQRMEhRJJO2PRY+iJqv5AYBrYY
	aePFdM8E3eu0SyxgF96/zfHuKCQaWyZjuLNi9mV/Ma77VMY0n/mTbbyyt1ByIvh0FV6jrlnFKW7sT
	gPYYfvN73y/9wp+MufTiyrwuy71hzC1UwwCCMUwUXYH3WRfCYvZdurshpJZAtVyEDypQm12tmj1J1
	DuVJ9H8cf45dYNZ0/TPb1Wp/o4K6XO4+oSGh4CTJZBdofRa7EgdzrGUbIqJbW51CLqOEZR1GSkcep
	TXNQbIhz5YuS1l1ent+o7NO6aiz2jTSWT3AZl7wwguMWoY7Ksq87wFnDQbAuxdSSssDzYL3AxxGVo
	pOtmq9zA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rypPQ-0000000Db2d-4ANr
	for barebox@lists.infradead.org;
	Mon, 22 Apr 2024 08:52:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1rypPN-0006TK-Cz; Mon, 22 Apr 2024 10:52:17 +0200
Message-ID: <e1768e0703f688b5e99bab72eee95bdc58c7cb9c.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Mon, 22 Apr 2024 10:52:17 +0200
In-Reply-To: <20240419061331.2592739-5-a.fatoum@pengutronix.de>
References: <20240419061331.2592739-1-a.fatoum@pengutronix.de>
	 <20240419061331.2592739-5-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_095221_338116_235827D6 
X-CRM114-Status: GOOD (  17.97  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: i.MX8MP: don't reparent GIC from BootROM
 default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Freitag, dem 19.04.2024 um 08:13 +0200 schrieb Ahmad Fatoum:
> On i.MX8MP, GIC can run at up to 400 MHz in nominal drive mode and up
> to 500 MHz in overdrive mode. We currently configure unconditionally
> to 100 MHz on i.MX8MP.
>=20
> The BootROM default is running it on 400 MHz, which works well for us on
> the i.MX8MP, so skip the GIC configuration on the i.MX8MP.
>=20
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx8m.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
>=20
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index 56330cef500c..0966f7fdf076 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -100,13 +100,6 @@ static void __imx8m_early_clock_init(int cpu_type)
>  		INTPLL_DIV20_CLKE_MASK;
>  	writel(val, ana + IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL);
> =20
> -	/* config GIC to sys_pll2_100m */
> -	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_GIC);
> -	imx8m_clock_set_target_val(IMX8M_GIC_CLK_ROOT,
> -				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
> -				   IMX8M_CCM_TARGET_ROOTn_MUX(3));
> -	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
> -
>  	if (cpu_type =3D=3D IMX_CPU_IMX8MN || cpu_type =3D=3D IMX_CPU_IMX8MP)
>  		pll3_freq =3D 600000000UL;
>  	else
> @@ -118,11 +111,20 @@ static void __imx8m_early_clock_init(int cpu_type)
> =20
>  	if (cpu_type =3D=3D IMX_CPU_IMX8MP) {
>  		/* 8MP ROM already set NOC to 800Mhz, only need to configure NOC_IO cl=
k to 600Mhz */
> +		/* 8MP ROM already set GIC to 400Mhz, system_pll1_800m with div =3D 2 =
*/

This comment change looks odd. Now it doesn't explain anymore what's
done here and why, but rather explains why the else path isn't executed
on the 8MP.
>  		imx8m_clock_set_target_val(IMX8M_NOC_IO_CLK_ROOT,
>  					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
>  					   IMX8M_CCM_TARGET_ROOTn_MUX(2));
> +	} else {

Maybe move this into a separate condition !=3D IMX_CPU_IMX8MP and move
the comment above here? Leaving the comment about NOC_IO clocks
untouched?

> +		/* config GIC to sys_pll2_100m */
> +		imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_GIC);
> +		imx8m_clock_set_target_val(IMX8M_GIC_CLK_ROOT,
> +					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
> +					   IMX8M_CCM_TARGET_ROOTn_MUX(3));
> +		imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
>  	}
> =20
> +
>  	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
>  			IMX8M_CCM_TARGET_ROOTn_MUX(7),
>  			IMX8M_CCM_TARGET_ROOTn_MUX(2));



