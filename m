Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x243.google.com ([2607:f8b0:400d:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdLWj-0006mx-9y
 for barebox@lists.infradead.org; Mon, 13 Feb 2017 18:39:08 +0000
Received: by mail-qk0-x243.google.com with SMTP id 11so16044234qkl.0
 for <barebox@lists.infradead.org>; Mon, 13 Feb 2017 10:38:44 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170213074537.qdv3etmrly6n22pi@pengutronix.de>
References: <20170207084327.7691-1-s.hauer@pengutronix.de>
 <20170207084327.7691-5-s.hauer@pengutronix.de>
 <CAHQ1cqGbbzkMn3cm7RjhNECMewBZDWt3WkHpGrKs6dxe8k-6gA@mail.gmail.com>
 <20170213074537.qdv3etmrly6n22pi@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 13 Feb 2017 10:38:43 -0800
Message-ID: <CAHQ1cqGb7H54xjKt_fCXEfkcRXi-kzkbusPOnL711ox+RKOHTA@mail.gmail.com>
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
Subject: Re: [PATCH 4/4] ARM: i.MX7: Add PSCI support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Feb 12, 2017 at 11:45 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Thu, Feb 09, 2017 at 11:13:25AM -0800, Andrey Smirnov wrote:
>> On Tue, Feb 7, 2017 at 12:43 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> > ---
>> >  arch/arm/cpu/psci.c      | 13 +++++++++
>> >  arch/arm/mach-imx/imx7.c | 76 ++++++++++++++++++++++++++++++++++++++++++++++++
>> >  2 files changed, 89 insertions(+)
>> >
>> > diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
>> > index 745b8495e..d650c23ea 100644
>> > --- a/arch/arm/cpu/psci.c
>> > +++ b/arch/arm/cpu/psci.c
>> > @@ -22,6 +22,17 @@
>> >  #include <magicvar.h>
>> >
>> >  #ifdef CONFIG_ARM_PSCI_DEBUG
>> > +
>> > +/*
>> > + * PSCI debugging functions. Board code can specify a putc() function
>> > + * which is used for debugging output. Beware that this function is
>> > + * called while the kernel is running. This means the kernel could have
>> > + * turned off clocks, configured other baudrates and other stuff that
>> > + * might confuse the putc function. So it can well be that the debugging
>> > + * code itself is the problem when somethings not working. You have been
>> > + * warned.
>> > + */
>> > +
>> >  static void (*__putc)(void *ctx, int c);
>> >  static void *putc_ctx;
>> >
>> > @@ -220,6 +231,8 @@ int psci_cpu_entry_c(void)
>> >         if (bootm_arm_security_state() == ARM_STATE_HYP)
>> >                 armv7_switch_to_hyp();
>> >
>> > +       psci_printf("core #%d enter function 0x%p\n", cpu, entry);
>> > +
>> >         entry(context_id);
>> >
>> >         while (1);
>> > diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
>> > index 1cd27a0db..c4b9b2815 100644
>> > --- a/arch/arm/mach-imx/imx7.c
>> > +++ b/arch/arm/mach-imx/imx7.c
>> > @@ -92,6 +92,80 @@ static void imx7_init_csu(void)
>> >                 writel(CSU_INIT_SEC_LEVEL0, csu + i * 4);
>> >  }
>> >
>> > +#define GPC_CPU_PGC_SW_PDN_REQ 0xfc
>> > +#define GPC_CPU_PGC_SW_PUP_REQ 0xf0
>> > +#define GPC_PGC_C1             0x840
>>
>> Maybe convert this to something like:
>>
>> #define PGC_C(n) (0x800 + (n) * 0x40)
>>
>> ... more domain offsets if needed ...
>>
>> #define GPC_PGC_nCTRL(d)   ((d) + 0x00)
>>
>> and use as:
>>
>> GPC_PGC_nCTRL(PGC_C(1))
>>
>> ?
>>
>> > +
>> > +#define BM_CPU_PGC_SW_PDN_PUP_REQ_CORE1_A7     0x2
>> > +
>> > +/* below is for i.MX7D */
>> > +#define SRC_GPR1_MX7D          0x074
>> > +#define SRC_A7RCR0             0x004
>>
>> This constant doesn't seem to be used anywhere, is that intentional?
>>
>> > +#define SRC_A7RCR1             0x008
>> > +
>> > +static void imx_gpcv2_set_core1_power(bool pdn)
>> > +{
>>
>> Did you not make this function more generic and take core number as a
>> parameter on purpose? It just seems like it would be trivial code
>> change, but maybe I am mistaken
>>
>> > +       void __iomem *gpc = IOMEM(MX7_GPC_BASE_ADDR);
>> > +
>> > +       u32 reg = pdn ? GPC_CPU_PGC_SW_PUP_REQ : GPC_CPU_PGC_SW_PDN_REQ;
>> > +       u32 val;
>> > +
>> > +       writel(1, gpc + GPC_PGC_C1);
>>
>> GPC_PGC_nCTRL_PCR instead of "1"?
>>
>> > +
>> > +       val = readl(gpc + reg);
>> > +       val |= BM_CPU_PGC_SW_PDN_PUP_REQ_CORE1_A7;
>> > +       writel(val, gpc + reg);
>> > +
>> > +       while ((readl(gpc + reg) &
>> > +              BM_CPU_PGC_SW_PDN_PUP_REQ_CORE1_A7) != 0)
>> > +               ;
>> > +
>> > +       writel(0, gpc + GPC_PGC_C1);
>> > +}
>> > +
>> > +static int imx7_cpu_on(u32 cpu_id)
>> > +{
>> > +       void __iomem *src = IOMEM(MX7_SRC_BASE_ADDR);
>> > +       u32 val;
>> > +
>> > +       writel(psci_cpu_entry, src + cpu_id * 8 + SRC_GPR1_MX7D);
>> > +       imx_gpcv2_set_core1_power(true);
>> > +
>> > +       val = readl(src + SRC_A7RCR1);
>> > +       val |= 1 << cpu_id;
>>
>> BIT(cpu_id)?
>>
>> > +       writel(val, src + SRC_A7RCR1);
>>
>> Hmm, this function doesn't look like it supports turning on CPU 0, am
>> I missing something? If not shouldn't it return NOT_SUPPORTED in case
>> cpu_id is 0?
>>
>> > +
>> > +       return 0;
>> > +}
>> > +
>> > +static int imx7_cpu_off(void)
>> > +{
>> > +       void __iomem *src = IOMEM(MX7_SRC_BASE_ADDR);
>> > +       u32 val;
>> > +       int cpu_id = 1;
>> > +
>>
>> I have only a very brief familiarity with PCSI, so pleasw bear with me
>> if what I am asking is dumb, but isn't CPU_OFF operation supposed to
>> power off current CPU? This function looks like it will power down
>> core 1 regardless of who's executing the code.
>
> This patch is only tested up to the point where the secondary CPU comes
> up. In a dual core system we only ever have to enable the CPU1. I didn't
> test CPU hotplug, so Linux won't turn off a CPU, be it core 0 or core 1.
>

Yeah, I guess that was the case and that's fair. I am only concerned
about cases like that where such a discrepancy between what code
should do and what it was implemented to do is not documented in
comments. I'd rather avoid putting future readers in a position where
they have to determine if it is the code or their mental model of the
code is incorrect.

> I updated the patch to pass the core number around so it *shoul* work,
> but I haven't tested it.

That should work too. Thanks.

>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
