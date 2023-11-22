Delivery-date: Wed, 22 Nov 2023 16:27:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5p83-004ViR-18
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 16:27:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5p83-0001y9-CN
	for lore@pengutronix.de; Wed, 22 Nov 2023 16:27:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=02tqWPrz/Qkav/rqxHXeBU67a/yjbHhnVlm8AvgY2qs=; b=ibkU6YyQgrS99LsmiTqBxRIYvG
	fGr4CL0a2kDt381oMpvR3PtYmOOV4DG5b9LTiPS1QKa3RFO9AX5ZtxoDtCl5+Ls6krG+aGAGLpRvX
	Qe8sk6Wa7XgPtXt+0ZGZhm0lwwh5CndPfd+VU5N8T5uCtycCDsApX49T5iIWSLdTFiZAVa+7uiWOR
	FnVIMviWk7/DppZfmONGQKuHPcUcubYn4TKh0pOyqPJCjeRAfANUbdvr2a/nWoMKHwXW4MlWPNp8D
	3RreUiV5hOH8AfjD+FCGVEsrmYQetiHZ51gBlvPpfo5Pqt3pVzzpFG7Z1cdv1Mrc/r3Tz2jbkyEjg
	dGC8HP7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5p6t-002FNt-0m;
	Wed, 22 Nov 2023 15:25:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5p6q-002FMr-18
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 15:25:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5p6p-0001ew-5l; Wed, 22 Nov 2023 16:25:47 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r5p6o-00AqJI-PO; Wed, 22 Nov 2023 16:25:46 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5p6o-003JuS-N8; Wed, 22 Nov 2023 16:25:46 +0100
Date: Wed, 22 Nov 2023 16:25:46 +0100
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231122152546.GB3359458@pengutronix.de>
References: <20231122094813.qlw2avhut44datru@pengutronix.de>
 <20231122095114.3051661-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231122095114.3051661-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_072548_387856_20EEDA24 
X-CRM114-Status: GOOD (  19.56  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] Documentation: dt-bindings: leds: document
 'default-on' trigger
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 10:51:14AM +0100, Roland Hieber wrote:
> The default-on trigger has been supported in barebox since commit
> 767c6b4a814a2a000f3b (2014-02-28, Sascha Hauer: "led: Add default-on
> trigger").
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
> PATCH v2:
>  * change U+2013 EN DASH to U+002D HYPHEN-MINUS to be consistent
>    with the rest of the list (feedback from Ulrich Ölmann)
> 
> PATCH v1: https://lore.barebox.org/barebox/20231121162009.160644-1-rhi@pengutronix.de
> ---
>  Documentation/devicetree/bindings/leds/common.rst | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/devicetree/bindings/leds/common.rst b/Documentation/devicetree/bindings/leds/common.rst
> index 09b4e401bc2c..8bf41f0d649b 100644
> --- a/Documentation/devicetree/bindings/leds/common.rst
> +++ b/Documentation/devicetree/bindings/leds/common.rst
> @@ -9,6 +9,7 @@ Common leds properties
>      * ``net`` - LED indicates network activity (tx and rx)
>      * ``net-rx`` - LED indicates network activity (rx only)
>      * ``net-tx`` - LED indicates network activity (tx only)
> +    * ``default-on`` - LED is switched on by default
>  
>  * ``label``: The label for this LED. If omitted, the label is taken
>    from the node name (excluding the unit address).
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


