Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSiLk-0005eI-NJ
 for barebox@lists.infradead.org; Wed, 26 Mar 2014 07:34:13 +0000
Received: by mail-lb0-f170.google.com with SMTP id s7so1179846lbd.15
 for <barebox@lists.infradead.org>; Wed, 26 Mar 2014 00:33:34 -0700 (PDT)
Date: Wed, 26 Mar 2014 11:43:16 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140326114316.26869b3b6dd537859df09a20@gmail.com>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: on duplicating device tree clk constants
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi!

Just now I'm working on improvement of device tree support in barebox-mips.

I have examined some existing ARM device trees. I have a clock-related ques=
tion.
I'll use tegra20 device tree as an example.

We have the include/dt-bindings/clock/tegra20-car.h file with clock numbers=
 defines:

Here is a small part of the file:

  #define TEGRA20_CLK_CPU 0
  /* 1 */
  /* 2 */
  #define TEGRA20_CLK_AC97 3
  #define TEGRA20_CLK_RTC 4
  #define TEGRA20_CLK_TIMER 5
  #define TEGRA20_CLK_UARTA 6

At the other hand we have enum tegra20_clks definition in the drivers/clk/t=
egra/clk-tegra20.c file:

  enum tegra20_clks {
        cpu, ac97 =3D 3, rtc, timer, uarta, uartb, gpio, sdmmc2, i2s1 =3D 1=
1, i2c1,
        ndflash, sdmmc1, sdmmc4, twc, pwm, i2s2, epp, gr2d =3D 21, usbd, is=
p,

I see that the constants are the same, but they have differrent names.

Can we drop duplicated definitions?

What device tree clock design pattern I have to use for new code?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
