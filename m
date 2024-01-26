Delivery-date: Fri, 26 Jan 2024 15:46:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rTNTa-004Un0-1E
	for lore@lore.pengutronix.de;
	Fri, 26 Jan 2024 15:46:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rTNTb-0002Sy-1U
	for lore@pengutronix.de; Fri, 26 Jan 2024 15:46:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T9s4Wzrk69KWNTwoJsSwDh6IfOPSBCN6+NKE7l+JRV0=; b=fU3F9WA3/L8mi2AiVyoswyjJMC
	4dB1YP2GIpz8CspBkBr33xCj21qGqLvopY9DMEuvSyUVKVNTFlImF8+358cLifM3JVeA2lRJY9v1L
	7i4Gp9l7b6xw3g34eHiZXKkTCiYfPlfD96k8hjoQobz3MhxRO8Y4owC9AucHffMAeVnupcLUrmzkN
	oBjwIvo4QN5daGHZ0KdwxZgv5ohzinPIOmLRD4y90fhKi+A8392zSyl9xfbehXJrFk4flaSANFnV3
	IUoh5KUXysl7g7mYI98sqx3bqFFZEeFzEUZCTBvVTe+NAsma0rY4ismFKaI9sNV0ja7TfE2WnZwTi
	uTVvPDxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNSw-00000004QEr-0Pm1;
	Fri, 26 Jan 2024 14:45:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNSs-00000004QCs-44Uj
	for barebox@lists.infradead.org;
	Fri, 26 Jan 2024 14:45:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rTNSp-0002Ml-9x; Fri, 26 Jan 2024 15:45:51 +0100
Message-ID: <4630b208-1962-4880-929a-538ec6eaa746@pengutronix.de>
Date: Fri, 26 Jan 2024 15:45:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Christian Melki <christian.melki@t2data.com>, barebox@lists.infradead.org
References: <20240126075231.1285729-1-christian.melki@t2data.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240126075231.1285729-1-christian.melki@t2data.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_064555_046459_182B5C17 
X-CRM114-Status: GOOD (  13.93  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] barebox_imd: Add IMD sections to mpc-85xx.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.01.24 08:52, Christian Melki wrote:
> Seems PowerPC in general is missing the IMD sections.
> Placement might be suboptimal, please correct if so.
> 
> Signed-off-by: Christian Melki <christian.melki@t2data.com>

I think this looks ok.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/powerpc/mach-mpc85xx/barebox.lds.S | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/powerpc/mach-mpc85xx/barebox.lds.S b/arch/powerpc/mach-mpc85xx/barebox.lds.S
> index 764854a860..6e348d4db3 100644
> --- a/arch/powerpc/mach-mpc85xx/barebox.lds.S
> +++ b/arch/powerpc/mach-mpc85xx/barebox.lds.S
> @@ -68,6 +68,8 @@ SECTIONS
>      PROVIDE (etext = .);
>      _sdata = .;
>  
> +   .barebox_imd : { BAREBOX_IMD }
> +
>     .rodata    :
>     {
>      *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*)))

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



