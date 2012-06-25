Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gh0-f177.google.com ([209.85.160.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj3pj-0007Jd-JW
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 07:35:44 +0000
Received: by ghbf11 with SMTP id f11so2791271ghb.36
 for <barebox@lists.infradead.org>; Mon, 25 Jun 2012 00:35:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120625073217.GC24458@pengutronix.de>
References: <1339616588-16636-1-git-send-email-antonynpavlov@gmail.com>
 <1339616588-16636-3-git-send-email-antonynpavlov@gmail.com>
 <20120625073217.GC24458@pengutronix.de>
Date: Mon, 25 Jun 2012 11:35:37 +0400
Message-ID: <CAA4bVAGfXvdmEhRzi4U_DgNuX2MRthFSBZ65TcQQqCHEP=5sHQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] rzx50: add poweroff support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Ok, I'll fix it in a few hours.

On 25 June 2012 11:32, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Antony,
>
> This patch introduces some new build warnings in rx50_defconfig. Could yo=
u fix these?
>
> arch/mips/mach-xburst/reset-jz4750.c: In function 'poweroff':
> arch/mips/mach-xburst/reset-jz4750.c:68: warning: passing argument 1 of '=
__raw_readl' makes pointer from integer without a cast
> arch/mips/mach-xburst/reset-jz4750.c:71: warning: passing argument 2 of '=
__raw_writel' makes pointer from integer without a cast
> arch/mips/mach-xburst/reset-jz4750.c:73: warning: 'noreturn' function doe=
s return
>
> Thanks
> =A0Sascha
>
> On Wed, Jun 13, 2012 at 11:43:08PM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0arch/mips/mach-xburst/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 | =A0 =A01 +
>> =A0arch/mips/mach-xburst/include/mach/jz4750d_regs.h | =A0 31 ++++++++++=
+++++++++++
>> =A0arch/mips/mach-xburst/reset-jz4750.c =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 28 +++++++++++++++++++
>> =A03 files changed, 60 insertions(+)
>>
>> diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconf=
ig
>> index 60e411c..c72b741 100644
>> --- a/arch/mips/mach-xburst/Kconfig
>> +++ b/arch/mips/mach-xburst/Kconfig
>> @@ -12,6 +12,7 @@ choice
>>
>> =A0config BOARD_RZX50
>> =A0 =A0 =A0 bool "Ritmix RZX-50"
>> + =A0 =A0 select HAS_POWEROFF
>> =A0 =A0 =A0 select CPU_JZ4755
>>
>> =A0endchoice
>> diff --git a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h b/arch/mi=
ps/mach-xburst/include/mach/jz4750d_regs.h
>> index 717493b..eafdd2f 100644
>> --- a/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
>> +++ b/arch/mips/mach-xburst/include/mach/jz4750d_regs.h
>> @@ -15,6 +15,7 @@
>>
>> =A0#define TCU_BASE =A0 =A0 =A0 =A00xb0002000
>> =A0#define WDT_BASE =A0 =A0 =A0 =A00xb0002000
>> +#define RTC_BASE =A0 =A0 =A0 =A00xb0003000
>> =A0#define UART1_BASE =A0 =A0 =A00xb0031000
>>
>> =A0/********************************************************************=
*****
>> @@ -77,4 +78,34 @@
>>
>> =A0#define WDT_TCER_TCEN =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(1 << 0)
>>
>> +/**********************************************************************=
***
>> + * RTC
>> + **********************************************************************=
***/
>> +#define RTC_RCR =A0 =A0 =A0 =A0 =A0 =A0 =A0(RTC_BASE + 0x00) /* RTC Con=
trol Register */
>> +#define RTC_RSR =A0 =A0 =A0 =A0 =A0 =A0 =A0(RTC_BASE + 0x04) /* RTC Sec=
ond Register */
>> +#define RTC_RSAR =A0 =A0 (RTC_BASE + 0x08) /* RTC Second Alarm Register=
 */
>> +#define RTC_RGR =A0 =A0 =A0 =A0 =A0 =A0 =A0(RTC_BASE + 0x0c) /* RTC Reg=
ulator Register */
>> +
>> +#define RTC_HCR =A0 =A0 =A0 =A0 =A0 =A0 =A0(RTC_BASE + 0x20) /* Hiberna=
te Control Register */
>> +#define RTC_HWFCR =A0 =A0(RTC_BASE + 0x24) /* Hibernate Wakeup Filter C=
ounter Reg */
>> +#define RTC_HRCR =A0 =A0 (RTC_BASE + 0x28) /* Hibernate Reset Counter R=
egister */
>> +#define RTC_HWCR =A0 =A0 (RTC_BASE + 0x2c) /* Hibernate Wakeup Control =
Register */
>> +#define RTC_HWRSR =A0 =A0(RTC_BASE + 0x30) /* Hibernate Wakeup Status R=
egister */
>> +#define RTC_HSPR =A0 =A0 (RTC_BASE + 0x34) /* Hibernate Scratch Pattern=
 Register */
>> +
>> +/* RTC Control Register */
>> +#define RTC_RCR_WRDY_BIT 7
>> +#define RTC_RCR_WRDY (1 << 7) =A0/* Write Ready Flag */
>> +#define RTC_RCR_1HZ_BIT =A0 =A0 =A06
>> +#define RTC_RCR_1HZ =A0(1 << RTC_RCR_1HZ_BIT) =A0/* 1Hz Flag */
>> +#define RTC_RCR_1HZIE =A0 =A0 =A0 =A0(1 << 5) =A0/* 1Hz Interrupt Enabl=
e */
>> +#define RTC_RCR_AF_BIT =A0 =A0 =A0 4
>> +#define RTC_RCR_AF =A0 (1 << RTC_RCR_AF_BIT) =A0/* Alarm Flag */
>> +#define RTC_RCR_AIE =A0(1 << 3) =A0/* Alarm Interrupt Enable */
>> +#define RTC_RCR_AE =A0 (1 << 2) =A0/* Alarm Enable */
>> +#define RTC_RCR_RTCE (1 << 0) =A0/* RTC Enable */
>> +
>> +/* Hibernate Control Register */
>> +#define RTC_HCR_PD =A0 =A0 =A0 =A0 =A0 (1 << 0) =A0/* Power Down */
>> +
>> =A0#endif /* __JZ4750D_REGS_H__ */
>> diff --git a/arch/mips/mach-xburst/reset-jz4750.c b/arch/mips/mach-xburs=
t/reset-jz4750.c
>> index 3540ca9..4bda56c 100644
>> --- a/arch/mips/mach-xburst/reset-jz4750.c
>> +++ b/arch/mips/mach-xburst/reset-jz4750.c
>> @@ -29,6 +29,19 @@
>>
>> =A0#define JZ_EXTAL 24000000
>>
>> +static void jz4750d_halt(void)
>> +{
>> + =A0 =A0 while (1) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 __asm__(".set push;\n"
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ".set mips3;\n"
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 "wait;\n"
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ".set pop;\n"
>> + =A0 =A0 =A0 =A0 =A0 =A0 );
>> + =A0 =A0 }
>> +
>> + =A0 =A0 unreachable();
>> +}
>> +
>> =A0void __noreturn reset_cpu(ulong addr)
>> =A0{
>> =A0 =A0 =A0 __raw_writew(WDT_TCSR_PRESCALE4 | WDT_TCSR_EXT_EN, (u16 *)WD=
T_TCSR);
>> @@ -44,3 +57,18 @@ void __noreturn reset_cpu(ulong addr)
>> =A0 =A0 =A0 unreachable();
>> =A0}
>> =A0EXPORT_SYMBOL(reset_cpu);
>> +
>> +void __noreturn poweroff()
>> +{
>> + =A0 =A0 u32 ctrl;
>> +
>> + =A0 =A0 shutdown_barebox();
>> +
>> + =A0 =A0 do {
>> + =A0 =A0 =A0 =A0 =A0 =A0 ctrl =3D readl(RTC_RCR);
>> + =A0 =A0 } while (!(ctrl & RTC_RCR_WRDY));
>> +
>> + =A0 =A0 writel(RTC_HCR_PD, RTC_HCR);
>> + =A0 =A0 jz4750d_halt();
>> +}
>> +EXPORT_SYMBOL(poweroff);
>> --
>> 1.7.10
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
