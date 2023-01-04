Delivery-date: Wed, 04 Jan 2023 11:59:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD1UR-001NE4-N3
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 11:59:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD1UP-00087c-OG
	for lore@pengutronix.de; Wed, 04 Jan 2023 11:59:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d3p/GpQ0duKzn/W+vnPPbYmoFDspH/GnEUgihpeMLnc=; b=c05n52iRnr/E8A29gWYLzVhlzQ
	SEj7ZRYEYnLzPZciG8rv3ZmpjZAil2GZZ4Y6p5lmI5SaZ2RlOWuLrOPJoS8PDcOD7Cux0fGtN4GH9
	wttDIXNvlfydzeM/nDZOv5WPqzR6iAdgKCUVGcJ8hFXHvsB7xSsVBH+vMgekFwfzXVGf71am+ZVu9
	XDJTPwD5zLDZPnAv2B4EA48e8znW9caCI5Mr25bSamm3l3LLMZ60tYDtKVsU3IjytKNlN3bT++RRO
	TwgCMQF7g7Nn7CDp0cp899xY8lTFvpKIQD3JJtgkf8C6GJxv+QCQDJJiL+7AYPt1IbF8vvXlo9uR8
	tB0J47bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD1T3-008ap6-0A; Wed, 04 Jan 2023 10:57:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD1NH-008YiC-DG
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 10:52:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD1NF-0007PD-M2; Wed, 04 Jan 2023 11:51:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD1NF-00085q-8X; Wed, 04 Jan 2023 11:51:57 +0100
Date: Wed, 4 Jan 2023 11:51:57 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20230104105157.GR11668@pengutronix.de>
References: <20221221102627.3059068-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221221102627.3059068-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_025159_556373_8F49BC82 
X-CRM114-Status: GOOD (  25.43  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: dts: fix wrong display-timings native-mode
 binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Dec 21, 2022 at 11:26:27AM +0100, Ahmad Fatoum wrote:
> The value of the native-mode property is supposed to be a phandle to
> the entry in question, but instead the full node path was used because
> the <angle brackets> were missing. Fix this. This should not involve any
> functional change as the default mode would've been the first element,
> which is the same element the malformed native-mode was meant to point
> at anyway.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/imx6q-var-custom.dts   | 2 +-
>  arch/arm/dts/imx6qdl-skov-imx6.dtsi | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6q-var-custom.dts b/arch/arm/dts/imx6q-var-custom.dts
> index ddb220fb0ad4..cbfe4da7e1b4 100644
> --- a/arch/arm/dts/imx6q-var-custom.dts
> +++ b/arch/arm/dts/imx6q-var-custom.dts
> @@ -83,7 +83,7 @@
>  		fsl,data-width = <24>;
>  		status = "okay";
>  		display-timings {
> -			native-mode = &claawvga;
> +			native-mode = <&claawvga>;
>  			claawvga: claawvga {
>  				native-mode;
>  				clock-frequency = <35714000>;
> diff --git a/arch/arm/dts/imx6qdl-skov-imx6.dtsi b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
> index f4610ee1e7ba..cb4224f1b441 100644
> --- a/arch/arm/dts/imx6qdl-skov-imx6.dtsi
> +++ b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
> @@ -146,7 +146,7 @@
>  		};
>  
>  		display-timings {
> -			native-mode = &l2rt;
> +			native-mode = <&l2rt>;
>  
>  			l2rt: l2rt {
>  				native-mode;
> @@ -190,7 +190,7 @@
>  		/* power-supply = <&reg_3p3v>; */
>  
>  		display-timings {
> -			native-mode = &mi1010ait_1cp1;
> +			native-mode = <&mi1010ait_1cp1>;
>  
>  			mi1010ait_1cp1: mi1010ait-1cp1 {
>  				native-mode;
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


