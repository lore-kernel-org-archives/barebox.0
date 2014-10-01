Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZDAP-00041g-Qr
 for barebox@lists.infradead.org; Wed, 01 Oct 2014 06:13:38 +0000
Date: Wed, 1 Oct 2014 08:13:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141001061315.GA4992@pengutronix.de>
References: <1412075730-5946-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1412075730-5946-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCHv3 1/5] of: base: Add for_each_node_by_name_from
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 30, 2014 at 01:15:26PM +0200, Teresa G=E1mez wrote:
> Added for_each_node_by_name_from() to be able to
> pass external root node.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied all, thanks

Sascha

> ---
>  include/of.h | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/include/of.h b/include/of.h
> index e6993fd..cd2bfe0 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -568,6 +568,9 @@ static inline struct device_d *of_find_device_by_node=
(struct device_node *np)
>  #define for_each_node_by_name(dn, name) \
>  	for (dn =3D of_find_node_by_name(NULL, name); dn; \
>  	     dn =3D of_find_node_by_name(dn, name))
> +#define for_each_node_by_name_from(dn, root, name) \
> +	for (dn =3D of_find_node_by_name(root, name); dn; \
> +	     dn =3D of_find_node_by_name(dn, name))
>  #define for_each_compatible_node(dn, type, compatible) \
>  	for (dn =3D of_find_compatible_node(NULL, type, compatible); dn; \
>  	     dn =3D of_find_compatible_node(dn, type, compatible))
> -- =

> 1.9.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
