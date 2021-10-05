Delivery-date: Tue, 05 Oct 2021 09:09:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXeZu-0008Ll-BW
	for lore@lore.pengutronix.de; Tue, 05 Oct 2021 09:09:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXeZt-000393-8k
	for lore@pengutronix.de; Tue, 05 Oct 2021 09:09:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4cHeJi9veAOUP2F+ktNzg2nQ7wJYg9ZscqqhZ094Z8g=; b=qgLk6Z3QwOy2dZS93Cc25yaHtx
	+3avkcRIYXDkUc+KxmYGbptqQi3XIzlS7oAdKXlrK3B66zeABHiNUA5FuelRbiCEV+rzwZFQ9oKcs
	iYbS1luBZb2LTmn2ZoFpP3L6u6+1nNAC582B88UnuGiC16bj1Xw4/X3oIPRxQqrqDiVNHcqRTff4q
	bFkTG3HRMKdq2I+L6vlWkg1EJrZnzMLmQniiwuRZyW+0lDlFYIk+lQVtIw6nxCp2HKO2QRd/pT019
	ISjf1Lz9CN2C2cifjVsPAd+iPvn/QnqgIQaRJAhLyVQlnZfQ6oH9OsyvX+AmgKLZEz/2EwWQtuzv5
	UwHzSATw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXeYd-009GND-A9; Tue, 05 Oct 2021 07:08:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXeYY-009GMA-KZ
 for barebox@lists.infradead.org; Tue, 05 Oct 2021 07:08:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mXeYX-000344-Dn; Tue, 05 Oct 2021 09:08:05 +0200
To: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
References: <20211005070007.1675059-1-ahmad@a3f.at>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f0995dea-e9e7-fad1-d246-db149e067266@pengutronix.de>
Date: Tue, 5 Oct 2021 09:08:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211005070007.1675059-1-ahmad@a3f.at>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_000806_706613_B7512898 
X-CRM114-Status: GOOD (  17.87  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] kbuild: force 16-bit wchar_t treewide
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.10.21 09:00, Ahmad Fatoum wrote:
> All current uses of wchar_t assume 16 bit code units. We enforce this
> via -fshort-wchar on x86 and by typedefing in <linux/nls.h>.
> 
> Make wchar_t universally 16-bit to acknowledge this, a small step
> towards ARM and RISC-V EFI support in barebox.

Please dismiss. Reasoning is not sound. We have our own (two!) definitions
of wchar_t, so this would only affect host/target tool build.

Will respin later.

> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Makefile          | 2 +-
>  arch/x86/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 74e4893f02c8..cc01e5656d7c 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -438,7 +438,7 @@ LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
>  KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
>  
>  KBUILD_CFLAGS   := -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs \
> -		   -fno-strict-aliasing -fno-common \
> +		   -fno-strict-aliasing -fno-common -fshort-wchar \
>                     -Werror=implicit-function-declaration -Werror=implicit-int \
>                     -Os -pipe -Wmissing-prototypes -std=gnu89
>  KBUILD_AFLAGS          := -D__ASSEMBLY__
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index fd871ca21419..532246647b63 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -5,7 +5,7 @@ KBUILD_CPPFLAGS += -D__X86__
>  TEXT_BASE = $(CONFIG_TEXT_BASE)
>  
>  machine-y := efi
> -KBUILD_CFLAGS += -fpic -fshort-wchar -mno-sse -mno-mmx
> +KBUILD_CFLAGS += -fpic -mno-sse -mno-mmx
>  ifeq ($(CONFIG_X86_32),y)
>  	TARGET = efi-app-ia32
>  else
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

