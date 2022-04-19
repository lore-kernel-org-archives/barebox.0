Delivery-date: Tue, 19 Apr 2022 11:18:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngk0D-007fpm-Rc
	for lore@lore.pengutronix.de; Tue, 19 Apr 2022 11:18:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngk0A-0003DO-GF
	for lore@pengutronix.de; Tue, 19 Apr 2022 11:18:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vorfdF1B8QZ/yVeoCq5vCaSIBwqaTzIt3YwU7MfgmDM=; b=oXMyUfWFxZGQ/j
	Iq3RH39visoaTIvHDheXcLz6s8TAMDQlkERXFneywBrZ0EYceLYTShC1rdwXwL6UF73qCjren7ei/
	r8lVSxtENsvvPuHc9hb2ahbRo618clP31kvb0TyUG6vITROA3exfRh+A3Q6VrLWS+QDdalrYVuGyV
	iTxfZqNdwyirIrnu5+Hz8TVnj8sasCgfhIPYfJpCjbMojMo7Fg1lhL4GplJZvV4utDoMULjnjZ/fD
	/K82OOPSxcGozqJoIL9FQLERJDNha/w4au8lYE+lsJsuxi2H/kG8lG0g72ZsbCY1hACKYKc2VIJgj
	sB84TXnaQynL8lxDsJVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngjyo-002WDj-PR; Tue, 19 Apr 2022 09:17:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngjyk-002WCd-DM
 for barebox@lists.infradead.org; Tue, 19 Apr 2022 09:16:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ngjyg-00030m-RJ; Tue, 19 Apr 2022 11:16:54 +0200
Message-ID: <1ff138b7-0567-3d5a-8dae-400c58180ee1@pengutronix.de>
Date: Tue, 19 Apr 2022 11:16:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Andrej Picej <andrej.picej@norik.com>, barebox@lists.infradead.org
Cc: upstream@phytec.de
References: <20220419083946.151251-1-andrej.picej@norik.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220419083946.151251-1-andrej.picej@norik.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_021658_508359_47487E81 
X-CRM114-Status: GOOD (  19.97  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: pbab01: allow USB-OTG port runtime configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Andrej,

On 19.04.22 10:39, Andrej Picej wrote:
> Since commit a5a4c1d5a3 ("dts: update to v5.13-rc1"), which synced
> kernel dts, USB-OTG port on phyFLEX board was set to work only in
> peripheral mode. This has to do with phyFLEX baseboard hardware bug,
> which prevents correct USB OTG ID pin detection in kernel code.
> 
> Unlike linux kernel, barebox doesn't support OTG auto-detection mode via
> ID pin. In barebox, user has to select desired USB mode of operation by
> setting 'otg.mode' variable. Thus delete 'dr_mode' property from dts to
> be able to later select USB OTG operating mode at runtime (either host
> or peripheral).
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>  arch/arm/dts/imx6qdl-phytec-pbab01.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
> index 991c7e4fab..36870facdd 100644
> --- a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
> @@ -15,6 +15,10 @@
>  	status = "okay";
>  };
>  
> +&usbotg {
> +	/delete-property/ dr_mode;
> +};

Wouldn't it be better to be explicit and set dr_mode = "otg"?
It doesn't matter here, but some other USB controllers default
to "host" in absence of the property, so setting it to "otg"
will be clearer IMO.

Thanks,
Ahmad

> +
>  #ifdef USE_STATE_EXAMPLE
>  #include "state-example.dtsi"
>  #endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

