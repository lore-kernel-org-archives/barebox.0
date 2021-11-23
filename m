Delivery-date: Tue, 23 Nov 2021 09:56:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mpRbV-0006OM-9k
	for lore@lore.pengutronix.de; Tue, 23 Nov 2021 09:56:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mpRbT-000164-SY
	for lore@pengutronix.de; Tue, 23 Nov 2021 09:56:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n57HQlrtpd6jv5R0CZh7hNMzDpeKHtLXNBFyhnmy3Oo=; b=vA2hXcA1EPYIhC
	qGmpKCH1xv0mMON27BCyM5WkvE7Veh9mRMVLGZJkfJZbsgx9y802qgWCvcv84v61pOjbg/5ToI46U
	sixRo/S8lEk21Ppj4i3hqjxgnp3Q1r4jN2bO++/i/uk6Mr37kG2ESQ7QyRdww5VyjKj0pUDP0snll
	PPISj9fbHeJuF8z2qFW60mxvshIBTKAS7eXWeIp/r17UidYdnU1ZBLRhS95cEWoyxDGXNIcozen87
	q+6oE2Pim82RMZn1h6gxM+mT3FTPtD9gdcRKchDvHsD4xdbv0NppNYQQwIm8kpWrYPe5z0W5soQ3W
	R0NWq1OwlUjNUo3j6QBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpRaA-001Nbc-8A; Tue, 23 Nov 2021 08:55:18 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpRa4-001NZe-La
 for barebox@lists.infradead.org; Tue, 23 Nov 2021 08:55:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id E0AB51B7B5B0
 for <barebox@lists.infradead.org>; Tue, 23 Nov 2021 09:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1637657704;
 bh=xpIpiL+sgDtZ0z2JSHPoR0S+x82PVKajm3iZegyuemw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=MwChFIOdHesGIADreWEnR6x6YPkvhtK6b9h4ufwi5tPy0sBnrxKq5lMtAkdmAFOdq
 uOkBHXsRJkBA5s/h/yC29iIkIvSe65/4S78g2Zke8QiSop9F53y+Z8IDffmX32cty/
 zuBCDP4UBy7d0aWd60/kOzttxGDORkyrt16u1hJ4=
Received: from fx408 (localhost [127.0.0.1]) by fx408.security-mail.net
 (Postfix) with ESMTP id 743F81B7B347; Tue, 23 Nov 2021 09:55:03 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx408.security-mail.net (Postfix) with ESMTPS id 1774D1B7B4DE; Tue, 23 Nov
 2021 09:55:03 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id F3AC427E038A; Tue, 23 Nov 2021
 09:55:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id DD17C27E0390; Tue, 23 Nov 2021 09:55:02 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 xS0PgzxQhJcL; Tue, 23 Nov 2021 09:55:02 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id CD07127E038A; Tue, 23 Nov 2021
 09:55:02 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <10479.619cac67.16f9f.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu DD17C27E0390
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1637657702;
 bh=4Ry5ifbDoEElcMOA2wjByH+VZ4Eg698hmZM1jf8QAEY=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=OV8VkyTUkG+RZh7Cbox/H0BB4FDVbsdbH7JZBEgDFkpRqJDEMTzAdiD4Cx2uNOf9A
 VWHDwUmbD3sbS8Qqs/hwkyFAfcVvlj0TbiOZ6A8V0YikG8qvwuqizOaNqA2E922QxI
 yq3mAJ/UnP74fnm/tPQRGsAh+Q4m5M7DmAv4z7m4=
Date: Tue, 23 Nov 2021 09:55:01 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211123085501.GC15878@tellis.lin.mbt.kalray.eu>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
 <20211122084732.2597109-9-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211122084732.2597109-9-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_005513_010936_C044A59C 
X-CRM114-Status: GOOD (  18.74  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/30] common: move EFI code into new efi/ top level
 directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 22, 2021 at 09:47:10AM +0100, Ahmad Fatoum wrote:
