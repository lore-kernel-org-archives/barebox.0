Delivery-date: Mon, 08 Nov 2021 09:15:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzoo-0006k5-6O
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 09:15:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzon-0007DT-58
	for lore@pengutronix.de; Mon, 08 Nov 2021 09:15:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YZHXhxhMCj1atARyx4xe18nnpTkoC4Q2N2Qkjs6s3hc=; b=RWCdnvcF3tFeu7Hjduw9UCXKpv
	TJksWfI67Kctq013sOX3gSTMiHBiQiYxikBjHkSkzNms8RU0HLiGCINRTddWslJyPlDHUwMJku9XR
	qLtjB8y0BI0dp3tFUoX/w6JRy18LtAufomRShe0/P/7SMgY2O9rFP27TQNDojNmfSbWrZnnKD9ApU
	56ErRPAgPSFj1g7WGPp8xGjtVdssoUuUpK6QejkWp8dRGR87eQl1cYU7T3/Me/ZvXw4tbDCriGPSt
	fc6nkOZOCzyjEAhk1Mj0UY+7qrA4sIbbxGE2q2rgqVBDKk9W6ApoTxIAyP1Ft+yiCchC2oWv80Tjn
	0kJO2xbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjznb-00FhlY-PU; Mon, 08 Nov 2021 08:14:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjznW-00Fhkl-Ec
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 08:14:35 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mjznT-00071G-C4; Mon, 08 Nov 2021 09:14:31 +0100
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
References: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
 <20211108075209.2366770-5-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <746b52d4-bdfa-12fb-05fa-1d9b135b460e@pengutronix.de>
Date: Mon, 8 Nov 2021 09:14:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211108075209.2366770-5-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_001434_523827_03E045C0 
X-CRM114-Status: GOOD (  23.45  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/9] ARM64: <asm/barebox-arm-head.h>: mark prologue
 location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 08.11.21 08:52, Ahmad Fatoum wrote:
> Unlike with ARM32, barebox prologue on ARM64 starts with the function
> prologue, because of the absence of the naked attribute. The code is
> written with that in mind (6 branches instead of 8 to account for the
> two instructions inserted by the compiler), but it's still suprising.
> 
> Add a hint about that in the code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/include/asm/barebox-arm-head.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
> index 8409a77d2e7c..187d12c9fc8d 100644
> --- a/arch/arm/include/asm/barebox-arm-head.h
> +++ b/arch/arm/include/asm/barebox-arm-head.h
> @@ -44,6 +44,8 @@ static inline void __barebox_arm_head(void)
>  		"1: b 1b\n"
>  #endif
>  #else
> +		/* two instruction long function prologue */
> +		/* only use if stack is initialized! */

On the rk3399, the sp points into INTMEM0. When I added a new user to
load_elf64_image_phdr, the function become out-of-line and thus return
from that function broke. Does the rk3568 MaskROM initialize the stack
pointer differently? I want to avoid breaking it when I send out the
remaining rk3399 patches.

>  		"b 2f\n"
>  		"nop\n"
>  		"nop\n"
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

