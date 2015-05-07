Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YqUp0-0004TL-Lo
 for barebox@lists.infradead.org; Thu, 07 May 2015 23:03:15 +0000
Received: by lbbuc2 with SMTP id uc2so41766410lbb.2
 for <barebox@lists.infradead.org>; Thu, 07 May 2015 16:02:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150508015933.1e00066aab99376b174ddfcb@gmail.com>
References: <20150508015933.1e00066aab99376b174ddfcb@gmail.com>
Date: Thu, 7 May 2015 20:02:51 -0300
Message-ID: <CAOMZO5AfOS8jsCPcS_LGCLoTLAC=gAGN9tAKBCOmUohMeGfZEw@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: barebox on i.MX 6SoloX
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, May 7, 2015 at 7:59 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> Hi!
>
> I have just readed about new RaspberyPi-like board: UDOO Neo.
> See https://www.kickstarter.com/projects/udoo/udoo-neo-raspberry-pi-arduino-wi-fi-bt-40-sensors
> for details.
>
> The board's main chip is Freescale i.MX 6SoloX.
>
> I see the arch/arm/mach-imx/imx6.c file in barebox source tree.
>
> I have no knowledge on i.MX family, so my question is:
> does barebox already support i.MX 6SoloX?

Yes, it does. Please check:
arch/arm/boards/freescale-mx6sx-sabresdb/board.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
