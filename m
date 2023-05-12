Delivery-date: Fri, 12 May 2023 13:18:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQnM-00F2sY-6X
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:18:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQnK-0006rw-91
	for lore@pengutronix.de; Fri, 12 May 2023 13:18:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SsrBP7wKbMifi2OsxXLqFA46zXZDVqpD6VqIr0nbE5E=; b=V8BJl5BdS3pVrXCsEIiXwNqNlM
	5N58iF2vCMenlW6E+DeUJImn/5EDnmOJZKviH7Uy9Z2+t8oCtScGbQ6f0jdD5lk1rsckNo7IM2YSY
	ueNc1DJ9Bg2p1qkHFliUC1rVQKfMI0OSaQyCfnJ6Kl2z2kUm2kU9ajV7rwEcyLWYc3KFm67v6hw5j
	XQa9xFwjEeI0750/ipJ+yzXHJcsBbqqG8j/0BA6ztQG2IHUu+cTZOdGqnJyrgkwImzssoRWVee5z5
	ploePJ9bkSZiSDyH32fQvHfXIizUVzgORziclJLr5CvJ6wc9ZjZfahMciG+LxXILAzxy17Q/J/8qE
	FKpY6kEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQmG-00BnCn-1E;
	Fri, 12 May 2023 11:17:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQmE-00BnCT-0m
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:17:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=SsrBP7wKbMifi2OsxXLqFA46zXZDVqpD6VqIr0nbE5E=; b=jNQHUjgzK/T49xQoSXYs4BO26E
	vK9RTbchC2HT01H423WrqAjhUqL/6ZpywulI7AK0VuNz+y7p5qsDYMmRNc/XGTAaXOJvqhdM7z/5E
	yb7LdJEAXYKUMp4iIWnYW1CZZ1u5yOvYp2uj+TC0i9ndpczdp4ftYMUA4hOxiMiacI3nHWo6iivi6
	qqvbKn5wPNcJD7OV5Qy1gdx2XfFVQ5MdvNhpceupQ+GbnaSn6b/qcrWajBZtB4JB/9p+GyMSH2s86
	+uOhj+d3K7eQcfof8MN035ZbdpBKhFNFw0dFGt5ZoXig1g/n05U5lq4a2LbzS/m7LL9/uZegOMEX5
	R/CNwCeg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQmB-0098Er-06
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:17:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQmA-0006n2-HY; Fri, 12 May 2023 13:17:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQm9-00033o-RO; Fri, 12 May 2023 13:17:29 +0200
Date: Fri, 12 May 2023 13:17:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230512111729.GO29365@pengutronix.de>
References: <20230512100825.1261808-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512100825.1261808-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121731_174227_7792A455 
X-CRM114-Status: GOOD (  17.75  )
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
Subject: Re: [PATCH] crypto: imx-scc: Kconfig: drop references to unknown
 symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 12, 2023 at 01:08:25PM +0300, Antony Pavlov wrote:
> barebox has neither CRYPTO_BLKCIPHER nor CRYPTO_DES.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/crypto/imx-scc/Kconfig | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/crypto/imx-scc/Kconfig b/drivers/crypto/imx-scc/Kconfig
> index c5b0ac2e83..75038fd2a5 100644
> --- a/drivers/crypto/imx-scc/Kconfig
> +++ b/drivers/crypto/imx-scc/Kconfig
> @@ -2,8 +2,6 @@
>  config CRYPTO_DEV_MXC_SCC
>  	tristate "Support for Freescale Security Controller (SCC)"
>  	depends on (ARCH_IMX25 || COMPILE_TEST) && OFTREE
> -	select CRYPTO_BLKCIPHER
> -	select CRYPTO_DES
>  	help
>  	  This option enables support for the Security Controller (SCC)
>  	  found in Freescale i.MX25 chips.
> -- 
> 2.39.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


