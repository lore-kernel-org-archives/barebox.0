Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vm6Bh-0000My-BA
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 18:19:42 +0000
Received: by mail-wg0-f47.google.com with SMTP id n12so7286895wgh.2
 for <barebox@lists.infradead.org>; Thu, 28 Nov 2013 10:19:18 -0800 (PST)
Date: Thu, 28 Nov 2013 19:19:09 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131128181908.GA8179@omega>
References: <20131128180526.GA27628@ns203013.ovh.net>
 <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
 <1385662007-13057-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1385662007-13057-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/6] ARM: introduce machine description
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi,

there are only some little nitpicks... maybe not important.

On Thu, Nov 28, 2013 at 07:06:43PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to do not check in each board which machine we are running
> from. This work on DT & non-DT board.
> 
> If only one board is enable autoselect it
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/cpu/Makefile              |   2 +-
>  arch/arm/cpu/dtb.c                 |   8 +-
>  arch/arm/cpu/machine.c             | 188 +++++++++++++++++++++++++++++++++++++
>  arch/arm/include/asm/barebox-arm.h |   8 ++
>  arch/arm/include/asm/mach/arch.h   |  68 ++++++++++++++
>  arch/arm/lib/barebox.lds.S         |   6 ++
>  6 files changed, 277 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/cpu/machine.c
>  create mode 100644 arch/arm/include/asm/mach/arch.h
> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index aba201b..78532da 100644
...
> +
> +int is_dt_compatible(const struct machine_desc *m, const char* dt_compat)
> +{
> +	const char *const *dtc = m->dt_compat;
const char *const *dtc? Looks like c ninja coding style :-D.

I think you mean:

const char **dtc = ...

> +
> +	while (dtc) {
> +		const char *s = *dtc;
> +		if (dt_compat && !of_compat_cmp(s, dt_compat, strlen(dt_compat)))
> +			return 1;
> +		else if (of_machine_is_compatible(s))
> +			return 1;
> +		dtc++;
> +	}
> +
> +	return 0;
> +}
> +
> +int arm_set_dt_machine(const char* dt_compat)
> +{
> +	const struct machine_desc *m;
> +
> +	for_each_machine_desc(m) {
> +		if (!is_dt_compatible(m, dt_compat))
> +			continue;
> +
> +		machine_desc = (const struct machine_desc *)m;
> +		if (m->nr != ~0)
> +			armlinux_set_architecture(m->nr);
> +
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
> +		tmp = m;
> +	}
> +
> +	if (!tmp)
> +		return;
> +	machine_desc = (const struct machine_desc *)tmp;
> +	armlinux_set_architecture(machine_desc->nr);
> +}
> +
> +#define arm_mach_xx_init(level)						\
> +({									\
> +	int __ret = 0;							\
> +									\
> +	do {								\
> +		if (!machine_desc)					\
> +			break;						\
> +									\
> +		if (machine_desc->level##_init) {			\
> +			__ret = machine_desc->level##_init();		\
> +			if (__ret)					\
> +				break;					\
> +		}							\
> +	} while(0);							\
> +	__ret;								\
> +})
> +
> +static int arm_mach_pure_init(void)
> +{
> +	int ret = -EINVAL;
> +
> +	if (__machine_arch_type != ~0 && __machine_arch_type < MAX_MACH_TYPE)
> +		ret = arm_set_machine(__machine_arch_type);
> +	if (ret)
> +		arm_mach_only_one_machine();
> +	of_arm_init();
> +
> +	ret = arm_mach_xx_init(pure);
> +
> +	return ret;
unnecessary assignment to ret.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
