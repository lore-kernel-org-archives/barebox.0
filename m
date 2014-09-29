Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XYb8w-0001gM-0O
 for barebox@lists.infradead.org; Mon, 29 Sep 2014 13:37:34 +0000
Date: Mon, 29 Sep 2014 15:37:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140929133709.GU4992@pengutronix.de>
References: <1411730551-26605-1-git-send-email-t.gamez@phytec.de>
 <20140929060525.GQ4992@pengutronix.de>
 <1411995011.12138.8.camel@lws-gamez.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411995011.12138.8.camel@lws-gamez.phytec.de>
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
Subject: Re: [PATCHv2] commands: add of_display_timings
To: Teresa Gamez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 29, 2014 at 02:50:11PM +0200, Teresa Gamez wrote:
> Hello Sascha,
> =

> Am Montag, den 29.09.2014, 08:05 +0200 schrieb Sascha Hauer:
> > On Fri, Sep 26, 2014 at 01:22:31PM +0200, Teresa G=E1mez wrote:
> > > A lot of boards use display-timings nodes to define the timings of on=
e or more
> > > displays. This command makes it possible to list and select displays =
which are
> > > defined in a device tree.
> > > =

> > > Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> > > ---
> > > Changes v2:
> > > - removed cast
> > > - added free(ftd)
> > > - freed root
> > > =

> =

> ...
> > > +
> > > +static int do_of_display_timings(int argc, char *argv[])
> > > +{
> > > +	int opt;
> > > +	int list =3D 0;
> > > +	int selected =3D 0;
> > > +	int ret =3D 0;
> > > +	struct device_node *root =3D NULL;
> > > +	struct device_node *internal_root =3D NULL;
> > > +	struct device_node *display =3D NULL;
> > > +	struct device_node *timings =3D NULL;
> > > +	char *timingpath =3D NULL;
> > > +	char *dtbfile =3D NULL;
> > > +
> > > +	while ((opt =3D getopt(argc, argv, "sS:lf:")) > 0) {
> > > +		switch (opt) {
> > > +		case 'l':
> > > +			list =3D 1;
> > > +			break;
> > > +		case 'f':
> > > +			dtbfile =3D optarg;
> > > +			break;
> > > +		case 's':
> > > +			selected =3D 1;
> > > +			break;
> > > +		case 'S':
> > > +			timingpath =3D xzalloc(strlen(optarg) + 1);
> > > +			strcpy(timingpath, optarg);
> > > +			break;
> > =

> > You're right, there's no place to free this string.
> > =

> > BTW we have xstrdup for duplicating strings.
> > =

> > =

> > > +		/*
> > > +		 * We set the external node to our internal node as
> > > +		 * long as the command runs. This makes life easier to
> > > +		 * use of tree functions. We backup the internal root node
> > > +		 * and set it back at the end.
> > > +		 */
> > > +		internal_root =3D of_get_root_node();
> > > +		of_set_root_node(NULL);
> > > +		of_set_root_node(root);
> > =

> > Since the only device tree function you are using is
> > for_each_node_by_name(), could you add a:
> > =

> > #define for_each_node_by_name_from(dn, root, name) \
> > 	for (dn =3D of_find_node_by_name(root, name); dn; \
> > 	     dn =3D of_find_node_by_name(dn, name))
> > =

> > to include/of.h and remove the temporary overwriting of the
> > internal device tree?
> =

> I'm also using of_parse_phandle() which calls of_find_node_by_phandle().
> And this is using the root_node again.
> =

> I can create *_from() functions for both of them as overwriting the root
> node is really not pretty..

Yes, I think it's better to create functions that can be passed a root
node. It's probably not the last time we need to modify an external
device tree. Overwriting the root node maybe has funny side effects in
the future.

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
