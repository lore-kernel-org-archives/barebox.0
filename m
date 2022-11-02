Delivery-date: Wed, 02 Nov 2022 09:28:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq96b-00C2KE-Em
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 09:28:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq96a-00040L-AI
	for lore@pengutronix.de; Wed, 02 Nov 2022 09:28:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ChC1h13SyQzdUiXUUkajzrW57EcFHWuiWozzlplKi90=; b=L+aOrFqu1H/p1lQZDcfhMtVz7/
	yG7/uekLrJ2vg0tHxBjaXEfLRU35SN8W3vKNjAT7isgzyPU0YNyEvODUBh/4WNt9W56h5TdyKynj8
	GgfAG/u/XcCHecBOO2+XP5dRXX0fGjx6oUbR/8QUwZNP8saYf/PK14hAM4UFma/hSJVpyCgI5N4Vj
	8aPupOiCKHAwcBKwP6gn4D4eUC2p6Wf/d/5A3xJrkBK/7NRc4myT2p9nKnDBOQyrDZeldRm/r8MJy
	WYaunDbaEu0dg4Et6FkReUSXiHnTQMZkLLjRvT1l0yZeo7mdHPz7KW4ma0uaD0oHFAe1N9eIoO4t4
	2lpT+f+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq95L-008uDA-AQ; Wed, 02 Nov 2022 08:26:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq95G-008uCF-Uw
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 08:26:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq95F-0003tN-0p; Wed, 02 Nov 2022 09:26:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq95E-00007F-PN; Wed, 02 Nov 2022 09:26:48 +0100
Date: Wed, 2 Nov 2022 09:26:48 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221102082648.GI3143@pengutronix.de>
References: <20221019123817.1659468-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221019123817.1659468-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_012651_019080_52221660 
X-CRM114-Status: GOOD (  24.23  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] include: debug_ll: define puthexc_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 19, 2022 at 02:38:15PM +0200, Ahmad Fatoum wrote:
> puthex_ll prints a single zero-padded unsigned long, which for a single
> byte is not very readable, especially on 64-bit systems. Define
> puthexc_ll() as well, which just accepts a byte and formats its nibbles
> as hexadecimal characters.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/debug_ll.h | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/debug_ll.h b/include/debug_ll.h
> index 735033b314cc..856a157bf52c 100644
> --- a/include/debug_ll.h
> +++ b/include/debug_ll.h
> @@ -33,17 +33,25 @@ static inline void putc_ll(char value)
>  	PUTC_LL(value);
>  }
>  
> -static inline void puthex_ll(unsigned long value)
> +static inline void puthexc_ll(unsigned char value)
>  {
>  	int i; unsigned char ch;
>  
> -	for (i = sizeof(unsigned long) * 2; i--; ) {
> +	for (i = 2; i--; ) {
>  		ch = ((value >> (i * 4)) & 0xf);
>  		ch += (ch >= 10) ? 'a' - 10 : '0';
>  		putc_ll(ch);
>  	}
>  }
>  
> +static inline void puthex_ll(unsigned long value)
> +{
> +	int i;
> +
> +	for (i = sizeof(unsigned long); i--; )
> +		puthexc_ll(value >> (i * 8));
> +}
> +
>  /*
>   * Be careful with puts_ll, it only works if the binary is running at the
>   * link address which often is not the case during early startup. If in doubt
> @@ -66,6 +74,10 @@ static inline void putc_ll(char value)
>  {
>  }
>  
> +static inline void puthexc_ll(unsigned char value)
> +{
> +}
> +
>  static inline void puthex_ll(unsigned long value)
>  {
>  }
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


