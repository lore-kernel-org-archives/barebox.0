Delivery-date: Mon, 17 Apr 2023 08:59:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIpj-00615d-Jz
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 08:59:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIpj-0002Vb-Ji
	for lore@pengutronix.de; Mon, 17 Apr 2023 08:59:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xnWwytUPMETzqe1QkXt0fG49wNfvXkVrTCGwetycd6k=; b=z4g+OOMxIA94Sw9QZ53YnpmJkR
	AXroON5dqpGCnRbWUATqix0WNuxwQG1Q4D70Rth4NffWBNt7P/t/Ne+4BwwuDbg7MFY1eENXvDZSE
	8s9v+nh6dtjKtGVIYxdxaeOvSq0i0NUD0MrVKElXGUV2FdFOFthjzt8fNthpE2gnEE5JzYGwLIWlU
	85nb5fX5aOwpVlvN33NLPMWAYIKpY4x/VjMbC/8d2iscqaWotNrI7svw9l7Zoui0VLeuFzoqUazeZ
	9+lv/lmz6/GiryQx8NPCEaX9RtbsPGnJpcwhDFUc1IQHvoTFonMjWlAU936TOkvVgKdOj7iCV4Tu7
	nEeO7/uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poIoY-00F7J3-2a;
	Mon, 17 Apr 2023 06:58:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poIoT-00F7IG-2b
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 06:58:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIoS-0002IV-Gr; Mon, 17 Apr 2023 08:58:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIoS-0004Qj-80; Mon, 17 Apr 2023 08:58:08 +0200
Date: Mon, 17 Apr 2023 08:58:08 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230417065808.GG13543@pengutronix.de>
References: <20230414132651.1703346-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230414132651.1703346-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_235809_842695_2215A1A2 
X-CRM114-Status: GOOD (  18.89  )
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
Subject: Re: [PATCH master] ARM: i.MX6: fix DEBUG_LL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 14, 2023 at 03:26:51PM +0200, Ahmad Fatoum wrote:
> Below mentioned commit added a select DEBUG_IMX_UART for all supported
> i.MX variants apart from the i.MX6Q. Let's do likewise there, so
> DEBUG_LL may be enabled without errors about missing PUTC_LL definition.
> 
> Fixes: 0fff6cb9bb4f ("ARM: i.MX: Only provide PUTC_LL() when activated")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index d951947463a2..ac3df75acbc5 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1342,6 +1342,7 @@ config DEBUG_IMX53_UART
>  config DEBUG_IMX6Q_UART
>  	bool "i.MX6Q Debug UART"
>  	depends on ARCH_IMX6
> +	select DEBUG_IMX_UART
>  	help
>  	  Say Y here if you want kernel low-level debugging support
>  	  on i.MX6Q.
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


