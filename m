Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNUT-0007go-Ea
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 14:07:59 +0000
Received: by mail-qk1-x741.google.com with SMTP id u184so19292547qkd.4
 for <barebox@lists.infradead.org>; Tue, 15 Oct 2019 07:07:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuCjbdBi8JKEg_pesy-9OeDYzKh7zJFQRDqQqYqws=XBUg@mail.gmail.com>
 <20191011072110.dgtegrdzkojwco3u@pengutronix.de>
 <CAEp+FuAi6+cUSxk0pXVOpKoE=GPCxU9QubzdDdgcLP9hvMzcbg@mail.gmail.com>
 <CAEp+FuCHiycZ-LSfVkcUSN5Nv+Bj0X8==0UkJjP9ET+udnv8sQ@mail.gmail.com>
In-Reply-To: <CAEp+FuCHiycZ-LSfVkcUSN5Nv+Bj0X8==0UkJjP9ET+udnv8sQ@mail.gmail.com>
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Tue, 15 Oct 2019 16:07:43 +0200
Message-ID: <CAEp+FuBNZ5v3fVHAW8zWCGTaQJLZo0PyW=narnvG8z_7Lw=MjQ@mail.gmail.com>
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
Subject: Re: MFGTools from NXP
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

   does anyone have experience with using imx_usb_loader to flash the
barebox on a NAND(mtd partition)? If yes some reference scripts would
be helpful for me. Or where should I look for an example?

Thanks,
      Mihaita Ivascu


On Mon, Oct 14, 2019 at 3:07 PM Mihaita Ivascu
<mihaita_ivascu@trimble.com> wrote:
>
> Hello all,
>
>     Can I use imx-usb-loader tool from a windows host? I don't think
> so. If that is the case then I am stuck with MFGTools
>
> Thanks,
>        Mihaita
>
>
> On Fri, Oct 11, 2019 at 11:47 AM Mihaita Ivascu
> <mihaita_ivascu@trimble.com> wrote:
> >
> > Hello Marco,
> >
> >    Thanks to your reply. I am not keen to use specifically MFGTool but
> > I do need a method to load flash new barebox and kernel images from
> > windows side.
> >    I have tried with MFGTools but was not successfully when using
> > kobs-ng to flash the barebox.  I have attached a log that I send to
> > NXP.
> >
> >    If there is more knowledge on how to use imx-usb-loader than I
> > would give it a try.
> >
> > Thanks,
> >       Mihaita
> >
> > On Fri, Oct 11, 2019 at 9:21 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
> > >
> > > Hi Mihaita,
> > >
> > > On 19-10-10 15:03, Mihaita Ivascu wrote:
> > > > Hello all,
> > > >
> > > >     Does anybody have experience with using MFGTools to flash the
> > > > barebox and kernel in NAND for imx6ul platforms?
> > >
> > > Hm.. I think the most of us are using the imx-usb-loader tool ;) I
> > > used it a long time ago but let's try if I can help you. So what is your
> > > question?
> > >
> > > Regards,
> > >   Marco
> > >
> > > > Thanks,
> > > >        Mihaita
> > > >
> > > > _______________________________________________
> > > > barebox mailing list
> > > > barebox@lists.infradead.org
> > > > http://lists.infradead.org/mailman/listinfo/barebox
> > > >
> > >
> > > --
> > > Pengutronix e.K.                           |                             |
> > > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> > > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
