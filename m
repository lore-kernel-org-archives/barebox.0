Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x241.google.com ([2607:f8b0:4003:c06::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bG5rv-0007c2-25
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 14:44:35 +0000
Received: by mail-oi0-x241.google.com with SMTP id d132so12404950oig.2
 for <barebox@lists.infradead.org>; Thu, 23 Jun 2016 07:44:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160615063329.GE9677@pengutronix.de>
References: <1465888006-39463-1-git-send-email-poggi.raph@gmail.com>
 <1465888006-39463-2-git-send-email-poggi.raph@gmail.com>
 <20160615063329.GE9677@pengutronix.de>
From: =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <poggi.raph@gmail.com>
Date: Thu, 23 Jun 2016 16:43:34 +0200
Message-ID: <CACqcpZBDpPJMY1=VyEiO3GYg9LGcTcwvWdGkR8o5FETqW6vKnA@mail.gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 01/12] arm: add armv8 Kconfig entries
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

2016-06-15 8:33 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Raphael,
>
> On Tue, Jun 14, 2016 at 09:06:35AM +0200, Raphael Poggi wrote:
>> Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
>> ---
>>  arch/arm/Kconfig     | 23 +++++++++++++++++++++++
>>  arch/arm/cpu/Kconfig | 29 ++++++++++++++++++++++++++++-
>>  2 files changed, 51 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
>> index 1fc887b..986fdaa 100644
>> --- a/arch/arm/Kconfig
>> +++ b/arch/arm/Kconfig
>> @@ -315,6 +315,29 @@ config ARM_BOARD_APPEND_ATAG
>>
>>  endmenu
>>
>> +choice
>> +     prompt "Barebox code model"
>> +     help
>> +       You should only select this option if you have a workload that
>> +       actually benefits from 64-bit processing or if your machine has
>> +       large memory. You will only be presented a single option in this
>> +       menu if your system does not support both 32-bit and 64-bit modes.
>> +
>> +config 32BIT
>> +     bool "32-bit barebox"
>> +     depends on CPU_SUPPORTS_32BIT_KERNEL && SYS_SUPPORTS_32BIT_KERNEL
>> +     help
>> +       Select this option if you want to build a 32-bit barebox.
>> +
>> +config 64BIT
>> +     bool "64-bit barebox"
>> +     depends on CPU_SUPPORTS_64BIT_KERNEL && SYS_SUPPORTS_64BIT_KERNEL
>> +     select ARCH_DMA_ADDR_T_64BIT
>> +     help
>> +       Select this option if you want to build a 64-bit barebox.
>> +
>> +endchoice
>> +
>>  menu "ARM specific settings"
>>
>>  config ARM_OPTIMZED_STRING_FUNCTIONS
>> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
>
> arm64 needs 64bit pointers. You could merge the following to this patch
> to make resource_size_t 64bit wide and to get rid of the "warning: cast
> from pointer to integer of different size [-Wpointer-to-int-cast]"
> warnings.

Ok, thanks

>
> Sascha
>
> From 599547f4054ca715f66a83bf49dc9293e3cc0af0 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Wed, 15 Jun 2016 08:29:51 +0200
> Subject: [PATCH] arm64: select PHYS_ADDR_T_64BIT
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> index fd327a8..c90501e 100644
> --- a/arch/arm/cpu/Kconfig
> +++ b/arch/arm/cpu/Kconfig
> @@ -1,9 +1,13 @@
>  comment "Processor Type"
>
> +config PHYS_ADDR_T_64BIT
> +       bool
> +
>  config CPU_32
>         bool
>
>  config CPU_64
> +       select PHYS_ADDR_T_64BIT
>         bool
>
>  # Select CPU types depending on the architecture selected. This selects
> --
> 2.8.1
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
