Delivery-date: Thu, 14 Sep 2023 09:45:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgh30-00El8R-Q6
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 09:45:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgh2y-0006xN-TK
	for lore@pengutronix.de; Thu, 14 Sep 2023 09:45:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZeebgSZ3R85Pp8vkUx2daiMK5s8j00ZSrRlnd2BqSuk=; b=bAEimaj76MLqWznaIwnU2wpaWf
	TO8k7GCwLGC9x/6FhdEWwF5MTEKl1Dicr9bstKHjo5dXYP4sfKfKwT52TMqBhFyzFi8ox5Pzx9jTV
	NxS2OzTNG/AsXP9ul8Ujw2euxluvEKgLsBzw5OalKU6t8ZgaR7lOnonwbzFVplYtHRF4bQFsZDgeq
	Mu9xn6XRKGzbiMufA0vQ/rMKIrXO3ZzTjti6kVXYgBC6dlgJ/fjT776vg/lAkTzfy7P7qRKoi9CmE
	PEeHEyJNPttMZkUC4HWzaqOgbcWU9z6Y4RBMLV9U68893it6uJ2IoZhC6UwuSaTWi6mXyH1mQhq92
	GPlPdKYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgh1t-007cIH-04;
	Thu, 14 Sep 2023 07:44:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgh1p-007cHL-32
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 07:44:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qgh1m-0006Iq-NH; Thu, 14 Sep 2023 09:44:42 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qgh1m-006FcR-Ay; Thu, 14 Sep 2023 09:44:42 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qgh1m-006etl-8g; Thu, 14 Sep 2023 09:44:42 +0200
Date: Thu, 14 Sep 2023 09:44:42 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230914074442.GH637806@pengutronix.de>
References: <20230913120157.1859226-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913120157.1859226-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_004445_982196_C4099BA5 
X-CRM114-Status: GOOD (  21.18  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: Zynqmp: define cdns_serial_putc for use with
 pbl_set_putc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 13, 2023 at 02:01:57PM +0200, Ahmad Fatoum wrote:
> Unlike other debug_ll headers, such as i.MX's or AT91, the ZynqMP header
> only defined PUTC_LL, but no function suitable for use with
> pbl_set_putc.
> 
> Remedy that, so PBL entry points can benefit from CONFIG_PBL_CONSOLE.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/mach/zynqmp/debug_ll.h | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/mach/zynqmp/debug_ll.h b/include/mach/zynqmp/debug_ll.h
> index 7642e37a4ed5..cc94d3ce54b4 100644
> --- a/include/mach/zynqmp/debug_ll.h
> +++ b/include/mach/zynqmp/debug_ll.h
> @@ -15,9 +15,9 @@
>  #define ZYNQMP_UART_STS_TFUL	(1 << 4)
>  #define ZYNQMP_UART_TXDIS		(1 << 5)
>  
> -static inline void PUTC_LL(int c)
> +static inline void cdns_serial_putc(void *ctx, int c)
>  {
> -	void __iomem *base = (void __iomem *)ZYNQMP_DEBUG_LL_UART_BASE;
> +	void __iomem *base = ctx;
>  
>  	if (readl(base) & ZYNQMP_UART_TXDIS)
>  		return;
> @@ -28,4 +28,9 @@ static inline void PUTC_LL(int c)
>  	writel(c, base + 0x30);
>  }
>  
> +static inline void PUTC_LL(int c)
> +{
> +	cdns_serial_putc(IOMEM(ZYNQMP_DEBUG_LL_UART_BASE), c);
> +}
> +
>  #endif /* __MACH_ZYNQMP_DEBUG_LL_H__ */
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


