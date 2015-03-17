Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXp36-0000ge-CU
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 10:48:37 +0000
Received: from mail414.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 52434FFB1B6
 for <barebox@lists.infradead.org>; Tue, 17 Mar 2015 11:48:06 +0100 (CET)
Date: Tue, 17 Mar 2015 11:48:03 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150317104803.GP26127@ns203013.ovh.net>
References: <20150313095654.GA20624@ns203013.ovh.net>
 <1426241455.13791.103.camel@pengutronix.de>
 <20150313102543.GA23879@ns203013.ovh.net>
 <1426243382.13791.121.camel@pengutronix.de>
 <20150313154928.GA24510@ns203013.ovh.net>
 <1426500022.3330.12.camel@pengutronix.de>
 <20150316102713.GB26127@ns203013.ovh.net>
 <1426505135.3330.55.camel@pengutronix.de>
 <20150316113306.GH26127@ns203013.ovh.net>
 <1426520527.3330.139.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426520527.3330.139.camel@pengutronix.de>
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
Subject: Re: [RFC 2/4] Add rsa support
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:42 Mon 16 Mar     , Jan L=FCbbe wrote:
> On Mo, 2015-03-16 at 12:33 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > I do not like and do not want to use the FTD format to store the key
> > but x509.
> =

> Yes, I think we are in agreement that we need to support both key
> formats.
> =

> > Image format need to be 100% seperated from key format.
> =

> Of course.
> =

> > That's why I work on a framework so we do not care of both.
> > =

> > Multiple image format with multiple image of key format.
> =

> Could you explain your image format in a bit more detail? How your
> intend to defend against a mix-and-match attack?

One of the format we are using can only be one configure signed or/and encr=
ypted
so no mix-and-match attack

Best Regards,
J.
> =

> Regards,
> Jan
> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
