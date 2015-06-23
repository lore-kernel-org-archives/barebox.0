Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7TuO-0003Ki-8k
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 19:31:01 +0000
Message-ID: <1435087804.28585.8.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 23 Jun 2015 21:30:04 +0200
In-Reply-To: <20150623195716.4fda658d@kgy-pc.lan>
References: <5588272F.9010803@eutecus.com>
 <1435047176.25607.3.camel@pengutronix.de> <55894326.5000107@teledigit.eu>
 <CAOpc7mH---D=ddMwuRdMyqWT1zHe-YZbQrZsMTVWvvQda4YKUQ@mail.gmail.com>
 <558961C0.2090005@teledigit.eu>
 <CAOpc7mF1SnaT0==JpBTPvJ=b_MiwADfWNLAJ=moKd61ietku1w@mail.gmail.com>
 <55897294.10908@teledigit.eu>
 <CAOpc7mEoU-a2Hk3nkQjQX-ya7Nobf3un-aaJpJ0QeG+Ye_JuVA@mail.gmail.com>
 <20150623195716.4fda658d@kgy-pc.lan>
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
Subject: Re: Compiling barebox for newest Yocto/meta-freescale
To: Gyorgy Kovesdi <kgy@teledigit.eu>
Cc: barebox@lists.infradead.org

Am Dienstag, den 23.06.2015, 19:57 +0200 schrieb Gyorgy Kovesdi:
> Hi all,
> > Better make a Yocto patch. Not everyone compiles Barebox with a "build
> > environment".
> Ok, i will do that.
> However, IMHO it is a wrong idea to hard-wire such a setting, because
> everybody will run into this problem having hard-float-only environment.
> At least it should be configurable.
> BTW everybody must have a (cross) gcc which takes care about that.
> 
It's a completely reasonable decision to explicitly build with the
soft-float ABI for a bare metal component like Barebox, in order to
prevent the toolchain from using any part of the ARM VFP state, which
may not be initialized at that point.

This has nothing to do with the decision to build your userspace with
hard-float enabled. Building barebox with the hard-float ABI may
actively yield broken binaries. So no, this is not a thing that should
be configurable.

Also you don't have a hard-float only environment, your toolchain is
perfectly able to build with the soft-float ABI, it's just that Yocto
apparently passes the mfloat-abi=hard flag everywhere instead of setting
a reasonable toolchain default.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
