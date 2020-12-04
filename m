Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klGB1-0004W2-TV
 for barebox@lists.infradead.org; Fri, 04 Dec 2020 18:51:32 +0000
Received: by mail-lj1-x22d.google.com with SMTP id j10so7727696lja.5
 for <barebox@lists.infradead.org>; Fri, 04 Dec 2020 10:51:31 -0800 (PST)
MIME-Version: 1.0
References: <CAOMZO5B8a+27UfmTP=RvyZYD34fnteMrSXAsvsDZ6bhJwCoUtw@mail.gmail.com>
 <e3ba28ab89980afdf1b330b9a71746d43bd4fce3.camel@pengutronix.de>
In-Reply-To: <e3ba28ab89980afdf1b330b9a71746d43bd4fce3.camel@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 4 Dec 2020 15:51:18 -0300
Message-ID: <CAOMZO5Cdewmnyb-QttQmXjZ0OQatVxHODGYCBR3SyeU3FQbKcA@mail.gmail.com>
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
Subject: Re: Running reset stress test
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Rouven,

On Fri, Dec 4, 2020 at 3:41 PM Rouven Czerwinski
<r.czerwinski@pengutronix.de> wrote:

> $ edit /env/boot/reset
> #!/bin/sh
> reset
> $ nv boot.default=reset
> $ nv autoboot.timeout=0
> $ saveenv
> $ boot
>
> Note that barebox can still be interrupted by holding Ctrl+c and
> aborting the init sequence, which will not autoboot the board.
>
> At least the above lets the nitrogen6x on my desk happily cycle the
> bootloader.

Thanks for your help, appreciate it!

Cheers

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
