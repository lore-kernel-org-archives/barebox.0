Delivery-date: Tue, 07 Jun 2022 09:19:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTVK-0067sJ-U7
	for lore@lore.pengutronix.de; Tue, 07 Jun 2022 09:19:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTVJ-0003kI-KN
	for lore@pengutronix.de; Tue, 07 Jun 2022 09:19:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5ddYG3rEG8ykQ+LRXbSeWLGNjIWOoZwKYeJrr0A/v14=; b=kE19yPJpk5VhB3zn++8pdAkGyk
	IXDh0TG49OTm9vhvwM+K3Pys97R5BZ6WjM//CbjMncFCN8u89hcWPsT1yKpndgxpbpNQ9WgzKkctS
	83BHgw54NYi10UG9j7SW1g5XXZrPnaDUXNS2F0BAeWvaxSf3McnC6pQftXULhcoyvStMbVUGHjxbu
	e46c8LehfIt11CxmPLFwTNqE2gWPvM/zIbbtl6GeY7zNJ9tOu98VP8aJfRrtDwBPr9loQ1YWNoNXH
	mhzaBj0veOuteR4NjzUZz/OI9mqgeTEzcEnTErepxsJEV1+j3mCkwnVDBaQCM53+yWCPkYFNfQRcx
	746huPIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTTZ-005OjL-Jz; Tue, 07 Jun 2022 07:18:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTTS-005Ohw-Vv
	for barebox@lists.infradead.org; Tue, 07 Jun 2022 07:18:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTTR-0003bW-Ke; Tue, 07 Jun 2022 09:17:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTTR-0000ZX-4L; Tue, 07 Jun 2022 09:17:57 +0200
Date: Tue, 7 Jun 2022 09:17:57 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220607071757.GM1615@pengutronix.de>
References: <20220606064034.9568-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220606064034.9568-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_001759_075109_E4BDDD75 
X-CRM114-Status: GOOD (  23.73  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: syslib: Optimize wait_on_value() function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 06, 2022 at 09:40:34AM +0300, Alexander Shiyan wrote:
> Saves up to 8 bytes in THUMB mode.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-omap/syslib.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-omap/syslib.c b/arch/arm/mach-omap/syslib.c
> index 42da348c5a..488f0ab859 100644
> --- a/arch/arm/mach-omap/syslib.c
> +++ b/arch/arm/mach-omap/syslib.c
> @@ -52,19 +52,16 @@ void sdelay(unsigned long loops)
>   * @param[in] read_addr  address to read from
>   * @param[in] bound max iterations
>   *
> - * @return 1 if match_value is found, else if bound iterations reached,
> + * @return non zero if match_value is found, else if bound iterations reached,
>   *         returns 0
>   */
>  u32 wait_on_value(u32 read_bit_mask, u32 match_value, u32 read_addr, u32 bound)
>  {
> -	u32 i = 0, val;
>  	do {
> -		++i;
> -		val = readl(read_addr) & read_bit_mask;
> +		u32 val = readl(read_addr) & read_bit_mask;
>  		if (val == match_value)
> -			return 1;
> -		if (i == bound)
> -			return 0;
> -	} while (1);
> -}
> +			break;
> +	} while (--bound);
>  
> +	return bound;
> +}
> -- 
> 2.32.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

