Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNKjU-00046K-MS
 for barebox@lists.infradead.org; Mon, 28 May 2018 16:10:54 +0000
Date: Mon, 28 May 2018 18:10:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180528161036.ii4miygb3u6naftn@pengutronix.de>
References: <717577a612f7c48dcb520a970c3ddde7e6b40980.camel@allegion.com>
 <58ea01ed8cdfcade129d7d5b5aa5455066572d75.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58ea01ed8cdfcade129d7d5b5aa5455066572d75.camel@allegion.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands/of_node: add option to apply changes as fixup
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, May 25, 2018 at 10:47:54AM +0000, Baeuerle, Florian wrote:
> Am Freitag, den 25.05.2018, 10:41 +0000 schrieb Baeuerle, Florian:
> > Analogous to the of_property command, add an -f option to the of_node
> > command. This option defers the device tree modification until boot
> > time and thus applies the modification as a fixup on the linux device
> > tree.
> > =

> > Signed-off-by: Florian B=E4uerle <florian.baeuerle@allegion.com>
> > ---
> >  commands/of_node.c | 106 ++++++++++++++++++++++++++++++++-------------
> >  1 file changed, 75 insertions(+), 31 deletions(-)
> > =

> > diff --git a/commands/of_node.c b/commands/of_node.c
> > index 4962e5242..29cc371dd 100644
> > --- a/commands/of_node.c
> > +++ b/commands/of_node.c
> > @@ -32,16 +32,66 @@
> >  #include <init.h>
> >  #include <libgen.h>
> >  =

> > +static int do_of_node_create_now(struct device_node *root, const char =
*path);
> > +static int do_of_node_delete_now(struct device_node *root, const char =
*path);
> > +
> > +static int of_fixup_node_create(struct device_node *root, void *contex=
t)
> > +{
> > +	return do_of_node_create_now(root, (const char *)context);
> > +}
> > +
> > +static int of_fixup_node_delete(struct device_node *root, void *contex=
t)
> > +{
> > +	return do_of_node_delete_now(root, (const char *)context);
> > +}
> > +
> > +static int do_of_node_create_fixup(const char *path)
> > +{
> > +	char *data =3D xstrdup(path);
> > +
> > +	return of_register_fixup(of_fixup_node_create, (void *)data);
> > +}
> > +
> > +static int do_of_node_delete_fixup(const char *path)
> > +{
> > +	char *data =3D xstrdup(path);
> > +
> > +	return of_register_fixup(of_fixup_node_delete, (void *)data);
> > +}
> =

> I know the two functions above do not do a lot, but I wanted to keep it s=
imilar
> to the of_property implementation.  If you'd like them go away, just tell=
 me.

It's ok. Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
