Delivery-date: Mon, 05 Jun 2023 15:50:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Abq-00BpzF-U9
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 15:50:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Abo-0007EK-8z
	for lore@pengutronix.de; Mon, 05 Jun 2023 15:50:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ufWTYzovb9FlRDewmeECey1Z7b1pcFVUhko0Ag6C0dc=; b=keU3Kj7eXeK+Mjlk5blJDLMh//
	UTCJs1SWqVfNswJBrqLxFJnU5WshF5z5hOATljbfeLGtGWphoq2V9dkSIf1d+8MmORR6rdYroB07B
	ggyKGOwX567VHcxhaHgyo0qpyl2XG2BUU7Oa3OvtblhALtNRq57ioNMFuu92fVFLKV3D8XZ431N90
	UVjvYh/yG01VQ+TP1TKIsdWSEiA++HUT/02cDEtReLmska7fKXGv6mt0PFZkbAHXuHSqps/T8N9gH
	jfpaA21EwXJZvMmonpTWIAZHMqrJEn4XPxLLTA0SOnpT3Iaez7J2urwF/CBpuGYMgd1G7+BI4qDOf
	QIiO231g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Aaq-00FgLX-0F;
	Mon, 05 Jun 2023 13:49:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Aam-00FgK9-2T
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 13:49:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6Aal-0006pU-I1; Mon, 05 Jun 2023 15:49:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6Aal-0006Xy-3u; Mon, 05 Jun 2023 15:49:51 +0200
Date: Mon, 5 Jun 2023 15:49:51 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230605134951.GR18491@pengutronix.de>
References: <20230602180745.891623-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230602180745.891623-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_064952_800424_81FEA1B1 
X-CRM114-Status: GOOD (  21.40  )
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
Subject: Re: [PATCH] fixup! string: import strverscmp_improved from systemd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 02, 2023 at 08:07:45PM +0200, Ahmad Fatoum wrote:
> lib: revert CONFIG_STMP_DEVICE prompt visibility
> 
> CONFIG_STMP_DEVICE is unrelated to the strverscmp changes and I touched
> it by mistake when I sought to remove VERSION_CMP's prompt. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  lib/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 84d2a2573625..758197b60866 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -107,7 +107,7 @@ config IMAGE_SPARSE
>  	bool
>  
>  config STMP_DEVICE
> -	bool "STMP device support"
> +	bool "STMP device support" if COMPILE_TEST
>  
>  config FSL_QE_FIRMWARE
>  	select CRC32
> @@ -168,7 +168,7 @@ config PROGRESS_NOTIFIER
>  	  progress, like blinking a LED during an update.
>  
>  config VERSION_CMP
> -	bool "version comparison utilities" if COMPILE_TEST
> +	bool
>  	help
>  	  This is selected by code that needs to compare versions
>  	  in a manner compatible with
> -- 
> 2.38.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


