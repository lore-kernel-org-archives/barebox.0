Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSjiA-00077t-28
 for barebox@lists.infradead.org; Wed, 26 Mar 2014 09:01:26 +0000
Message-ID: <1395824580.2079.3.camel@tellur>
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 26 Mar 2014 10:03:00 +0100
In-Reply-To: <20140326114316.26869b3b6dd537859df09a20@gmail.com>
References: <20140326114316.26869b3b6dd537859df09a20@gmail.com>
Mime-Version: 1.0
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
Subject: Re: on duplicating device tree clk constants
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 26.03.2014, 11:43 +0400 schrieb Antony Pavlov:
> Hi!
> 
> Just now I'm working on improvement of device tree support in barebox-mips.
> 
> I have examined some existing ARM device trees. I have a clock-related question.
> I'll use tegra20 device tree as an example.
> 
> We have the include/dt-bindings/clock/tegra20-car.h file with clock numbers defines:
> 
> Here is a small part of the file:
> 
>   #define TEGRA20_CLK_CPU 0
>   /* 1 */
>   /* 2 */
>   #define TEGRA20_CLK_AC97 3
>   #define TEGRA20_CLK_RTC 4
>   #define TEGRA20_CLK_TIMER 5
>   #define TEGRA20_CLK_UARTA 6
> 
> At the other hand we have enum tegra20_clks definition in the drivers/clk/tegra/clk-tegra20.c file:
> 
>   enum tegra20_clks {
>         cpu, ac97 = 3, rtc, timer, uarta, uartb, gpio, sdmmc2, i2s1 = 11, i2c1,
>         ndflash, sdmmc1, sdmmc4, twc, pwm, i2s2, epp, gr2d = 21, usbd, isp,
> 
> I see that the constants are the same, but they have differrent names.
> 
> Can we drop duplicated definitions?
> 
> What device tree clock design pattern I have to use for new code?
> 
Right, the enum is still in the clock driver, as this was written before
the DT binding includes were there. I have some some additions to the
clock driver in the pipeline and will remove the enum in the course of
this.

So please if you write a new clock driver just use the DT includes. It
makes maintenance a lot easier.

Regards,
Lucas



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
