Delivery-date: Mon, 03 May 2021 13:37:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWtK-0002wp-9f
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:37:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWtJ-0006cL-H8
	for lore@pengutronix.de; Mon, 03 May 2021 13:37:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UiDPNt+bl7/Dl/yF74LJRlONf2KBRrbK+eqt1/1isJg=; b=GI7s+C9U9ZNtDFal98BewB2iC
	afoL102KxPugE3ycV6YKjeH9v2/dfTYp6Dx7V16mLBNy6rDZh8dCBW/zHzlq65zR2Hwxns2SGOxLF
	5yWSufrudln2kRIe0NR6PxUC1ew9wFvyA7OZkOOQf9fkxkWgNJ11038fboVyEJ5RdILRw9z6iwx+L
	HT4HIjSlY6NCaiggQf7U/P4+uaeL5Mkau+ariIISBBrivYph+5kuAeX5h5XLSDZigS8lRnfzXd5uu
	J7ZMqoeDenv/XNGinM/mcmVgL5yFyMpI9aQzsCuog1elHFDkqiw4CU0HRJnxwZ0v3zQw3EexICKWp
	UeC5KojeA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldWqr-00DlGD-9M; Mon, 03 May 2021 11:35:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWpv-00DlCX-1e
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3+3AkM00bHisOx+HGS12K7baqijP3iQD5GQY+MZVOOg=; b=0EOCbftCi9kK3suiGRyd4XEfMI
 Soo0Tekk4gLEzdcwG13z06NgFG79+8OE1H6DYklKhSUsHdWRGmCmv+wkPMft7A/ZoC3zVVhxpBm97
 cP8US0v+tn7xc9NzWDX2dciIdH0SRnYVQ+0TXQATuZCjdbJJm2qBs+l/AGFI/3C8bmAsryUyyEkZx
 +Nc5iOJUaVWV+NA1s++eIRtoBmn+SuWTaQ9XrNWceVDgTSLx+CaJu8I4DH4Um2v3Iza6QFBUCcUoa
 xh3cLc832UAqG2evMW4HQNL0N9scX0xkYckWMghGggl+FiRzHmPPvjI2P5VmCxADU04VcZ7EKI9tt
 jUk0mmcA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWpq-00311l-TT
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:34:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWpp-0006AB-8O; Mon, 03 May 2021 13:33:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWpo-0001Te-UT; Mon, 03 May 2021 13:33:56 +0200
Date: Mon, 3 May 2021 13:33:56 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20210503113356.GB19819@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
 <20210427202309.32077-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427202309.32077-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:29:48 up 74 days, 14:53, 100 users,  load average: 0.00, 0.05,
 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_043358_971390_04B4BBB7 
X-CRM114-Status: GOOD (  19.42  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/12] RISC-V: support multi-image for all machines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

This patch doesn't apply, I think there's something wrong with it.

On Tue, Apr 27, 2021 at 10:23:01PM +0200, Ahmad Fatoum wrote:
> -config MACH_ERIZO
> -	bool "erizo family"
> -	select ARCH_RV32I
> -	select HAS_DEBUG_LL
> -	select HAS_NMON
> -	select USE_COMPRESSED_DTB
> -	select RISCV_M_MODE
> -	select RISCV_TIMER
> -
> -config MACH_VIRT
> -	bool "virt family"
> -	select BOARD_RISCV_GENERIC_DT
> -	select CLINT_TIMER
> -	help
> -	  Generates an image tht can be be booted by QEMU. The image is called
> -	  barebox-dt-2nd.img

This drops MACH_ERIZO and MACH_VIRT in favour of:

> +config SOC_ERIZO
> +	bool "Erizo SoC"
> +	select ARCH_RV32I
> +	select HAS_DEBUG_LL
> +	select HAS_NMON
> +	select USE_COMPRESSED_DTB
> +	select RISCV_M_MODE
> +	select RISCV_TIMER
> +
> +config SOC_VIRT
> +	bool "QEMU Virt Machine"
> +	select BOARD_RISCV_GENERIC_DT
> +	select CLINT_TIMER
> +	help
> +	  Generates an image tht can be be booted by QEMU. The image is called
> +	  barebox-dt-2nd.img

> @@ -19,7 +19,7 @@ LDFLAGS_pbl += $(riscv-ldflags-y)
>  cflags-y += $(riscv-cflags-y)
>  LDFLAGS_barebox += -nostdlib
>  
> -machine-$(CONFIG_MACH_ERIZO)	:= erizo
> +machine-$(CONFIG_SOC_ERIZO)	:= erizo

for CONFIG_*_ERIZO this is changed here as well, but here the file has:

machine-$(CONFIG_MACH_ERIZO)	:= erizo
machine-$(CONFIG_MACH_VIRT)	:= virt

I think CONFIG_MACH_VIRT should be replaced here as well. I could fix
the obvious, but I am not sure how this happened and if this is the only
mistake here, so not applying this. Please resend.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

