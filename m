Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo69.mail-out.ovh.net ([178.33.251.80]
 helo=mo69.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WxU7l-0005qD-Ja
 for barebox@lists.infradead.org; Thu, 19 Jun 2014 04:38:58 +0000
Received: from mail139.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id C368EFFB82D
 for <barebox@lists.infradead.org>; Thu, 19 Jun 2014 06:28:21 +0200 (CEST)
Date: Thu, 19 Jun 2014 06:31:54 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140619043154.GE15426@ns203013.ovh.net>
References: <CACqcpZDTj-XaPOyH+Twhku26eSa-S3p3xDOWszAQC7JKfOyfsA@mail.gmail.com>
 <539A5353.7090306@atmel.com>
 <CACqcpZCNBZ6he2OnqQcdT3dPoeP0nFqSmteHAGYyLKAtAoT=nw@mail.gmail.com>
 <539AF326.7010504@gmail.com> <539E9A90.4010808@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <539E9A90.4010808@atmel.com>
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
Subject: Re: atmel_nand pmecc on 8k page [RFC]
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On 15:19 Mon 16 Jun     , Bo Shen wrote:
> =

> Hi Matteo,
> =

> On 06/13/2014 08:48 PM, Matteo Fortini wrote:
> >Hi all,
> >glad you found my patch useful. Sascha rejected it because he sees it
> >more fit to separate the initialization of sama5d3 and sam9 since they
> >are quite different.
> >
> >I started, as advised by Sascha, to create into sam9_smc.c the function
> >
> >void sama5d3_smc_configure(int id, int cs, struct sama5d3_smc_config
> >*config)
> >
> >but this brings on some other changes to keep the same structure of
> >functions,  i.e. we would need to implement
> >
> >static void sama5d3_smc_cs_configure(void __iomem *base, struct
> >sama5d3_smc_config *config)
> >
> >and all the related functions, since the argument changes from struct
> >sam9_smc_config * to struct sama5d3_smc_config *
> >
> >Now I'm asking you all for a comment: should we go ahead and create a
> >new sama5d3_smc.c file with all the functions (some will unfortunately
> >be a duplicate of those present in sam9_smc.c), or should I do a partial
> >hack to insert sama5d3 specific functions into sam9_smc.c (like, for
> >example, playing with config structures so that the sam9 one is just the
> >head of the sama5d3)?
> =

> I think we'd better to create a new sama5d3_smc.c. This will be more
> readable, and also benefit for the new coming SoC.


NACK

that was raised on the kernel the sam9 & sama5 does does share the IP the a5
just have more features

Best Regards,
J.
> =

> >Thank you in advance for your comments, I ask Rapha=EBl to wait until th=
is
> >patch is settled to send in his changes. They will be very useful for
> >me, too (I had to deactivate PMECC to use my NAND...)
> >
> >M
> =

> Best Regards,
> Bo Shen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
