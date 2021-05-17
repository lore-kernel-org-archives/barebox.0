Delivery-date: Mon, 17 May 2021 08:59:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liXDi-0000NI-Vm
	for lore@lore.pengutronix.de; Mon, 17 May 2021 08:59:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liXDi-0000xM-3N
	for lore@pengutronix.de; Mon, 17 May 2021 08:59:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=chRxJxlYvS2EpGV6OjQnFqHM2eOW+X45tswLiKiEZmI=; b=qcWOjAsZE0kYszgsiEhvxxOpM
	Vkbmu/PbfqRZktQTemhoEkmBd1LPPMfb4oG/86oSOyrpXJaNBodGmPdLVeI1xYcYLXoveyqv/PClj
	erF3/CFC2Hor+Vxfu2Mu/j7VU5FDpJM+T7snw/r14N0UEbPeo+bHRM925m4lCu3++n5PFaEnHcMjC
	0IWXhASzKCncxBlbiA/P7o79PpEHHBQTd96oRTrw55LeSRkz8zIaRjNN6yFAKX1RQEjv/RngrjRKH
	UiC4LhJbWlkzntkyBpylqklNQAZYRoQyE0U2wZG98AhiOkka2JplOC3c2XlcLQUrWev6LY4WF4Qyw
	AbgnIUZPA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liXCH-00DyYB-BY; Mon, 17 May 2021 06:57:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXCC-00DyXL-N5
 for barebox@desiato.infradead.org; Mon, 17 May 2021 06:57:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=h2C1+1r5oNhW0S5gen2x3jPqpasPa/YpDARTENyUwY4=; b=1whB7CHMnHGxyBKcXFO4Y/HjFX
 LdLE5qjzeUvdokcv85caYR2ZhPaXuZz82CO9NqPtDnV//Eo75mqCrtvvVhlSIh4E+Lv6yoCMV9ANT
 hk5o9b5w0j6mfPB/3Jy1kL/40IraOdzkIxx3+3+JpWar9LfKOn9VYw4KBmWh1nIR+E9TmgrKHHTUh
 17DFaridlBb/LKNOqweUK7OSTrD/ar5Zh/alePodSE4RxcK5OifydEeg5xQ62EVg0P1j85kJds7nz
 nav7uQZhDIoCcV/eoDSWMyI1p1CKFePM0i2nZ30nxcnr5JSDPfKYZZtmBIMuAtcszvH0Ym0aT/Le3
 yzJJlU3w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXCA-00DWvb-0N
 for barebox@lists.infradead.org; Mon, 17 May 2021 06:57:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liXC8-0000qX-DW; Mon, 17 May 2021 08:57:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liXC8-0002DL-4N; Mon, 17 May 2021 08:57:40 +0200
Date: Mon, 17 May 2021 08:57:40 +0200
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20210517065740.GF31738@pengutronix.de>
References: <20210511150845.10973-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511150845.10973-1-masahiroy@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:54:07 up 88 days, 10:17, 101 users,  load average: 0.09, 0.22,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_235742_066523_57080AD7 
X-CRM114-Status: GOOD (  20.05  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kconfig: update to Linux 5.13-rc1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Masahiro,

On Wed, May 12, 2021 at 12:08:45AM +0900, Masahiro Yamada wrote:
> The previous sync was Linux 5.9-rc2.
> 
> Resync scripts/kconfig/ with Linux 5.13-rc1.
> 
> Highlights:
> 
>  - make header names in include/config/ and CONFIG symbols match
>    (scripts/basic/fixdep.c was adjusted)
> 
>  - remove all 'option' syntax
>    (common/Kconfig was adjusted)
> 
>  - introduce KCONFIG_DEFCONFIG_LIST instead of 'option defconfig_list'
> 
>  - bug fixes and cleanups of nconfig
> 
>  - drop Qt4 support from xconfig
> 
>  - bug fixes, improvements, cleanups of xconfig
> 
>  - print a short log for syncconfig
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

This breaks building firmware:

make[1]: *** No rule to make target 'include/config/extra/firmware/dir.h', needed by 'firmware/lpddr4_pmu_train_1d_dmem.bin.gen.S'.  Stop.

This happens on imx_v8_defconfig.

Do we need an adoption of 3470d9eb6387 any maybe more?

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

