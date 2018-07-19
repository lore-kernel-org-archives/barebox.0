Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx009.vodafonemail.xion.oxcs.net ([153.92.174.87])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgBEj-0004a8-0k
 for barebox@lists.infradead.org; Thu, 19 Jul 2018 15:53:04 +0000
Date: Thu, 19 Jul 2018 17:52:36 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <493874249.8067.1532015556353@mail.vodafone.de>
In-Reply-To: <CAHQ1cqFHRFYzKnjhD4-2+=-5dC8AGQNYKyuPZbwp8yWUauXAfw@mail.gmail.com>
References: <461871869.117927.1531898866247@mail.vodafone.de>
 <CAHQ1cqFHRFYzKnjhD4-2+=-5dC8AGQNYKyuPZbwp8yWUauXAfw@mail.gmail.com>
MIME-Version: 1.0
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
Subject: Re: imx7d enable second core
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey,

> On July 18, 2018 at 6:54 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> 
> 
> On Wed, Jul 18, 2018 at 12:28 AM Giorgio Dal Molin
> <giorgio.nicole@arcor.de> wrote:
> >
> > Hi all,
> >
> > I'm currently working with the imx7d sabre board from NXP.
> >
> > I have now a running barebox bootloader and a booting kernel.
> >
> > My problem is now that, apparently, only one core is active:
> >
> > ...
> > commandline: console=ttymxc0,115200n8 ip=11.0.0.4::11.0.0.2:255.0.0.0::eth0: root=/dev/mmcblk0p2 rootdelay=1
> > Starting kernel in secure mode
> 
> AFAIK, this means that you are booting in secure mode and secure
> monitor code, which also implements PSCI needed for SMP to work, will
> _not_ be installed by Barebox. One way to fix this would be to set:
> 
>  global.bootm.secure_state=nonsecure
> 
> before booting Linux. Doing that I get:
> 
> # lscpu -e
> CPU SOCKET CORE ONLINE MAXMHZ   MINMHZ
> 0   0      0    yes    996.0000 792.0000
> 1   0      1    yes    996.0000 792.0000
> #
> 
> on my SabreSD board.
> 

I think I've found some inconsistencies in the SECURE / NONSECURE implementation
in barebox.

In arch/arm/include/asm/secure.h there is the definition:

...
enum arm_security_state {
	ARM_STATE_SECURE,
	ARM_STATE_NONSECURE,
 	ARM_STATE_HYP,
 };

where ARM_STATE_SECURE == 0 and ARM_STATE_NONSECURE == 1;

In arch/arm/cpu/psci.c we have:

...
static int of_psci_fixup(struct device_node *root, void *unused)
{
	struct device_node *psci;
	int ret;

	if (bootm_arm_security_state() < ARM_STATE_NONSECURE)
		return 0;

	psci = of_create_node(root, "/psci");
	if (!psci)
 ...

This is a bit surprising and conterintuitive: I think the logic should
be so that if the current mode is not secure then we want to go out, otherwise
we want to generate the /psci {} dt block for the kernel. If this is true then
we have an error here.

One more use of the state is in the start_linux() function, in arch/arm/lib32/armlinux.c:

...
void start_linux(void *adr, int swap, unsigned long initrd_address,
		 unsigned long initrd_size, void *oftree,
		 enum arm_security_state state)
{
	void (*kernel)(int zero, int arch, void *params) = adr;
	void *params = NULL;
	int architecture;
	int ret;

	if (IS_ENABLED(CONFIG_ARM_SECURE_MONITOR) && state > ARM_STATE_NONSECURE) {
		ret = armv7_secure_monitor_install();
		if (ret)
			pr_err("Failed to install secure monitor\n");
	}
...

In this case the secure monitor would be installed only in case state == ARM_STATE_HYP,
also strange...

I tried to fix things so:

In arch/arm/include/asm/secure.h:

...
enum arm_security_state {
	ARM_STATE_NONSECURE,
	ARM_STATE_SECURE,
 	ARM_STATE_HYP,
 };

In arch/arm/cpu/psci.c:

...
static int of_psci_fixup(struct device_node *root, void *unused)
{
	struct device_node *psci;
	int ret;

	if (bootm_arm_security_state() < ARM_STATE_SECURE)
		return 0;

	psci = of_create_node(root, "/psci");
	if (!psci)
 ...

Moreover, in arch/arm/cpu/sm.c I initialized the global var. bootm_secure_state: = ARM_STATE_SECURE

static int sm_init(void)
{
...
	bootm_secure_state = ARM_STATE_SECURE
}

With these fixes I can boot the imx7d sabre in secure mode with 2 cores.
Unfortunately the CAAM cripto module still doesn't work :-(

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
