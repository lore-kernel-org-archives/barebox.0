Delivery-date: Tue, 30 Apr 2024 14:06:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1mFS-00AJtw-35
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 14:06:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1mFO-00023H-Mr
	for lore@pengutronix.de; Tue, 30 Apr 2024 14:06:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pQ5dpx5KTKzlL0XbEvVOEvV+OCtvUanUXYUyfdsGGo0=; b=G/PvDWALCV69ROBMl/ZaMEbumj
	7omXRZjeA7peLnuNVIyB7JgfQuNE68KWoQrCHhUS4m+j9FxrPeLjaC2fjxI6AcpUGy7BuvRsEfw3s
	Oe+vU20FJ9jSKhO2IlSE9A09rlUsqXa7UBKJMbv/XunvzpOWAARZ0twDbB4OhShtTN3MzALMpxP3+
	edhaZEDd1mEVo++LOVRRebKjWxW0FoHCdhIjm2QUlw2YVhoVWkn7UTHz9FWB1juJp5OLYDA9UlqXT
	UMUKIvMZ3EzpyGOigWx8Z+axPvA2IJLQRFbNWJG4l9bk0BOqtEnNIJs669NPvCNHtMUB7LJZiBVCA
	EaRGu7HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mEo-00000006HYa-0fqe;
	Tue, 30 Apr 2024 12:05:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mEk-00000006HY6-1sNg
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 12:05:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1mEh-0001sP-Tu; Tue, 30 Apr 2024 14:05:28 +0200
Message-ID: <9b63e960-845b-4213-873c-da9749f82a64@pengutronix.de>
Date: Tue, 30 Apr 2024 14:05:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Roland Hieber <rhi@pengutronix.de>, barebox@lists.infradead.org
References: <20240430102357.1357983-1-rhi@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240430102357.1357983-1-rhi@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_050530_676613_7DEFCE5D 
X-CRM114-Status: GOOD (  17.59  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: fix compatible string for
 koenigbauer,alphajet board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 30.04.24 12:23, Roland Hieber wrote:
> During the review of the initial board support patch, the SoM compatible
> was changed (and unified) to "congatec,qmx8p" from several different
> incompatible variants. However, the compatible in the alphajet device
> tree contained a different typo and was overlooked, which had the effect
> that the barebox_update handler and the Ethernet fixups were not
> registered on the alphajet board.
> 
> Fixes: 34f14b1519715d47d879 (2024-03-11, "ARM: i.MX8MP: add König+Bauer AlphaJet board")
> Rubberducked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-koenigbauer-alphajet.kernel.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/dts/imx8mp-koenigbauer-alphajet.kernel.dts b/arch/arm/dts/imx8mp-koenigbauer-alphajet.kernel.dts
> index 3f958ddf78e8..198fe1379a05 100644
> --- a/arch/arm/dts/imx8mp-koenigbauer-alphajet.kernel.dts
> +++ b/arch/arm/dts/imx8mp-koenigbauer-alphajet.kernel.dts
> @@ -7,7 +7,7 @@
>  
>  / {
>  	model = "Koenig+Bauer Alphajet";
> -	compatible = "koenigbauer,alphajet", "congatec,qmxp8p", "fsl,imx8mp";
> +	compatible = "koenigbauer,alphajet", "congatec,qmx8p", "fsl,imx8mp";

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>  
>  	display {
>  		compatible = "innolux,g101ice-l01";

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



