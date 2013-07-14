Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UySja-0006pT-Qu
 for barebox@lists.infradead.org; Sun, 14 Jul 2013 20:17:32 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id C5281FF99C7
 for <barebox@lists.infradead.org>; Sun, 14 Jul 2013 22:17:04 +0200 (CEST)
Date: Sun, 14 Jul 2013 22:17:12 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130714201712.GE19197@ns203013.ovh.net>
References: <1373809662-31482-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373809662-31482-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] arm: cpuinfo: display the core name and version
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:47 Sun 14 Jul     , Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/cpu/cpuinfo.c | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
> index 8aea4b4..260d47b 100644
> --- a/arch/arm/cpu/cpuinfo.c
> +++ b/arch/arm/cpu/cpuinfo.c
> @@ -31,6 +31,12 @@
>  #define CPU_ARCH_ARMv6		8
>  #define CPU_ARCH_ARMv7		9
>  
> +#define ARM_CPU_PART_CORTEX_A5      0xC050
> +#define ARM_CPU_PART_CORTEX_A7      0xC070
> +#define ARM_CPU_PART_CORTEX_A8      0xC080
> +#define ARM_CPU_PART_CORTEX_A9      0xC090
> +#define ARM_CPU_PART_CORTEX_A15     0xC0F0
> +

reuse instead

arch/arm/include/asm/system_info.h

Best Regards,
J.
>  static void decode_cache(unsigned long size)
>  {
>  	int linelen = 1 << ((size & 0x3) + 3);
> @@ -154,6 +160,33 @@ static int do_cpuinfo(int argc, char *argv[])
>  	printf("implementer: %s\narchitecture: %s\n",
>  			implementer, architecture);
>  
> +	if (cpu_arch == CPU_ARCH_ARMv7) {
> +		unsigned int major, minor;
> +		char *part;
> +		major = (mainid >> 20) & 0xf;
> +		minor = mainid & 0xf;
> +		switch (mainid & 0xfff0) {
> +		case ARM_CPU_PART_CORTEX_A5:
> +			part = "Cortex-A5";
> +			break;
> +		case ARM_CPU_PART_CORTEX_A7:
> +			part = "Cortex-A7";
> +			break;
> +		case ARM_CPU_PART_CORTEX_A8:
> +			part = "Cortex-A8";
> +			break;
> +		case ARM_CPU_PART_CORTEX_A9:
> +			part = "Cortex-A9";
> +			break;
> +		case ARM_CPU_PART_CORTEX_A15:
> +			part = "Cortex-A15";
> +			break;
> +		default:
> +			part = "unknown";
> +		}
> +		printf("core: %s r%up%u\n", part, major, minor);
> +	}
> +
>  	if (cache & (1 << 24)) {
>  		/* separate I/D cache */
>  		printf("I-cache: ");
> -- 
> 1.8.3.2
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
