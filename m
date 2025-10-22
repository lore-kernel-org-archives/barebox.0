Delivery-date: Wed, 22 Oct 2025 16:01:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBZPa-00Acwt-2l
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 16:01:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBZPa-0008Oe-6P
	for lore@pengutronix.de; Wed, 22 Oct 2025 16:01:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ySjvpfq/ZFfu44tcGK7uQmgr9+J1jRoFOrba+CKi5c=; b=DbimtVipIQyTo7Axfq1JgdOLlA
	7AEE7p9UheB8qEqs9KL2olg+Wku3kokk+gol1i5EDWleDZyXTjAGHYC9r6MIMpKMOZott4bVYYONe
	e9cJnZXJAJ8SzqxLL4CYcJXfm5uZQniDxXyLuafDP/+licrbakqv/yO4jCi8bhj2tY8DNl+9wWlOW
	aKbhz08/Ue5lWFgMdvY5uwacVrbwr8b/mf5iKeeF1yl8yK8d0ZKeLvp1u9DrauxDfe8MoF5FOmX1r
	QK0g/iyNhCA6Bt58zoASR0dv4ce8/jQaaaWn3fbwu4r+xRe34GHni3t9AcR3tTmUl20y+B3wCEX9e
	i9I/VmpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZP6-0000000381c-1ISh;
	Wed, 22 Oct 2025 14:01:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZP4-0000000381E-1JfM
	for barebox@bombadil.infradead.org;
	Wed, 22 Oct 2025 14:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=+ySjvpfq/ZFfu44tcGK7uQmgr9+J1jRoFOrba+CKi5c=; b=f4JC6cDsncGmuCoIBbphobagZ4
	mYKds71TxdN49+cplat7uwE5YGy3XMfryMuisHKvxi7az2sNOZEpaUJowTeCvKJMqizatyebeCisE
	rgSRsughtd7TuOpEtZ0vo7NaKiU62HJQS6vWLqOp2Ke45iGoWjgyI9AdmVNx2JMLlJV6boKLsH3Jo
	sVONBr1uJ02qL8sh3LJKnbrrKRd45MSNb6Gxg/2be2aeGr4bVroWJY5Pw9rjdWFL92YjBDVekylcS
	NDxD+SwV3uPpd7bNaNMXCtAfr5Hol/CUhHC1bxwy6sAyuAYdDpAy0I2Q3uGE/uaY64dFQlYt7knR/
	2o+5G95A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBYXK-00000000bm6-0bEY
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 13:05:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBZOz-00088q-6y; Wed, 22 Oct 2025 16:01:21 +0200
Message-ID: <63059133-1d1f-4c0b-a056-c9694b3a4ae3@pengutronix.de>
Date: Wed, 22 Oct 2025 16:01:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20251022133738.1395366-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251022133738.1395366-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_140554_313316_B38CA55D 
X-CRM114-Status: GOOD (  23.29  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Kbuild: make sure to build fixdep first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/22/25 3:37 PM, Sascha Hauer wrote:
> A host tool is built with:
> 
> $(host-csingle): $(obj)/%: $(src)/%.c FORCE
> 	$(call if_changed_dep,host-csingle)
> 
> if_changed_dep calls fixdep after successful compilation. fixdep is a
> host tool itself, so this only works when fixdep ist the first host tool
> that is being built.
> 
> Recently the sconfigpost tool was added to scripts/basic, so it can
> happen that this is built before fixdep so that the fixdep call fails.
> 
> Fix this by moving sconfigpost to a separate directory and adding
> scripts_basic as a dependency.
> 
> The erroneous behaviour can be reproduced with:
> make ARCH=arm --shuffle=2659722306 O=build-foo imx_v8_defconfig
> 
> Fixes: b720fb9a90 ("Add security policy support")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

:|

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

But got a comment below:

> ---
>  Makefile                                     | 10 +++++++---
>  scripts/basic/Makefile                       |  1 -
>  scripts/sconfigpost/Makefile                 |  1 +
>  scripts/{basic => sconfigpost}/sconfigpost.c |  0
>  4 files changed, 8 insertions(+), 4 deletions(-)
>  create mode 100644 scripts/sconfigpost/Makefile
>  rename scripts/{basic => sconfigpost}/sconfigpost.c (100%)
> 
> diff --git a/Makefile b/Makefile
> index 7884953539..3774b4f9c1 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -450,7 +450,7 @@ AWK		= awk
>  GENKSYMS	= scripts/genksyms/genksyms
>  DEPMOD		= /sbin/depmod
>  KALLSYMS	= scripts/kallsyms
> -SCONFIGPOST	= scripts/basic/sconfigpost
> +SCONFIGPOST	= scripts/sconfigpost/sconfigpost

Can we name the directory just sconfig?
Maybe we add different utilities there in future.

>  PERL		= perl
>  PYTHON3		= python3
>  CHECK		= sparse
> @@ -556,6 +556,10 @@ PHONY += scripts_basic
>  scripts_basic:
>  	$(Q)$(MAKE) $(build)=scripts/basic
>  
> +PHONY += scripts_sconfigpost
> +scripts_sconfigpost: scripts_basic
> +	$(Q)$(MAKE) $(build)=scripts/sconfigpost
> +
>  PHONY += outputmakefile
>  # Before starting out-of-tree build, make sure the source tree is clean.
>  # outputmakefile generates a Makefile in the output directory, if using a
> @@ -1223,10 +1227,10 @@ endif
>  quiet_cmd_sconfigpost = SCONFPP $@
>        cmd_sconfigpost = $(SCONFIGPOST) $2 -D $(depfile) -o $@ $<
>  
> -include/generated/security_autoconf.h: .security_config scripts_basic FORCE
> +include/generated/security_autoconf.h: .security_config scripts_sconfigpost FORCE
>  	$(call if_changed_dep,sconfigpost,-e)
>  
> -include/generated/sconfig_names.h: .security_config scripts_basic include/generated/security_autoconf.h FORCE
> +include/generated/sconfig_names.h: .security_config scripts_sconfigpost include/generated/security_autoconf.h FORCE
>  	$(call if_changed_dep,sconfigpost,-s)
>  
>  archprepare: include/generated/security_autoconf.h include/generated/sconfig_names.h
> diff --git a/scripts/basic/Makefile b/scripts/basic/Makefile
> index cd4d9f321d..65a714b578 100644
> --- a/scripts/basic/Makefile
> +++ b/scripts/basic/Makefile
> @@ -4,4 +4,3 @@
>  # sconfigpost: used to postprocess security configs

This comment should migrate to the new scripts/sconfig/Makefile as well.

Cheers,
Ahmad

>  
>  hostprogs-always-y	+= fixdep
> -hostprogs-always-y	+= sconfigpost
> diff --git a/scripts/sconfigpost/Makefile b/scripts/sconfigpost/Makefile
> new file mode 100644
> index 0000000000..6120c30459
> --- /dev/null
> +++ b/scripts/sconfigpost/Makefile
> @@ -0,0 +1 @@
> +hostprogs-always-y	+= sconfigpost
> diff --git a/scripts/basic/sconfigpost.c b/scripts/sconfigpost/sconfigpost.c
> similarity index 100%
> rename from scripts/basic/sconfigpost.c
> rename to scripts/sconfigpost/sconfigpost.c

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