> So far, barebox EFI meant EFI payload support on x86. Upcoming changes
> will extend barebox to support EFI payload _and_ loader on ARM64.
> Prepare for this by renaming files and directories appropriately, so
> it's immediately clear whether a file is about paylaod, loader or common
s/paylaod/payload/
> support.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig                                   | 10 ++--------
>  common/Makefile                                  |  4 +---
>  common/efi/Kconfig                               | 16 ++++++++++++++++
>  common/efi/Makefile                              |  9 +++++----
>  common/{efi-devicepath.c => efi/devicepath.c}    |  0
>  common/{efi-guid.c => efi/guid.c}                |  0
>  common/efi/payload/Makefile                      |  6 ++++++
>  .../{ => payload}/env-efi/network/eth0-discover  |  0
>  common/efi/{efi-image.c => payload/image.c}      |  2 +-
>  common/efi/{efi.c => payload/init.c}             |  2 +-
>  common/efi/{efi-iomem.c => payload/iomem.c}      |  0
>  drivers/efi/Kconfig                              |  1 +
>  12 files changed, 33 insertions(+), 17 deletions(-)
>  create mode 100644 common/efi/Kconfig
>  rename common/{efi-devicepath.c => efi/devicepath.c} (100%)
>  rename common/{efi-guid.c => efi/guid.c} (100%)
>  create mode 100644 common/efi/payload/Makefile
>  rename common/efi/{ => payload}/env-efi/network/eth0-discover (100%)
>  rename common/efi/{efi-image.c => payload/image.c} (99%)
>  rename common/efi/{efi.c => payload/init.c} (99%)
>  rename common/efi/{efi-iomem.c => payload/iomem.c} (100%)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index f4120b2083ee..42240ae8411b 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -78,14 +78,6 @@ config MENUTREE
>  	select GLOB
>  	select GLOB_SORT
>  
> -config EFI_GUID
> -	bool
> -	help
> -	  With this option a table of EFI guids is compiled in.
> -
> -config EFI_DEVICEPATH
> -	bool
> -
>  config ARCH_DMA_ADDR_T_64BIT
>  	bool
>  
> @@ -1538,6 +1530,8 @@ config COMPILE_TEST
>  
>  endmenu
>  
> +source "common/efi/Kconfig"
> +
>  config HAS_DEBUG_LL
>  	bool
>  
> diff --git a/common/Makefile b/common/Makefile
> index 4b45f678c7de..9ed279806a08 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -63,9 +63,7 @@ obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
>  obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
>  obj-$(CONFIG_FITIMAGE)		+= image-fit.o
>  obj-$(CONFIG_MENUTREE)		+= menutree.o
> -obj-$(CONFIG_EFI_BOOTUP)	+= efi/
> -obj-$(CONFIG_EFI_GUID)		+= efi-guid.o
> -obj-$(CONFIG_EFI_DEVICEPATH)	+= efi-devicepath.o
> +obj-$(CONFIG_EFI)		+= efi/
>  lwl-$(CONFIG_IMD)		+= imd-barebox.o
>  obj-$(CONFIG_IMD)		+= imd.o
>  obj-y				+= file-list.o
> diff --git a/common/efi/Kconfig b/common/efi/Kconfig
> new file mode 100644
> index 000000000000..a0565854c2f5
> --- /dev/null
> +++ b/common/efi/Kconfig
> @@ -0,0 +1,16 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +menu "EFI (Extensible Firmware Interface) Support"
> +
> +config EFI
> +	bool
> +
> +config EFI_GUID
> +	bool
> +	help
> +	  With this option a table of EFI guids is compiled in.
> +
> +config EFI_DEVICEPATH
> +	bool
> +
> +endmenu
> diff --git a/common/efi/Makefile b/common/efi/Makefile
> index d746fabe2109..1ed5d45c1f5e 100644
> --- a/common/efi/Makefile
> +++ b/common/efi/Makefile
> @@ -1,4 +1,5 @@
> -obj-y += efi.o
> -obj-y += efi-image.o
> -bbenv-y += env-efi
> -obj-$(CONFIG_CMD_IOMEM) += efi-iomem.o
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-$(CONFIG_EFI_BOOTUP)	+= payload/
> +obj-$(CONFIG_EFI_GUID)		+= guid.o
> +obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
> diff --git a/common/efi-devicepath.c b/common/efi/devicepath.c
> similarity index 100%
> rename from common/efi-devicepath.c
> rename to common/efi/devicepath.c
> diff --git a/common/efi-guid.c b/common/efi/guid.c
> similarity index 100%
> rename from common/efi-guid.c
> rename to common/efi/guid.c
> diff --git a/common/efi/payload/Makefile b/common/efi/payload/Makefile
> new file mode 100644
> index 000000000000..bcbdda335f06
> --- /dev/null
> +++ b/common/efi/payload/Makefile
> @@ -0,0 +1,6 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y += init.o
> +obj-y += image.o
> +bbenv-y += env-efi
> +obj-$(CONFIG_CMD_IOMEM) += iomem.o
> diff --git a/common/efi/env-efi/network/eth0-discover b/common/efi/payload/env-efi/network/eth0-discover
> similarity index 100%
> rename from common/efi/env-efi/network/eth0-discover
> rename to common/efi/payload/env-efi/network/eth0-discover
> diff --git a/common/efi/efi-image.c b/common/efi/payload/image.c
> similarity index 99%
> rename from common/efi/efi-image.c
> rename to common/efi/payload/image.c
> index bd1c58438e84..3c55a457eae3 100644
> --- a/common/efi/efi-image.c
> +++ b/common/efi/payload/image.c
> @@ -1,5 +1,5 @@
>  /*
> - * efi-image.c - barebox EFI payload support
> + * image.c - barebox EFI payload support
>   *
>   * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
>   *
> diff --git a/common/efi/efi.c b/common/efi/payload/init.c
> similarity index 99%
> rename from common/efi/efi.c
> rename to common/efi/payload/init.c
> index 7f12342cf91b..88d0bfa939ec 100644
> --- a/common/efi/efi.c
> +++ b/common/efi/payload/init.c
> @@ -1,5 +1,5 @@
>  /*
> - * efi.c - barebox EFI payload support
> + * init.c - barebox EFI payload support
>   *
>   * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
>   *
> diff --git a/common/efi/efi-iomem.c b/common/efi/payload/iomem.c
> similarity index 100%
> rename from common/efi/efi-iomem.c
> rename to common/efi/payload/iomem.c
> diff --git a/drivers/efi/Kconfig b/drivers/efi/Kconfig
> index dd3ac7525f9f..e8abc2709e26 100644
> --- a/drivers/efi/Kconfig
> +++ b/drivers/efi/Kconfig
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  config EFI_BOOTUP
>  	bool
> +	select EFI
>  	select BLOCK
>  	select PARTITION_DISK
>  	select HW_HAS_PCI
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
> 
> To declare a filtering error, please use the following link : https://www.security-mail.net/reporter.php?mid=d96b.619b5a76.a8745.0&r=jmaselbas%40kalray.eu&s=barebox-bounces%2Bjmaselbas%3Dkalray.eu%40lists.infradead.org&o=%5BPATCH+08%2F30%5D+common%3A+move+EFI+code+into+new+efi%2F+top+level+directory&verdict=C&c=45252004e55fff892806525f875d47f7eb127606
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

