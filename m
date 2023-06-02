Delivery-date: Fri, 02 Jun 2023 16:21:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q55fB-007RIY-TO
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 16:21:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q55f9-0000KW-J7
	for lore@pengutronix.de; Fri, 02 Jun 2023 16:21:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QuAgciQHFGzJ5wz/LGlT1UvLzmzIdXAx89sD4I/y+7k=; b=HCHZn6ItKWMYa36J3u08hmX49U
	fr8O6Wjdzz1HiXui3MDQYaLj/ebki361enhZag+gVn5hx94BxHvJ86+rF3Nj9uZ5j4OFqrfpHcn27
	+3cq0d43u2bpekpqkPkN2+oSt8TRck+xz0o2kwAf+HtcyVC7r/8PTkohkkgmx8t3WI72OYkB2p012
	oD2lnGLz8zZjPZVtxj8MaMd730zG+qYdq4bky5DuniVslmfRsEBsmr+5+qARCB+fTRofctfbT8XdL
	pY16AJrhbQLqw5puVh+jilBV+Q+o3B84xhclKxZTXM0XAKk5DQHFUtmzT3YTX5+ApQqek4H/2zHFs
	XUFKLhRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q55dj-0076gq-0Q;
	Fri, 02 Jun 2023 14:20:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q55dg-0076e9-0x
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 14:20:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q55dX-0008MI-JB; Fri, 02 Jun 2023 16:20:15 +0200
Message-ID: <ab350ef5-4806-3987-5a3b-d682f935c44f@pengutronix.de>
Date: Fri, 2 Jun 2023 16:20:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Marc Kleine-Budde <mkl@pengutronix.de>, barebox@lists.infradead.org
References: <20230602110746.697121-1-mkl@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230602110746.697121-1-mkl@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_072024_340478_DB26BDC9 
X-CRM114-Status: GOOD (  16.47  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dts: InnoComm: fix node address of environment
 partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.06.23 13:07, Marc Kleine-Budde wrote:
> Fixes: e190e932b918 ("ARM: i.MX8MM: add InnoComm WB15 support")
> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/dts/imx8mm-innocomm-wb15-evk.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
> index 8808441b6094..907d9c96baa6 100644
> --- a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
> +++ b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
> @@ -34,7 +34,7 @@ partition@0 {
>  			reg = <0x0 0x0 0x0 0x100000>;
>  		};
>  
> -		env_sd1: partition@e0000 {
> +		env_sd1: partition@100000 {
>  			label = "barebox-environment";
>  			reg = <0x0 0x100000 0x0 0x100000>;
>  		};
> @@ -52,7 +52,7 @@ partition@0 {
>  			reg = <0x0 0x0 0x0 0x100000>;
>  		};
>  
> -		env_sd2: partition@e0000 {
> +		env_sd2: partition@100000 {
>  			label = "barebox-environment";
>  			reg = <0x0 0x100000 0x0 0x100000>;
>  		};

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



