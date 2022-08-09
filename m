Delivery-date: Tue, 09 Aug 2022 11:50:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLsg-00HERg-V1
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 11:50:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLsh-0008Uf-Ko
	for lore@pengutronix.de; Tue, 09 Aug 2022 11:50:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+5va7kvHlxglb6CLQFyh2T5KUXEC4PPQpzKNSE28XEQ=; b=EipRlFpssF5v4RWinB4l3ec5BY
	WMqgBpzWLUK6GcsFQlTqzlJNFcCcOFFiC8h4yh646VXFLu1egeyLVB6y/FAmwZxEDMj2XkR5PonhJ
	QOL+iC7Gfe0i15/k27NhIfFZeH/oF5A8LwfVYnnkEDDyGhz2NlCq12m6T/iIO4wwLQVxBiHHVNOrM
	3iIwS7ckDVzlMpviPFE8Kr5iAHtAzlHqUMizveK3aHpdPfFzI5zeJl+4czu6L5WrvAMx+3iuZFE6Z
	86/Y7WEpQfdBN3unpO6pNoC2gnkR5kPoxHWTfod7KugKVxJItGT2pkUpsEiuKUu6RFtVrwbrejkVn
	WH3Ocp8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLrJ-0037x1-HO; Tue, 09 Aug 2022 09:49:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLrF-0037wG-2u
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 09:49:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLLrD-0008El-32; Tue, 09 Aug 2022 11:49:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLLrC-0001kU-QA; Tue, 09 Aug 2022 11:49:02 +0200
Date: Tue, 9 Aug 2022 11:49:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809094902.GP31528@pengutronix.de>
References: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
 <20220809062938.1750369-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220809062938.1750369-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_024905_142182_55571FE5 
X-CRM114-Status: GOOD (  22.79  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] ARM: dts: stm32mp: add bootrom serial (DFU) reboot
 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 09, 2022 at 08:29:38AM +0200, Ahmad Fatoum wrote:
> The same register we use for the reboot mode communication between Linux
> and barebox is also sampled by the bootrom. If the lowest 16 bits of it
> are 0x00FF, the bootrom will enter DFU mode. Add the appropriate
> reboot-mode, but with a barebox, prefix, so Linux doesn't automatically
> provide it to userspace along with the existing loader and recovery
> modes.

Why do we need to prevent Linux from providing dfu mode to userspace?
Isn't that a vlid usecase?

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/stm32mp151.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
> index ed7cf6192bea..ac6536a556a9 100644
> --- a/arch/arm/dts/stm32mp151.dtsi
> +++ b/arch/arm/dts/stm32mp151.dtsi
> @@ -41,9 +41,10 @@
>  	reboot_mode_tamp: reboot-mode {
>  		compatible = "syscon-reboot-mode";
>  		offset = <0x150>; /* reg20 */
> -		mask = <0xff>;
> +		mask = <0xffff>;
>  		mode-normal = <0>;
>  		mode-loader = <0xBB>;
>  		mode-recovery = <0xBC>;
> +		barebox,mode-serial = <0xFF>;
>  	};
>  };
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


