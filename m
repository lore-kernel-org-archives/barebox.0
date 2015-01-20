Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDTOs-0004N0-Oi
 for barebox@lists.infradead.org; Tue, 20 Jan 2015 07:39:00 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 06C94FFA2A5
 for <barebox@lists.infradead.org>; Tue, 20 Jan 2015 08:31:54 +0100 (CET)
Date: Tue, 20 Jan 2015 08:31:52 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150120073152.GG30554@ns203013.ovh.net>
References: <1421670584-24287-1-git-send-email-plagnioj@jcrosoft.com>
 <20150119182246.9b8de2e026a0d0b436ff9421@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150119182246.9b8de2e026a0d0b436ff9421@gmail.com>
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
Subject: Re: [PATCH 1/1] raspberry-pi: mac address detection support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 18:22 Mon 19 Jan     , Antony Pavlov wrote:
> On Mon, 19 Jan 2015 13:29:44 +0100
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> =

> > increase the mbox timeout as it take more time to retreive the mac
> > =

> > fix led register too
> > =

> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ...
> > diff --git a/arch/arm/mach-bcm2835/mbox.c b/arch/arm/mach-bcm2835/mbox.c
> > index 2bca567..0e51f08 100644
> > --- a/arch/arm/mach-bcm2835/mbox.c
> > +++ b/arch/arm/mach-bcm2835/mbox.c
> > @@ -13,7 +13,7 @@
> >  =

> >  #include <mach/mbox.h>
> >  =

> > -#define TIMEOUT (MSECOND * 100) /* 100mS */
> > +#define TIMEOUT (MSECOND * 1000) /* 100mS */
> >  =

> =

> +#define TIMEOUT (MSECOND * 1000) /* 1000mS */
should simply drop the comment useless

Best Regards,
J.
> =

> --=A0
> Best regards,
> =A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
