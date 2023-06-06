Delivery-date: Tue, 06 Jun 2023 11:06:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SeR-00Cqim-Fj
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:06:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SeO-00027u-VX
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:06:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y8/02l8kWQWYYN80Qnmj8DsR8ZpHr8cTgMUcWvDSbEc=; b=SdlW0BcNjoLGXIj6yZ7XF5ayCj
	RM6Ba1+3MR19mJ7lZrtYkdK0nlqOTVziIRPOrf7zwCKQwAwLHSrHG7sOHlx9Sl/0/uYQkzDc/piLN
	8V816n1+uOizT6V3W9ZJY20AeGB+iDzNzPdZ/6njL/L1yGAJTKmSX/F9aXPB8uxng92L0qp0J/UKG
	M+5Ejkcr27NdhJstx4vhNdRkS/LDLjvR1QmmDDb0hMZXMGkNQCxDAbsklB72QTLhlau63/R2YubMv
	+0jxIiaj5cuISXrUAZpyeIGMPATAmq/YEmoHw9IElcTJyRsnlYSABR28R6uCjU/dNQXgH7bonVYrV
	EYHsVBVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6ScD-000w4g-30;
	Tue, 06 Jun 2023 09:04:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Sc9-000w3I-3A
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:04:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6Sc5-0001Zi-Ux; Tue, 06 Jun 2023 11:04:26 +0200
Message-ID: <bb708297-3966-59ce-0366-3d29a8175923@pengutronix.de>
Date: Tue, 6 Jun 2023 11:04:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
 <20230605202634.42175-12-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605202634.42175-12-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_020430_016194_493568DE 
X-CRM114-Status: GOOD (  18.40  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 11/17] MIPS: Makefile: sign-extend TEXT_BASE value on
 CONFIG_64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.06.23 22:10, Denis Orlov wrote:
> The code that uses TEXT_BASE will fail on reading truncated 32-bit
> address if running with 64BIT enabled. As we only support running from
> compatibility segments (i.e. no 'proper' 64-bit base addresses), simply
> make sure the value is sign-extended when passing it as a define.

Below is not really a sign extension. e.g. 0x0000_0000 would be turned
into 0xffff_ffff_0000_0000. Is that ok? 

> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  arch/mips/Makefile | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index bad6e574c4..65a00379ab 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -57,7 +57,13 @@ cflags-$(CONFIG_CPU_MIPS64_R1) += $(call cc-option,-march=mips64,-mips64 -U_MIPS
>  cflags-$(CONFIG_CPU_MIPS64_R2) += $(call cc-option,-march=mips64r2,-mips64r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64r2 -Wa,--trap
>  cflags-$(CONFIG_CPU_GS232)     += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
>  
> -KBUILD_CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
> +ifdef CONFIG_64BIT
> +MIPS_TEXT_BASE = $(subst 0x,0xffffffff,$(CONFIG_TEXT_BASE))
> +else
> +MIPS_TEXT_BASE = $(CONFIG_TEXT_BASE)
> +endif
> +
> +KBUILD_CPPFLAGS += -DTEXT_BASE=$(MIPS_TEXT_BASE)
>  
>  ifndef CONFIG_MODULES
>  # Add cleanup flags

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



