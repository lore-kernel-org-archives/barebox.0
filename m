Delivery-date: Mon, 05 Jun 2023 15:43:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6AUE-00Bphx-Jb
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 15:43:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6AUB-000617-UZ
	for lore@pengutronix.de; Mon, 05 Jun 2023 15:43:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kKEOAhwGLIPcCV+V0if0eN1fW0UADbeiuLPK3NQhuUE=; b=I28UeOf3mc+yPmusM6PkWKqxKl
	ZOPaVjicF5wyKN3yhRPsZfUw0ADrR9RJ659do1X0NJm9fLdImpoFWrt+MkwwDrYXPkDO/MSNlk2eo
	VnV5C0WAuysb+OJABp6v4oEHfxqRV566TWtdjsk063qfLmkET6JGFeBpgiftMBmljnrfqnbPBgWi7
	/fljs2zkMD9aag7rAeKK6RfsaplM95rdSaIrnxRC8wAS1l69tjPzUGtfZJqrgLbfuSJFFVhamV04M
	95rY8MG2RrrnsVgENNE8yWEWPKsKBGcYyR7gtSgipL0tvM98/+uNkDk1jDA0+tPsSB0elG3sbWw1l
	sBY3jpAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6AT4-00FeHV-2A;
	Mon, 05 Jun 2023 13:41:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6AT1-00FeGl-1m
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 13:41:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6ASy-0005w9-LG; Mon, 05 Jun 2023 15:41:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6ASy-0006Bx-Cy; Mon, 05 Jun 2023 15:41:48 +0200
Date: Mon, 5 Jun 2023 15:41:48 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230605134148.GO18491@pengutronix.de>
References: <20230605062803.3994132-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230605062803.3994132-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_064151_586589_0ECCB6E0 
X-CRM114-Status: GOOD (  22.26  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: limit CONFIG_TEXT_BASE to 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 05, 2023 at 08:28:03AM +0200, Ahmad Fatoum wrote:
> The linker scripts fail in an odd way if CONFIG_TEXT_BASE doesn't
> fit in 32-bit, e.g. reporting that the PBL is greater than
> 0xffffffff, because CONFIG_TEXT_BASE is bigger than that.
> 
> As new platform should just select CONFIG_PBL_RELOCATABLE and
> CONFIG_RELOCATABLE anyway, let's enforce the 32-bit maximum in
> Kconfig to make errors easier to grok.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 5346ba5a623c..11aabbb509df 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -198,9 +198,13 @@ config TEXT_BASE
>  	depends on HAVE_CONFIGURABLE_TEXT_BASE
>  	prompt "TEXT_BASE"
>  	hex
> +	range 0 0xffffffff
>  	default ARCH_TEXT_BASE
>  	help
> -	  The Address barebox gets linked at.
> +	  The 32-bit address barebox gets linked at. This is forced
> +	  to zero for relocatable barebox and fixed up at runtime,
> +	  so barebox is executable on arbitrary addresses (given
> +	  sufficient alignment).
>  
>  config BAREBOX_MAX_IMAGE_SIZE
>  	prompt "Maximum size of barebox"
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


