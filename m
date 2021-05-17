Delivery-date: Mon, 17 May 2021 14:54:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liclp-0002jE-L9
	for lore@lore.pengutronix.de; Mon, 17 May 2021 14:54:53 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1licln-00065j-Nd
	for lore@pengutronix.de; Mon, 17 May 2021 14:54:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+FhFexzmUBF4J9nh8zHNo377SjeX9znnnJ82CxacSAU=; b=dKafpy+yWOGDDZbrMAYJbaoqL
	JpeKzl3Tjs1hVp7cOB+S8w+1zcVKOo0S2GVRYzdoxa1fG/IXFn1vtCLykb5XCNPOFpgzWmtMAhOwz
	akUlGYf0ASzSMSHCCNs8Uf8jqzoHWA7yXY6kiMNufVnNyRehom2YDuOAe07YN0INTo3gfK8nNuE5z
	55todC4GTZ4+xcKIVgKmVLjA4U4J8HJvQ9gj1gs9i6kt0pkb6TlaCcwwgi15mPPhl0Fflj0n5fvvz
	E1CddgQs756X6NGtE2mOMVPDjQDsMQrvDv+vUGV7DyCkoY3iGezACl+c4mVxDOq7ta7ZT/qDWrq6O
	EvmqxFTow==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lickG-00Eykb-FP; Mon, 17 May 2021 12:53:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liciU-00EyXW-LN
 for barebox@desiato.infradead.org; Mon, 17 May 2021 12:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=2qR49CVFzx1+tIKpXJN1/zrGUxjZpLHBe32wnl/Q31o=; b=0RtYBvyokWDpYPT9IPIQwAS0ID
 7HVL1DTtPu12ew+4nD2gLvzBPaykGbqfoXjoTyyUJ7nsQvEbsZu+6lMR6mR4pQecz9Ikulw6/WDtg
 mQuJmo3gSQuL78gyNCwhnJIOuIqXTkK9zCaSUZOB2r6/6Ho0GPaWMl05SKWtpHH2qJwOiNWUHNi8Z
 gcCKPqedVunSyKz5iPtXPAWYjLcILKB0V3MmYIHePAQpOhv/dkqAVobo5VIw8C1vtee+iyZQTk2ps
 QAOo69lqsDbMXA8rhUMF555fHDO2KH1sC3Gf42kTJypB1CuKRwmjYLxYZHCMnSJnxdEmYzILGdt0+
 TgGeCYkA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liciP-00Dlz0-Ib
 for barebox@lists.infradead.org; Mon, 17 May 2021 12:51:25 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1liciO-0005gl-AL; Mon, 17 May 2021 14:51:20 +0200
To: Enrico Jorns <ejo@pengutronix.de>, barebox@lists.infradead.org
Cc: afa@pengutronix.de
References: <20210517124941.31301-1-ejo@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <168256df-6673-dd27-0cb4-9b7949e8098f@pengutronix.de>
Date: Mon, 17 May 2021 14:51:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210517124941.31301-1-ejo@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_055121_644378_1556DCEE 
X-CRM114-Status: GOOD (  23.63  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc2: more precise and helpful message for dr_mode
 config issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.21 14:49, Enrico Jorns wrote:
> With the previous message I misunderstood that the 'configuration
> mismatch' was caused by any entity forcing the dr_mode to
> 'host'/'device'.
> The actual intention however is to tell the user that the selected
> 'dr_mode' does not match the capabilities provided by the controller or
> the selected driver parts (USB_DWC2_HOST/USB_DWC2_GADGET).
> 
> The updated warning message attempts to reflect this more explicitly.
> 
> Also rename 'device' to 'peripheral' as it is named both in dtb and
> in macros that way.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/usb/dwc2/core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> index cc5729ed92..6dfe14f174 100644
> --- a/drivers/usb/dwc2/core.c
> +++ b/drivers/usb/dwc2/core.c
> @@ -672,8 +672,8 @@ int dwc2_get_dr_mode(struct dwc2 *dwc2)
>  
>  	if (mode != dwc2->dr_mode) {
>  		dwc2_warn(dwc2,
> -			 "Configuration mismatch. dr_mode forced to %s\n",
> -			mode == USB_DR_MODE_HOST ? "host" : "device");
> +			 "Selected dr_mode not supported by controller/driver. Enforcing '%s' mode.\n",
> +			mode == USB_DR_MODE_HOST ? "host" : "peripheral");
>  
>  		dwc2->dr_mode = mode;
>  	}
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

