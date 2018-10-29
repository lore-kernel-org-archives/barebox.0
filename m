Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gHB8M-00036o-C0
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 17:15:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id d17-v6so9269614wre.11
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2018 10:15:11 -0700 (PDT)
MIME-Version: 1.0
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
 <20181027013157.23135-11-andrew.smirnov@gmail.com>
 <20181029111342.ne4lrurwgmmmboav@pengutronix.de>
In-Reply-To: <20181029111342.ne4lrurwgmmmboav@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 29 Oct 2018 10:14:58 -0700
Message-ID: <CAHQ1cqH7chhnKDoVGF9qJzJ6tmAt0d-x1RxnBq3EjcUqy3ENBA@mail.gmail.com>
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
Subject: Re: [PATCH 10/11] VF610: zii-vf610-dev: Replace board code with
 gpio-hog nodes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Oct 29, 2018 at 4:13 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Fri, Oct 26, 2018 at 06:31:56PM -0700, Andrey Smirnov wrote:
> > diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
> > index 149333596..74ec9fd1d 100644
> > --- a/arch/arm/dts/vf610-zii-cfu1.dts
> > +++ b/arch/arm/dts/vf610-zii-cfu1.dts
> > @@ -19,3 +19,28 @@
> >       };
> >  };
> >
> > +
> > +&gpio3 {
> > +     fim-tdis {
> > +             gpio-hog;
> > +             gpios = <22 GPIO_ACTIVE_HIGH>;
> > +             output-low;
> > +             line-name = "fim_tdis";
> > +     };
> > +
> > +     e6352-intn {
> > +             gpio-hog;
> > +             gpios = <2 GPIO_ACTIVE_HIGH>;
> > +             input;
> > +             line-name = "e6352_intn";
> > +     };
> > +};
> > +
> > +&gpio4 {
> > +     fim-sd {
> > +             gpio-hog;
> > +             gpios = <4 GPIO_ACTIVE_HIGH>;
> > +             input;
> > +             line-name = "fim_sd";
> > +     };
> > +};
>
> Hog GPIOs are GPIOs that are initialized once in the Kernel and from
> then on can never be changed. Is this true for these GPIOs you change
> here? I just want to make sure that you do not use gpio-hog in barebox
> to configure it and do something different in the Kernel because you
> pass another devicetree to the kernel. Or, to put it differently, you
> should be able to pass the barebox devicetree to Linux and still have
> a fully operating system.
>

Those GPIOs are exposed for debugging/board bringup purposes mostly:
"fim_*" are "signal detect" and "tx disable" signals from an fiber
optic transmitter module and "e6352_intn" is an interrupt line from
Marvell switch. Linux kernel has appropriate drivers that "consume"
those GPIOs, so passing BB's DT might result in conflicts in those
drivers (I am not 100% sure), so this is probably a violation of the
rule you laid out above.

This is not really crucial code to have in general, so I'll move the
DT changes out into a separate patch that I can carry in our upstream
patch delta (It'll probably be dropped eventually).

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
