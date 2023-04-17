Delivery-date: Mon, 17 Apr 2023 08:56:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIms-0060xv-Ak
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 08:56:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poImr-0001wx-Sd
	for lore@pengutronix.de; Mon, 17 Apr 2023 08:56:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0GH2+DDuMiy/SNaBBMxKIRRanxhNIQjWQRO/CEd1wLw=; b=lN/gavVujtvjC/mKJmChhsNcFh
	Q9xWo7qWBaxkY9LdGgzqEFsScoPlF1QjYiplcnNbQaok0oNZj4u4EWElthF7PPazTR6IBxi4rOQwA
	rd5MpGSEFA3zzD5g3N9Aqn/QeRZdvzrnKbqH9iQQd1jP4SV/XF12GgGyWHkkOrSz5d+GqQUj7C1XK
	+fE6JU1GpER8fMaLdXwKIXXv8jEUl9C6nsyvMjedRH7VisWnk3lS9SkaPwY7ccwlDYz/AwFKQoVOZ
	grHb94tv8UD5pxqhaC9nxCVs7qNImErgkBPm0oUQnipy7cIg9mqzyGBhuH1JLiiFlhMlASgSvkyt7
	4QkM97jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poIll-00F6pL-0o;
	Mon, 17 Apr 2023 06:55:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poIli-00F6oB-0A
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 06:55:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIlg-0001jH-R0; Mon, 17 Apr 2023 08:55:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIlg-0004LF-Gv; Mon, 17 Apr 2023 08:55:16 +0200
Date: Mon, 17 Apr 2023 08:55:16 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230417065516.GE13543@pengutronix.de>
References: <20230414171421.1745965-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230414171421.1745965-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_235518_086517_8321A2ED 
X-CRM114-Status: GOOD (  23.86  )
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
Subject: Re: [PATCH master] arm: error out if __LINUX_ARM_ARCH__ is undefined
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 14, 2023 at 07:14:21PM +0200, Ahmad Fatoum wrote:
> With recent multiarch (really, multiplatform) rework, oldconfig will
> reask users what platforms they want to build for. The default is N,
> so holding return (or an olddefconfig) will just disable all boards and
> with it all CPUs leading to a cryptic torrent of:
> 
>   arch/arm/include/asm/swab.h:31:28: warning: "__LINUX_ARM_ARCH__" is not defined, evaluates to 0 [-Wundef]
>      31 | #if defined(__KERNEL__) && __LINUX_ARM_ARCH__ >= 6
>         |                            ^~~~~~~~~~~~~~~~~~
> 
> Make user experience a bit better by printing an error message instead.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/Makefile                 | 1 +
>  arch/arm/include/asm/arch-check.h | 9 +++++++++
>  2 files changed, 10 insertions(+)
>  create mode 100644 arch/arm/include/asm/arch-check.h

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 9bd7db6ba9f8..a506f1e3a3e5 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -42,6 +42,7 @@ endif
>  # Note that GCC does not numerically define an architecture version
>  # macro, but instead defines a whole series of macros which makes
>  # testing for a specific architecture or later rather impossible.
> +arch-y				:= -include asm/arch-check.h
>  arch-$(CONFIG_CPU_64v8)		:= -D__LINUX_ARM_ARCH__=8 $(call cc-option,-march=armv8-a)
>  arch-$(CONFIG_CPU_32v7)		:=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)
>  arch-$(CONFIG_CPU_32v6)		:=-D__LINUX_ARM_ARCH__=6 $(call cc-option,-march=armv6,-march=armv5t -Wa$(comma)-march=armv6)
> diff --git a/arch/arm/include/asm/arch-check.h b/arch/arm/include/asm/arch-check.h
> new file mode 100644
> index 000000000000..2cf1b624a4de
> --- /dev/null
> +++ b/arch/arm/include/asm/arch-check.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef __ARM_ASM_ARCH_CHECK_H__
> +#define __ARM_ASM_ARCH_CHECK_H__
> +
> +#ifndef __LINUX_ARM_ARCH__
> +#error No boards/CPUs selected in Kconfig
> +#endif
> +
> +#endif
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


