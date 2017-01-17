Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x229.google.com ([2607:f8b0:4003:c06::229])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cTSY4-0000RK-BC
 for barebox@lists.infradead.org; Tue, 17 Jan 2017 12:07:43 +0000
Received: by mail-oi0-x229.google.com with SMTP id m124so81485783oif.1
 for <barebox@lists.infradead.org>; Tue, 17 Jan 2017 04:07:15 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170116125820.dx7cxtwhnz5rwrw5@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
 <CAOMZO5Du=RGWT2HWRZde15oMAU5hTvwXXdphVDTB3rQ7OubacQ@mail.gmail.com>
 <20170116125820.dx7cxtwhnz5rwrw5@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 17 Jan 2017 10:07:14 -0200
Message-ID: <CAOMZO5AF3Zo6pJsF41=-maoVAd1w4TeqcS71atROn7gh0eYTzg@mail.gmail.com>
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
Subject: Re: i.MX7 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On Mon, Jan 16, 2017 at 10:58 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Yes, I did. I configured MX7D_PAD_GPIO1_IO00 as WDOD1_WDOG_B, still my
> board only hangs. I also tried configuring it as GPIO. When toggling the
> gpio the board only hangs. I also tried different variations of the
> watchdog SRS/WDA bits. I think there is some other piece I am missing.

What is the version of your warp7 board: rev1.0 or rev2.0? The version
number is written on the CPU board.

warp rev1.0 did not connect the WDOD1_WDOG_B pin to the PMIC and is
not capable of resetting the system.

warp7 rev2.0 does connect the WDOD1_WDOG_B pin to the PMIC and the
reset works fine.

I also found a workaround to reset the rev1.0 board: it consists in
setting bit 0 of SRC_A7RCR0 register.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
