Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6m7K-0002Zu-B8
 for barebox@lists.infradead.org; Thu, 21 Mar 2019 01:03:35 +0000
Received: by mail-qt1-x82e.google.com with SMTP id t28so4893554qte.6
 for <barebox@lists.infradead.org>; Wed, 20 Mar 2019 18:03:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
 <20190320075215.7j36mofzoewd5qfa@pengutronix.de>
In-Reply-To: <20190320075215.7j36mofzoewd5qfa@pengutronix.de>
From: Lewis Zhou <lewisou@gmail.com>
Date: Thu, 21 Mar 2019 09:03:21 +0800
Message-ID: <CAD_PvuYxnQJT7VVe0DKRZa-VHJN+Rz-tb9KLudtd+My8CBXhLg@mail.gmail.com>
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
Subject: Re: selected processor does not support `rev r7,r7'
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

The toolchain was compiled by crosstool-NG. It used the default config
arm-cortex_a8-linux-gnueabi but with the hardware float enabled. So
the toolchain was arm-cortex_a8-linux-gnueabihf-.

I have tested the gcc-arm-linux-gnueabihf package. That works fine.

Kind regards,
Lewis

On Wed, Mar 20, 2019 at 3:52 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Wed, Mar 20, 2019 at 12:57:07PM +0800, Lewis Zhou wrote:
> > Hi
> >
> > I got a compiling error, please see the log below:
> >
> > lewis@lewis-ubuntu:~/OpenProj/barebox$ make ARCH=arm
> > CROSS_COMPILE=arm-cortex_a8-linux-gnueabihf- am335x_mlo_defconfig
> > #
> > # configuration written to .config
> > #
> >
> > lewis@lewis-ubuntu:~/OpenProj/barebox$ make ARCH=arm
> > CROSS_COMPILE=arm-corte-linux-gnueabihf-
>
> > {standard input}: Assembler messages:
> > {standard input}:123: Error: selected processor does not support `rev
> > r7,r7' in Thumb mode
> > {standard input}:135: Error: selected processor does not support `rev
> > r7,r7' in Thumb mode
> > scripts/Makefile.build:249: recipe for target 'common/memory.o' failed
> > make[1]: *** [common/memory.o] Error 1
>
> This works here, so this is probably toolchain related. Which toolchain
> with which versions do you use? Since you are on an Ubuntu system, have
> you tried the one from the gcc-arm-linux-gnueabihf package?
>
> Sascha
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
