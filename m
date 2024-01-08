Delivery-date: Mon, 08 Jan 2024 08:48:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMkMu-008XWV-05
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 08:48:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMkMt-0007Kb-Ah
	for lore@pengutronix.de; Mon, 08 Jan 2024 08:48:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=km9RZ66PLUyf31h0zLT5Qq22FyH9Ax7tKyJXemGKl1E=; b=P60wsuj703RreZAIxtW9u/yB4k
	WWb34p8CMDqnPxE+/5pxy2lMFyOdhtBB2lc+nIbMiVcxsQ+CbBvdr7rXpfU2IWPDlsG5JQjhp86vw
	S37VQYoCZNZcTP/DnjiQ1Hbz0aWHP1whOXzhaRgB2gjdMKAj55CZJ5iIGW+O2QJQnwbzTJNArbM30
	FrkCxxdhl028yVrX8PjUbmTrU74wn0A73t/YrqyHds/lmOHfTjC+PvLxFOCJPUY55fWgx6HD91Q8O
	2G87GIdBd+rKHFHit2I7uUp9VTrIl1HRAcsMj9y9e6bXOynqBOwsMhy8krIdD0mC17co4TSCWD2mB
	8TsdVhsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMkLq-004DXn-09;
	Mon, 08 Jan 2024 07:47:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMkLi-004DW1-1i
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 07:47:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMkLh-0007Cl-9p; Mon, 08 Jan 2024 08:47:05 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rMkLg-001CAC-T2; Mon, 08 Jan 2024 08:47:04 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMkLg-00Ao5N-Qr; Mon, 08 Jan 2024 08:47:04 +0100
Date: Mon, 8 Jan 2024 08:47:04 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240108074704.GZ1318922@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
 <20240103181312.409668-58-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103181312.409668-58-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240107_234706_567293_310A6CF7 
X-CRM114-Status: GOOD (  34.12  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 057/112] pbl: introduce CONFIG_PBL_FULLY_PIC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 07:12:17PM +0100, Ahmad Fatoum wrote:
> In the quest for making barebox PBL code W^X mappable, we have now taken
> care to make the ARM64 assembly routines not emit code relocations,
> so let's do the same for the C code as well.
> 
> We do this by setting pragma GCC visibility push(hidden) globally. This
> option is stronger than -fvisibility=hidden and ensures we are
> completely position-independent. See kernel commit e544ea57ac07
> ("x86/boot/compressed: Force hidden visibility for all symbol references")
> for more information.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/export.h |  2 +-
>  include/linux/hidden.h | 19 +++++++++++++++++++
>  pbl/Kconfig            |  7 +++++++
>  scripts/Makefile.lib   |  5 +++++
>  scripts/Makefile.pic   | 22 ++++++++++++++++++++++
>  5 files changed, 54 insertions(+), 1 deletion(-)
>  create mode 100644 include/linux/hidden.h
>  create mode 100644 scripts/Makefile.pic
> 
> diff --git a/include/linux/export.h b/include/linux/export.h
> index 8f47742bea99..a136d727d128 100644
> --- a/include/linux/export.h
> +++ b/include/linux/export.h
> @@ -6,7 +6,7 @@
>  
>  #define THIS_MODULE	0
>  
> -#ifdef CONFIG_MODULES
> +#if defined(CONFIG_MODULES) && !defined(__DISABLE_EXPORTS)
>  
>  struct kernel_symbol
>  {
> diff --git a/include/linux/hidden.h b/include/linux/hidden.h
> new file mode 100644
> index 000000000000..49a17b6b5962
> --- /dev/null
> +++ b/include/linux/hidden.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * When building position independent code with GCC using the -fPIC option,
> + * (or even the -fPIE one on older versions), it will assume that we are
> + * building a dynamic object (either a shared library or an executable) that
> + * may have symbol references that can only be resolved at load time. For a
> + * variety of reasons (ELF symbol preemption, the CoW footprint of the section
> + * that is modified by the loader), this results in all references to symbols
> + * with external linkage to go via entries in the Global Offset Table (GOT),
> + * which carries absolute addresses which need to be fixed up when the
> + * executable image is loaded at an offset which is different from its link
> + * time offset.
> + *
> + * Fortunately, there is a way to inform the compiler that such symbol
> + * references will be satisfied at link time rather than at load time, by
> + * giving them 'hidden' visibility.
> + */
> +
> +#pragma GCC visibility push(hidden)
> diff --git a/pbl/Kconfig b/pbl/Kconfig
> index 91970c19bc1e..23fcbd20dacd 100644
> --- a/pbl/Kconfig
> +++ b/pbl/Kconfig
> @@ -46,6 +46,13 @@ config PBL_RELOCATABLE
>  	  This option only influences the PBL image. See RELOCATABLE to also make
>  	  the real image relocatable.
>  
> +config PBL_FULLY_PIC
> +	bool "fully position-independent pbl image"
> +	depends on PBL_RELOCATABLE && ARM
> +	help
> +	  Compared to CONFIG_PBL_RELOCATABLE, this image has no relocations in
> +	  the code sections.

Shouldn't we make PBL_FULLY_PIC the default when available?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


