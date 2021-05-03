Delivery-date: Mon, 03 May 2021 14:02:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXHB-000379-62
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:02:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXHA-0002Hu-8g
	for lore@pengutronix.de; Mon, 03 May 2021 14:02:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hso/scUBjKSpFicPDnIvQ6YKYEHs6pFMwCYlBjcKG3E=; b=GjPfVVRAie+qCeR5+nhGHYy0D
	gYX1TDabga1NoDlwRT3Zk4w2gT3TB2rXP66+JTHiCIbeXbH5PWzPNbDo5TbryN5yUabau44tKGjxO
	FFUie8NyPPogm99YsjUM/4qpX75zy5TRayr/YNljrcI0j+92OjjwgGtPEqFQQXBeLbpCRy+ZqKnSL
	hPdD6pOcWDqkhM3yvDFvmIxQ2HjqZxed7oZzo0nQ3EaihqVaOOoA2mJHNtNAmQg/bvS81iAC/T2Ti
	7UTH6d9f6Ap53icna9FnVoEz6VMMSADqCW7W3rPnUUjGrdlMquxsJJQL0fVmLnOQdF2dfzQ/uhYgp
	DLTIFuheg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXFx-00Dons-Eo; Mon, 03 May 2021 12:00:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXFn-00Dong-O0
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:00:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/krY5xhwN8FIblMljdgJ3CGCvklU/aNUMs9Qy/OtRSs=; b=HZLAs50BnIvNbfGbb6KINk6OBD
 +jVJqXN/lnDL0t1HjggbnCx29pRULvzxKwIkKicCay2fbOhKNyDahMYG7XLoJZR38PYDaG0egkm4H
 6Ekls7RZayn8HLYfKmxfcJQ1TKyVdsHU6ZNGE0feBtksxhqVyEzqh4poMwNt2dVEKA3EpYb9oTPWT
 zcx2EyJasKNzHT2PVn4HntRO3x42jgdtY3hTsOfX9cINyaZnffbOGY2ThPXbTqX7z5EDaniHB/7ID
 w6e266LxBxQMbI/A7WtwGlMWXGSb27t7wDQMkdHGV/T0XlLxRcTn1G3YFWCfwwNgsyHd1I3OZGgxF
 iIpI4gFA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXFk-0032I7-QX
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:00:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXFj-0001xe-Cx; Mon, 03 May 2021 14:00:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXFj-0002o6-3U; Mon, 03 May 2021 14:00:43 +0200
Date: Mon, 3 May 2021 14:00:43 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20210503120043.GG19819@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
 <20210427202309.32077-4-a.fatoum@pengutronix.de>
 <20210503113356.GB19819@pengutronix.de>
 <c6ac7eb8-c664-85c9-8ddc-2b0b95266281@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6ac7eb8-c664-85c9-8ddc-2b0b95266281@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:00:21 up 74 days, 15:24, 100 users,  load average: 0.38, 0.13,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_050044_885330_06214E3B 
X-CRM114-Status: GOOD (  28.01  )
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

On Mon, May 03, 2021 at 01:39:59PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 03.05.21 13:33, Sascha Hauer wrote:
> > Hi Ahmad,
> > 
> > This patch doesn't apply, I think there's something wrong with it.
> > 
> > On Tue, Apr 27, 2021 at 10:23:01PM +0200, Ahmad Fatoum wrote:
> >> -config MACH_ERIZO
> >> -	bool "erizo family"
> >> -	select ARCH_RV32I
> >> -	select HAS_DEBUG_LL
> >> -	select HAS_NMON
> >> -	select USE_COMPRESSED_DTB
> >> -	select RISCV_M_MODE
> >> -	select RISCV_TIMER
> >> -
> >> -config MACH_VIRT
> >> -	bool "virt family"
> >> -	select BOARD_RISCV_GENERIC_DT
> >> -	select CLINT_TIMER
> >> -	help
> >> -	  Generates an image tht can be be booted by QEMU. The image is called
> >> -	  barebox-dt-2nd.img
> > 
> > This drops MACH_ERIZO and MACH_VIRT in favour of:
> > 
> >> +config SOC_ERIZO
> >> +	bool "Erizo SoC"
> >> +	select ARCH_RV32I
> >> +	select HAS_DEBUG_LL
> >> +	select HAS_NMON
> >> +	select USE_COMPRESSED_DTB
> >> +	select RISCV_M_MODE
> >> +	select RISCV_TIMER
> >> +
> >> +config SOC_VIRT
> >> +	bool "QEMU Virt Machine"
> >> +	select BOARD_RISCV_GENERIC_DT
> >> +	select CLINT_TIMER
> >> +	help
> >> +	  Generates an image tht can be be booted by QEMU. The image is called
> >> +	  barebox-dt-2nd.img
> > 
> >> @@ -19,7 +19,7 @@ LDFLAGS_pbl += $(riscv-ldflags-y)
> >>  cflags-y += $(riscv-cflags-y)
> >>  LDFLAGS_barebox += -nostdlib
> >>  
> >> -machine-$(CONFIG_MACH_ERIZO)	:= erizo
> >> +machine-$(CONFIG_SOC_ERIZO)	:= erizo
> > 
> > for CONFIG_*_ERIZO this is changed here as well, but here the file has:
> > 
> > machine-$(CONFIG_MACH_ERIZO)	:= erizo
> > machine-$(CONFIG_MACH_VIRT)	:= virt
> > 
> > I think CONFIG_MACH_VIRT should be replaced here as well. I could fix
> > the obvious, but I am not sure how this happened and if this is the only
> > mistake here, so not applying this. Please resend.
> 
> Sorry, I should have noted that this applied on top of the earlier RISC-V
> patches:
> 
> https://lore.barebox.org/barebox/20210410110638.2106658-1-ahmad@a3f.at/

Ok, applied that one first.

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

