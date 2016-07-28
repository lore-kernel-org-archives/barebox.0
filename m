Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bSjsM-0002pr-1m
 for barebox@lists.infradead.org; Thu, 28 Jul 2016 11:53:19 +0000
References: <1469024265-20098-1-git-send-email-w.egorov@phytec.de>
 <1469024265-20098-3-git-send-email-w.egorov@phytec.de>
 <CAHQ1cqGeTRhNWXZ2-DpaN=N-=5ri7uFTkfrMBvD0yE4XLtknjw@mail.gmail.com>
From: Wadim Egorov <w.egorov@phytec.de>
Message-ID: <5799F20D.6050904@phytec.de>
Date: Thu, 28 Jul 2016 13:52:45 +0200
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqGeTRhNWXZ2-DpaN=N-=5ri7uFTkfrMBvD0yE4XLtknjw@mail.gmail.com>
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
Subject: Re: [PATCH 3/8] ARM: rockchip: Add early debug support for RK3288
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Andrey,

On 20.07.2016 17:03, Andrey Smirnov wrote:
> On Wed, Jul 20, 2016 at 7:17 AM, Wadim Egorov <w.egorov@phytec.de> wrote:
>> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
>> ---
>>  arch/arm/mach-rockchip/include/mach/debug_ll.h | 72 +++++++++++++++-----------
>>  common/Kconfig                                 |  6 +--
>>  2 files changed, 45 insertions(+), 33 deletions(-)
>>
>> diff --git a/arch/arm/mach-rockchip/include/mach/debug_ll.h b/arch/arm/mach-rockchip/include/mach/debug_ll.h
>> index c666b99..144cada 100644
>> --- a/arch/arm/mach-rockchip/include/mach/debug_ll.h
>> +++ b/arch/arm/mach-rockchip/include/mach/debug_ll.h
>> @@ -1,25 +1,31 @@
>>  #ifndef __MACH_DEBUG_LL_H__
>>  #define __MACH_DEBUG_LL_H__
>>
>> +#include <common.h>
>>  #include <io.h>
>> +#include <mach/rk3188-regs.h>
>> +#include <mach/rk3288-regs.h>
>> +
>> +#ifdef CONFIG_ARCH_RK3188
>> +
>> +#define UART_CLOCK             100000000
>> +#define RK_DEBUG_SOC           RK3188
>> +#define serial_out(a, v)       writeb(v, a)
>> +#define serial_in(a)           readb(a)
>> +
>> +#elif defined CONFIG_ARCH_RK3288
>> +
>> +#define UART_CLOCK             24000000
>> +#define RK_DEBUG_SOC           RK3288
>> +#define serial_out(a, v)       writel(v, a)
>> +#define serial_in(a)           readl(a)
> These "serial_in/out" macros seem a bit redundant to me. What's the
> story behind them, why were they added?

writeb() does not work with RK3288. So I added serial_in/out macros to
split the different types of memory access to the uart registers.

>
>> -#if CONFIG_DEBUG_ROCKCHIP_UART_PORT == 0
>> -#define UART_BASE      0x10124000
>> -#endif
>> -#if CONFIG_DEBUG_ROCKCHIP_UART_PORT == 1
>> -#define UART_BASE      0x10126000
>> -#endif
>> -#if CONFIG_DEBUG_ROCKCHIP_UART_PORT == 2
>> -#define UART_BASE      0x20064000
>> -#endif
>> -#if CONFIG_DEBUG_ROCKCHIP_UART_PORT == 3
>> -#define UART_BASE      0x20068000
>>  #endif
>>
>> -#define LSR_THRE       0x20    /* Xmit holding register empty */
>> -#define LSR            (5 << 2)
>> -#define THR            (0 << 2)
>> +#define __RK_UART_BASE(soc, num) soc##_UART##num##_BASE
>> +#define RK_UART_BASE(soc, num) __RK_UART_BASE(soc, num)
>>
>> +#define LSR_THRE       0x20    /* Xmit holding register empty */
>>  #define LCR_BKSE       0x80    /* Bank select enable */
>>  #define LSR            (5 << 2)
>>  #define THR            (0 << 2)
>> @@ -33,28 +39,34 @@
>>
>>  static inline void INIT_LL(void)
>>  {
>> -       unsigned int clk = 100000000;
>> -       unsigned int divisor = clk / 16 / 115200;
>> -
>> -       writeb(0x00, UART_BASE + LCR);
>> -       writeb(0x00, UART_BASE + IER);
>> -       writeb(0x07, UART_BASE + MDR);
>> -       writeb(LCR_BKSE, UART_BASE + LCR);
>> -       writeb(divisor & 0xff, UART_BASE + DLL);
>> -       writeb(divisor >> 8, UART_BASE + DLM);
>> -       writeb(0x03, UART_BASE + LCR);
>> -       writeb(0x03, UART_BASE + MCR);
>> -       writeb(0x07, UART_BASE + FCR);
>> -       writeb(0x00, UART_BASE + MDR);
>> +       void __iomem *base = (void *)RK_UART_BASE(RK_DEBUG_SOC,
>> +               CONFIG_DEBUG_ROCKCHIP_UART_PORT);
> There's a IOMEM macro that you could use to avoid explicit casting.

ok

>
>> +       unsigned int divisor = DIV_ROUND_CLOSEST(UART_CLOCK, 16 * 115200);
> I'd suggest CONFIG_BAUDRATE instead of hard-coded value.

ok

>
>> +
>> +       serial_out(base + LCR, 0x00);
>> +       serial_out(base + IER, 0x00);
>> +       serial_out(base + MDR, 0x07);
>> +       serial_out(base + LCR, LCR_BKSE);
>> +       serial_out(base + DLL, divisor & 0xff);
>> +       serial_out(base + DLM, divisor >> 8);
>> +       serial_out(base + LCR, 0x03);
>> +       serial_out(base + MCR, 0x03);
>> +       serial_out(base + FCR, 0x07);
>> +       serial_out(base + MDR, 0x00);
>>  }
>>
>>  static inline void PUTC_LL(char c)
>>  {
>> +       void __iomem *base = (void *)RK_UART_BASE(RK_DEBUG_SOC,
>> +               CONFIG_DEBUG_ROCKCHIP_UART_PORT);
> IOMEM here as well.

ok

>
>> +
>>         /* Wait until there is space in the FIFO */
>> -       while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
>> +       while ((serial_in(base + LSR) & LSR_THRE) == 0)
>> +               ;
> You could probably separate this busy loop into a small inline
> function and re-use it below and in the code of the full-fledged
> driver.

I don't really see the point here.

Regards,
Wadim

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
