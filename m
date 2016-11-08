Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x233.google.com ([2607:f8b0:4002:c05::233])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3yfm-0000Dt-Mg
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 05:10:16 +0000
Received: by mail-yw0-x233.google.com with SMTP id r204so164479420ywb.0
 for <barebox@lists.infradead.org>; Mon, 07 Nov 2016 21:09:53 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161107074346.pb4uivigwa5gbj6z@pengutronix.de>
References: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
 <20161104071821.jqrhtfmgz3432527@pengutronix.de>
 <CAKZffXHVZ9tvhcgVz=fWciYQr98wrZjZbxiL4QQJEP8DzGuz7Q@mail.gmail.com>
 <20161107074346.pb4uivigwa5gbj6z@pengutronix.de>
From: Jose Luis Zabalza <jlz.3008@gmail.com>
Date: Tue, 8 Nov 2016 06:09:52 +0100
Message-ID: <CAKZffXG6vuJjaQqB9QYSMeSocWZY33vFLSrWfCFf=0ATMM1fkQ@mail.gmail.com>
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
Subject: Re: Configure RAM size on iMX53 board
To: barebox@lists.infradead.org

Thanks Sascha

RAM memory reference is MT41K128M16JT-125 XIT
https://www.micron.com/parts/dram/ddr3-sdram/mt41k128m16jt-125-xit

================<cut>=========================
barebox 2016.09.0-00071-ga38b701-dirty #11 Tue Nov 8 05:56:31 CET 2016


Board: MyBoard i.MX53
detected i.MX53 revision 2.1
CS0: 0x20000000
CS1: 0x20000000
...

================<cut>=========================




2016-11-07 8:43 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Sat, Nov 05, 2016 at 07:39:53AM +0100, Jose Luis Zabalza wrote:
>> Thanks Sascha, but something I do wrong
>>
>> I tried set fixed size to 512M, but neither works.
>>
>> With these changes does not work or 512MB board  or 1GB board.
>>
>> =========<cut lowlevel.c>===============
>>
>> #include <common.h>
>> #include <mach/imx53-regs.h>
>> #include <mach/esdctl.h>
>> #include <mach/generic.h>
>> #include <asm/barebox-arm-head.h>
>> #include <asm/barebox-arm.h>
>>
>> void __naked barebox_arm_reset_vector(void)
>> {
>>     imx5_cpu_lowlevel_init();
>>     arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
>> //    imx53_barebox_entry(NULL);
>>     barebox_arm_entry(MX53_CSD0_BASE_ADDR,SZ_512M,NULL);
>> }
>
> Hm, it should work like this, but maybe the memory layout is not what we
> expect. Could you apply the following and see what we get for both
> memory variants (still using imx53_barebox_entry() above so that you
> actually get to that point)?
>
> Sascha
>
> --------------------------------8<--------------------------------------
>
> From c3024dcd0e9c494adeb3f9ffbb6ec41ee4787b2d Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Mon, 7 Nov 2016 08:41:01 +0100
> Subject: [PATCH] ARM: i.MX53: Add some memory debug
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/esdctl.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 106e648..d217495 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -276,6 +276,9 @@ static void imx_esdctl_v3_add_mem(void *esdctlbase, struct imx_esdctl_data *data
>
>  static void imx_esdctl_v4_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
>  {
> +       printf("CS0: 0x%08lx\n", imx_v4_sdram_size(esdctlbase, 0));
> +       printf("CS1: 0x%08lx\n", imx_v4_sdram_size(esdctlbase, 1));
> +
>         add_mem(data->base0, imx_v4_sdram_size(esdctlbase, 0),
>                         data->base1, imx_v4_sdram_size(esdctlbase, 1));
>  }
> --
> 2.10.1
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



-- 
jlz.3008  a t  gmail.com
Linux Counter 172551
https://linuxcounter.net/cert/172551.png

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
