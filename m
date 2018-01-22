Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edWg3-0002kp-RI
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 07:38:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <uol@pengutronix.de>) id 1edWfp-00054f-TR
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 08:37:45 +0100
Received: from uol by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <uol@pengutronix.de>) id 1edWfp-0005YE-Kp
 for barebox@lists.infradead.org; Mon, 22 Jan 2018 08:37:45 +0100
Date: Mon, 22 Jan 2018 08:37:45 +0100
From: Ulrich =?iso-8859-1?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Message-ID: <20180122073745.hfu2mum4eldjd6fx@pengutronix.de>
References: <20180119102026.7456-1-u.oelmann@pengutronix.de>
 <5262c9ab-3a91-936d-1126-d6e253938b91@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5262c9ab-3a91-936d-1126-d6e253938b91@pengutronix.de>
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
Subject: Re: [PATCH] state: Documentation: fix typo
To: barebox@lists.infradead.org

On Fri, Jan 19, 2018 at 05:25:02PM +0100, Roland Hieber wrote:
> On 19.01.2018 11:20, Ulrich =D6lmann wrote:
> > Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> > ---
> >  Documentation/devicetree/bindings/barebox/barebox,state.rst | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rs=
t b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> > index cebb5f82879a..4be5f2f6bd7e 100644
> > --- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
> > +++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> > @@ -64,7 +64,7 @@ Optional Properties
> >  =

> >  The ``backend-stridesize`` is still optional but required whenever the
> >  underlaying backend doesn't provide an information how to pad an insta=
nce of a
> > -*state* variable set. This is valid for all underlaying backends which=
 supports
> > +*state* variable set. This is valid for all underlaying backends which=
 support
> =

> Could please also fix this line so it says "underlying"? :-)

Oh yes, of course - the last word in the line attracted my eyes so strongly=
 that
I did not recognize your finding.

Best regards
Ulrich
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
