Delivery-date: Thu, 27 Mar 2025 14:30:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txnJV-004t6r-1P
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 14:30:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txnJU-0005bV-Sd
	for lore@pengutronix.de; Thu, 27 Mar 2025 14:30:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yNZhsbWdIzF80vi8uJc+CL2hJfVtwuUgi2JRQVwkUi8=; b=3oLZYiGpH4DpbF3tdh2AH6jodz
	qnhSmyecs5gcbPyRM9MzOt75SDczMzSblTtmqEpiAobfRcT9mVGxwsnFqBOryvEwx19aeMWtcHoz3
	94EX/9rymedbwrfwCnQ4esWvlznmICj2xJWvNjrQf/D8J8WuDv952pEYrW/ZRbDrnZwGFzykxdmJb
	hQs9UzIkwVDDrcDte3Nb/lmq1kPVaYarPKT8ilanf8VB4z5T0C/QQZmR5wjKlhifjkIB0s6EP8GZa
	uTz4htdG/zd+e+LRPIvQDfOXKhZQlGHaHm2BlwmS3uSx4kKZo2MMV9vOb4cJ//+zFfvmGW/mN8f9w
	8TwMthSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txnIp-0000000B4c8-2w73;
	Thu, 27 Mar 2025 13:29:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txnDb-0000000B3ou-39lM
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 13:24:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txnDa-0004Bo-HW; Thu, 27 Mar 2025 14:24:22 +0100
Message-ID: <deb2ab3f-1a24-4af3-bfea-878ecd9f545f@pengutronix.de>
Date: Thu, 27 Mar 2025 14:24:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20250327132052.3187117-1-bst@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250327132052.3187117-1-bst@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_062423_803576_6D9DAC5A 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: undefine linux/unix macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/27/25 14:20, Bastian Krause wrote:
> gcc and clang, when using `-std=gnu11`, predefine `linux` and `unix` as
> macros:
> 
>   $ gcc -std=gnu11 -dM -E - < /dev/null | grep -v "define _"
>   #define unix 1
>   #define linux 1
> 
> This causes issues in `BAREBOX_MAGICVAR()`, where variable names
> containing "linux" or "unix" get incorrectly expanded, leading to invalid
> names:
> 
>   barebox@Sandbox:/ magicvar
>   [...]
>   global.1.blkdevparts.*           Linux blkdevparts variables
>   global.1.bootargs.*              Linux bootargs variables
>   global.1.bootargs.console        console= argument for Linux from the stdout-path property in /chosen node
>   global.1.bootargs_append         append to original oftree bootargs
>   global.1.mtdparts.*              Linux mtdparts variables
>   [...]
> 
> Explicitly undefine these non-conforming macros to ensure correct
> behavior.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 5c9fce83123..ff7179bf9d5 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -486,7 +486,8 @@ LINUXINCLUDE    := -Iinclude \
>  		   -I$(objtree)/arch/$(SRCARCH)/include \
>  		   $(USERINCLUDE)
>  
> -KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
> +KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) \
> +			  -fno-builtin -ffreestanding -Ulinux -Uunix
>  
>  KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \
>  		   -fno-strict-aliasing -fno-common -fshort-wchar \



