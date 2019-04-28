Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKrXS-0003TN-I7
 for barebox@lists.infradead.org; Sun, 28 Apr 2019 21:40:47 +0000
Received: by mail-it1-x142.google.com with SMTP id q14so13672652itk.0
 for <barebox@lists.infradead.org>; Sun, 28 Apr 2019 14:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <96430d9a-d2dc-d5a4-ce9d-caedf4977f0d@gmail.com>
In-Reply-To: <96430d9a-d2dc-d5a4-ce9d-caedf4977f0d@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 28 Apr 2019 14:40:32 -0700
Message-ID: <CAHQ1cqGs2Z7w+r8E_D3d6WEE3L1Lbi7K0AeWyinOS3AzWY0zjg@mail.gmail.com>
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
Subject: Re: [PATCH] clk: vf610: improve handling case that cpu frequency
 can't be changed
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Apr 27, 2019 at 3:09 AM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> Currently we get a nasty error message if the cpu clock can't be
> changed:
> DDRC is clocked by PLL1, can't switch CPU clockinitcall vf610_switch_cpu_clock+0x1/0x198 failed: Invalid argument
>
> So let's do the following:
> - factor out the check from vf610_switch_cpu_clock_to_500mhz() and
>   vf610_switch_cpu_clock_to_400mhz
> - if clock can't be changed, don't treat it as an error
> - don't call clock notifier chain if clock can't be changed
> - add trailing newline to the warning message
>
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Minor nit: it might've been a bit simpler to create
vf610_cpu_clk_unchangable(), so you wouldn't have to invert the result
in every usecase.

Regardless the code is fine as is as, so:

Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
