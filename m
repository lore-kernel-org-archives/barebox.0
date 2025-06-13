Delivery-date: Fri, 13 Jun 2025 13:32:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2dc-006qfq-1d
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 13:32:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ2db-0004V3-OE
	for lore@pengutronix.de; Fri, 13 Jun 2025 13:32:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sS3gpgNTI5z55i/CSq5RyOpExiUTkfQhBfUu1bEjfyQ=; b=o9Xf5E2JFppsHfJ6MOTQnWBCyf
	nqWmKJ1KPm/YNskEXxyI6sC0ujVfLdH7e/mXXn+zmvGPa4/c39EzTw8GNJaxak4BrxQHJ4u9A467P
	YF9kqHsRU7BKXJtlaBcmqqsu2PBmyV0aNy3HCBq5zVG4PqbkPy1f6FjxSD6OhB65nRZadsNQRRDVF
	5Gamh31i8MvrjHHHTWJ/prycUElFsZ8l2NXxtjrNUqgGzG3PCQUlUKcnwlN3IF3ZizcVZwWc+uDZi
	zdc9Ar66pKDPrdGag9LKj6Jyp4Tdhu/+a7gh8KS8LBph1Zozzh5b/6CgFEhyt3FMfvs9pEMPcZ0hT
	cJ4ruiPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2d3-0000000GBnH-0Fq6;
	Fri, 13 Jun 2025 11:31:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ1ng-0000000G5NS-0x2q
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 10:38:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uQ1nd-0005X3-Db; Fri, 13 Jun 2025 12:38:17 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uQ1nd-003HAI-0l;
	Fri, 13 Jun 2025 12:38:17 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uQ1nd-00AtSr-0S;
	Fri, 13 Jun 2025 12:38:17 +0200
Date: Fri, 13 Jun 2025 12:38:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <aEv_mckl-RFUy5Um@pengutronix.de>
References: <20250613103215.1500101-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250613103215.1500101-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_033820_263707_125BBBFD 
X-CRM114-Status: GOOD (  20.99  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: remove unused CONFIG_BOOTM_OFTREE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jun 13, 2025 at 12:32:15PM +0200, Sascha Hauer wrote:
> CONFIG_BOOTM_OFTREE is entirely unused. Remove this Kconfig option.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Please disregard. Just realized the purpose is to select OFTREE.

Sascha

> ---
>  arch/kvx/Kconfig |  1 -
>  common/Kconfig   | 13 +------------
>  2 files changed, 1 insertion(+), 13 deletions(-)
> 
> diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
> index bb662e4fd8..285f140f44 100644
> --- a/arch/kvx/Kconfig
> +++ b/arch/kvx/Kconfig
> @@ -4,7 +4,6 @@ config KVX
>  	bool
>  	select 64BIT
>  	select BOOTM
> -	select BOOTM_OFTREE
>  	select BOOTM_INITRD
>  	select COMMON_CLK
>  	select COMMON_CLK_OF_PROVIDER
> diff --git a/common/Kconfig b/common/Kconfig
> index 987148847e..468a981f32 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -631,17 +631,6 @@ config BOOTM_INITRD
>  	  -r INITRD  specify an initrd image
>  	  -L ADDR    specify initrd load address
>  
> -config BOOTM_OFTREE
> -	bool
> -	depends on BOOTM
> -	select OFTREE
> -	prompt "device tree (oftree) support"
> -	help
> -	  Add support to pass a device tree (a.k.a Open Firmware Tree, oftree). Adds
> -	  this command line option:
> -
> -	  -o DTS  specify device tree
> -
>  config BOOTM_UIMAGE
>  	def_bool y
>  	prompt "support the legacy uImage format"
> @@ -654,7 +643,7 @@ config BOOTM_UIMAGE
>  config BOOTM_OFTREE_UIMAGE
>  	bool
>  	prompt "support passing device tree (oftree) uImages"
> -	depends on BOOTM_OFTREE && BOOTM_UIMAGE
> +	depends on BOOTM_UIMAGE
>  	help
>  	  Support using oftree uImages. Without this only raw oftree
>  	  blobs can be used.
> -- 
> 2.39.5
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


