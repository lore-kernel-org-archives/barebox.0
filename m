Delivery-date: Wed, 31 Aug 2022 20:31:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTSUX-002pZC-Qr
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 20:31:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTSUX-0006CA-Ut
	for lore@pengutronix.de; Wed, 31 Aug 2022 20:31:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3HDRolS/JMupUwRtgVwHTzwRRWwKA+GiMBnPOOT3lFQ=; b=j0OXId84SJBnbbXl+lo4ZEoFje
	9xEPTwssA/Xet1Nvx9O1mtEUXVWEHRshR4WQLaWwVPwRABCmwMstHrsmC07BdvGmEi6kpCW99mexW
	jcS1is1pOlmE1xc7Yyq+6wqzmZaxnxdBP8rBuoh12AcFrUqq/Iq4U9FRQI0iW7o33+0V/pT6AVXxE
	q9Q3TBz57JmUl5iOfhK/yQ1ddHRwJ20mlRORb3BHuso1LpnEKIPkObkxF6KLoA9tOdQhRu2FFGbxK
	ouJL7U56jPHxVLY48wowRnrFAdmD587tK2d7u6U4CTFur4HvaiD+BEzhzBFvXZQmJvYBN2/NC3lNc
	rYsbPwXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSSy-007aEQ-SW; Wed, 31 Aug 2022 18:29:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSRc-007ZLq-Cx
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 18:28:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oTSRa-0005UN-UE; Wed, 31 Aug 2022 20:28:07 +0200
Message-ID: <d18fd9e1-2a9c-9130-daf7-c2c9d632ab97@pengutronix.de>
Date: Wed, 31 Aug 2022 20:28:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20220831125248.2105893-1-s.hauer@pengutronix.de>
 <20220831125248.2105893-7-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220831125248.2105893-7-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_112808_489580_524C4B41 
X-CRM114-Status: GOOD (  17.84  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 6/6] Revert "ARM: i.MX8MN: assume USBOTG power domains to
 be powered"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.08.22 14:52, Sascha Hauer wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> This was a workaround and the barebox gpcv2 driver has since gained
> support for the i.MX8M Nano, so we can drop the device tree level
> override again.
> 
> This partially reverts commit 09e73acc76c3ed2834c5918717dff5e961c04990.
> We keep imx8mn.dtsi around as it may come in handy in future.

I don't know if just deleting code requires a s-o-b, but FWIW:

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/dts/imx8mn.dtsi | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm/dts/imx8mn.dtsi b/arch/arm/dts/imx8mn.dtsi
> index 176125e73b..9ce49d735e 100644
> --- a/arch/arm/dts/imx8mn.dtsi
> +++ b/arch/arm/dts/imx8mn.dtsi
> @@ -1,5 +1 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> -
> -&pgc_otg1 {
> -	barebox,allow-dummy;
> -};


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


