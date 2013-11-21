Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x233.google.com ([2a00:1450:4013:c00::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjP9O-0002vE-Iw
 for barebox@lists.infradead.org; Thu, 21 Nov 2013 07:58:11 +0000
Received: by mail-ee0-f51.google.com with SMTP id d41so3797426eek.10
 for <barebox@lists.infradead.org>; Wed, 20 Nov 2013 23:57:47 -0800 (PST)
Date: Thu, 21 Nov 2013 09:05:21 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131121080520.GA1465@x61s.campuswlan.hs-rm.de>
References: <20131121071216.GE7965@ns203013.ovh.net>
 <1385018035-26300-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1385018035-26300-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] ARM: introduce machine description
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Nov 21, 2013 at 08:13:53AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to do not check in each board which machine we are running
> from. This work on DT & non-DT board.
> 
> If only one board is enable autoselect it
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/cpu/Makefile            |   2 +-
>  arch/arm/cpu/dtb.c               |   4 ++
>  arch/arm/cpu/machine.c           | 110 +++++++++++++++++++++++++++++++++++++++
>  arch/arm/include/asm/mach/arch.h |  66 +++++++++++++++++++++++
>  arch/arm/lib/barebox.lds.S       |   6 +++
>  5 files changed, 187 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/cpu/machine.c
>  create mode 100644 arch/arm/include/asm/mach/arch.h
> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index aba201b..78532da 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -1,7 +1,7 @@
>  obj-y += cpu.o
>  obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
>  obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
> -obj-y += start.o setupc.o
> +obj-y += machine.o start.o setupc.o
>  
>  #
>  # Any variants can be called as start-armxyz.S
> diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
> index a5881dd..62a9860 100644
> --- a/arch/arm/cpu/dtb.c
> +++ b/arch/arm/cpu/dtb.c
> @@ -48,6 +48,10 @@ static int of_arm_init(void)
>  	}
>  
>  	root = of_unflatten_dtb(NULL, fdt);
> +
> +	if (arm_set_dt_machine())
> +		pr_debug("No compatible machine found\n");
> +
>  	if (root) {
>  		of_set_root_node(root);
>  		if (IS_ENABLED(CONFIG_OFDEVICE))
> diff --git a/arch/arm/cpu/machine.c b/arch/arm/cpu/machine.c
> new file mode 100644
> index 0000000..e17c5bb
> --- /dev/null
> +++ b/arch/arm/cpu/machine.c
> @@ -0,0 +1,110 @@
> +#include <asm/mach/arch.h>
> +#include <init.h>
> +#include <common.h>
> +#include <string.h>
> +#include <debug_ll.h>
> +
> +const struct machine_desc *machine_desc;
> +unsigned int __machine_arch_type = 0xffffffff;
> +
> +int arm_set_machine(const unsigned int type)
> +{
> +	const struct machine_desc *m;
> +
> +	puts_ll("type ");
> +	puthex_ll(type);
> +	puts_ll("\n");
> +
> +	if (type == 0xffffffff)
> +		return -ENOENT;
> +
> +	for_each_machine_desc(m) {
> +		puts_ll("machine ");
> +		if (m->name)
> +			puts_ll(m->name);
> +		puts_ll("\n");
> +		if (m->nr == type) {
> +			machine_desc = (const struct machine_desc *)m;
> +			__machine_arch_type = type;
> +			return 0;
> +		}
> +	}
> +
> +	return -ENOENT;
> +}
> +
> +int arm_set_dt_machine(void)
> +{
> +	const struct machine_desc *m;
> +
> +	for_each_machine_desc(m) {
> +		if (!m->dt_compat)
> +			continue;
> +
> +		if (!of_machine_is_compatible((const char *)m->dt_compat))
> +			continue;
> +
> +		machine_desc = (const struct machine_desc *)m;
> +		return 0;
> +	}
> +
> +	return -ENOENT;
> +}
> +
> +static void arm_mach_only_one_machine(void)
> +{
> +	const struct machine_desc *m;
> +	const struct machine_desc *tmp = NULL;
> +
> +	for_each_machine_desc(m) {
> +		if (tmp)
> +			return;
> +	}
> +
Here is no tmp assign. Are there some sideffects to set tmp here?
If not if (tmp) is always false.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
