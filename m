Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZhFF-0002IJ-EF
 for barebox@lists.infradead.org; Tue, 07 May 2013 12:43:50 +0000
Received: from mail190.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 166D1DC1F52
 for <barebox@lists.infradead.org>; Tue,  7 May 2013 14:43:25 +0200 (CEST)
Date: Tue, 7 May 2013 14:39:01 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130507123901.GB1884@game.jcrosoft.org>
References: <1366977055.331524144@f355.mail.ru>
 <1367012916-22780-1-git-send-email-s.hauer@pengutronix.de>
 <1367012916-22780-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367012916-22780-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: i.MX: ccxmx51: detect SDRAM size by board id
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>  static int ccxmx51_devices_init(void)
>  {
>  	u8 hwid[6];
> @@ -367,6 +380,8 @@ static int ccxmx51_devices_init(void)
>  			break;
>  		}
>  		printf("Module Serial : %c%d\n", manloc, ((hwid[2] & 0x3f) << 24) | (hwid[3] << 16) | (hwid[4] << 8) | hwid[5]);
> +		if ((ccxmx51_id->mem_sz - SZ_128M) > 0)
> +			arm_add_mem_device("ram1", MX51_CSD0_BASE_ADDR + SZ_128M, ccxmx51_id->mem_sz - SZ_128M);
>  	}
>  
>  	imx51_add_uart1();
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.h b/arch/arm/boards/ccxmx51/ccxmx51.h
> index ef40b7f..3feacac 100644
> --- a/arch/arm/boards/ccxmx51/ccxmx51.h
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.h
> @@ -23,6 +23,7 @@ struct ccxmx51_hwid {
>  
>  struct ccxmx51_ident {
>  	const char	*id_string;
> +	const int	mem_sz;
>  	const char	industrial;
>  	const char	eth0;
>  	const char	eth1;
> diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
> index 3e6a0ee..9519b77 100644
> --- a/arch/arm/boards/ccxmx51/lowlevel.c
> +++ b/arch/arm/boards/ccxmx51/lowlevel.c
> @@ -1,9 +1,11 @@
>  #include <common.h>
>  #include <mach/esdctl.h>
> +#include <asm/barebox-arm.h>
>  #include <asm/barebox-arm-head.h>
> +#include <mach/imx51-regs.h>
>  
>  void __naked barebox_arm_reset_vector(void)
>  {
>  	arm_cpu_lowlevel_init();
> -	imx51_barebox_entry(0);
> +	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, 0);

can we fix the ddr ctrl here by detecting the hw earlier
>  }
> -- 
> 1.8.2.rc2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
