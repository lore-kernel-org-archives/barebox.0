Delivery-date: Mon, 01 Sep 2025 14:40:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut3ph-006uPF-2H
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 14:40:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut3pg-00037J-FV
	for lore@pengutronix.de; Mon, 01 Sep 2025 14:40:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mrlJJ75pSnHBNwLBmUROErOFfwQREio2mflplw9tziM=; b=aI/UwI3FqZT5yp7zg6KY1eiDnr
	Zubgobk7CGPD03Dr9AxUhjgQHntR9VzGPYQh9z7zDViS17eb+wVcAPbK/uxs4NWt4wJR+FZs6HMQ7
	27on7XSayiFUp1LKIWZvuQJBPpCe0DzoX+N1FHKjS7ixrSjM5gHsZXV4SH9IDMkv/o5b1fyX8Tt5O
	VfCytdAsM0X6km9WIGsF5vC6shSvlo8O/dF9Td0wBSRdzjladrbTaw+FIP4nQdLl9RVigJcTVzZ1z
	BuCcORn03m+mU7QWdkxYP0sI2W3K5T2ipww5+cjnGFu/6CmGnbatHFaMpkRq5g51J+tH2REgPMLW2
	yV76DbUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut3pF-0000000CYPb-23lp;
	Mon, 01 Sep 2025 12:39:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut1wW-0000000Bvtt-1FZd
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 10:39:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut1wR-0007Rh-Nv; Mon, 01 Sep 2025 12:39:15 +0200
Message-ID: <fa6f678f-7e79-401c-b857-43d34885ef6e@pengutronix.de>
Date: Mon, 1 Sep 2025 12:39:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <afa@pengutronix.de>
References: <20250828093135.1959085-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250828093135.1959085-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_033920_340720_6D397C4C 
X-CRM114-Status: GOOD (  24.52  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Kbuild: do not build dtbs concurrently
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 8/28/25 11:31 AM, Sascha Hauer wrote:
> commit 3c862a83f019 ("kbuild: restrict dtbs target to enabled DTs by
> default") added the dtbs target as a dependency to the images target.
> In the dtbs target we call into Kbuild for building the device trees.
> The device trees are also built as part of the regular build in
> parallel, so we end up running Kbuild for the same directory twice.
> 
> This sometimes results in failed builds with messages like this one
> (done with make V=2):
> 
>   AS [P]  arch/arm/dts/bcm2711-rpi-400.dtb.pbl.o - due to target missing
>   AS [P]  arch/arm/dts/bcm2711-rpi-400.dtb.pbl.o - due to target missing
> fixdep: error opening file: arch/arm/dts/.bcm2711-rpi-400.dtb.pbl.o.d: No such file or directory
> 
> Fix this by removing the dtbs target from the images dependencies. We
> then would no longer build the dtbs-list, so build that unconditionally
> once we descend into a directory containing device trees. The dtbs-list
> is built with always-y which should make sure it is ready once we need
> it in imagages/
> 
> Fixes: 3c862a83f019 ("kbuild: restrict dtbs target to enabled DTs by default")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Makefile               | 7 +------
>  scripts/Makefile.build | 2 +-
>  scripts/Makefile.dtbs  | 2 --
>  3 files changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index b9c252476f..7620c47cf4 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1187,15 +1187,10 @@ ifneq ($(dtstree),)
>  
>  PHONY += dtbs dtbs_prepare
>  dtbs: dtbs_prepare
> -	$(Q)$(MAKE) $(build)=$(dtstree) need-dtbslist=1
> +	$(Q)$(MAKE) $(build)=$(dtstree)
>  
>  dtbs_prepare: include/config/kernel.release scripts_dtc
>  
> -ifdef CONFIG_OFDEVICE
> -images: dtbs
> -images/%: dtbs
> -endif
> -
>  endif
>  
>  PHONY += scripts_dtc
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 591da3d750..fed8c247f9 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -56,7 +56,7 @@ ifneq ($(userprogs),)
>  include scripts/Makefile.userprogs
>  endif
>  
> -ifneq ($(need-dtbslist)$(dtb-y)$(dtb-)$(filter %.dtb %.dtb.o %.dtbo.o,$(targets)),)
> +ifneq ($(dtb-y)$(dtb-)$(filter %.dtb %.dtb.o %.dtbo.o,$(targets)),)
>  include $(srctree)/scripts/Makefile.dtbs
>  endif
>  
> diff --git a/scripts/Makefile.dtbs b/scripts/Makefile.dtbs
> index 7b5b9e1d16..25ed08e8ee 100644
> --- a/scripts/Makefile.dtbs
> +++ b/scripts/Makefile.dtbs
> @@ -10,11 +10,9 @@ always-y        += $(dtb-y)
>  # dtbs-list
>  # ---------------------------------------------------------------------------
>  
> -ifdef need-dtbslist
>  subdir-dtbslist := $(addsuffix /dtbs-list, $(subdir-ym))
>  dtb-y           += $(subdir-dtbslist)
>  always-y        += $(obj)/dtbs-list
> -endif
>  
>  $(subdir-dtbslist): $(obj)/%/dtbs-list: $(obj)/% ;
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



