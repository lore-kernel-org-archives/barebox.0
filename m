Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YtBvm-0002gK-BO
 for barebox@lists.infradead.org; Fri, 15 May 2015 09:29:23 +0000
Date: Fri, 15 May 2015 11:28:58 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150515092858.GR28888@pengutronix.de>
References: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
 <1431511952-32124-6-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431511952-32124-6-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 6/7] state: add fixup to copy state from barebox to
 kernel device tree
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 13, 2015 at 12:12:31PM +0200, Marc Kleine-Budde wrote:
> This patch registers a DT fixup, that copies the state nodes from the act=
ive
> to the kernel DT. The backend reference will be a phandles.
> =

> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  common/state.c | 92 ++++++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 92 insertions(+)
> =

> diff --git a/common/state.c b/common/state.c
> index d6060bb7dff4..ca691d2827fa 100644
> --- a/common/state.c
> +++ b/common/state.c
> @@ -676,6 +676,93 @@ static int state_from_node(struct state *state, stru=
ct device_node *node,
>  	return ret;
>  }
>  =

> +static int of_state_fixup(struct device_node *root, void *ctx)
> +{
> +	struct state *state =3D ctx;
> +	const char *compatible =3D "barebox,state";
> +	struct device_node *new_node, *node, *parent, *backend_node;
> +	struct property *p;
> +	int ret;
> +	phandle phandle;
> +
> +	node =3D of_find_node_by_path_from(root, state->root->full_name);
> +	if (node) {
> +		/* replace existing node - it will be deleted later */
> +		parent =3D node->parent;
> +	} else {
> +		char *of_path, *c;
> +
> +		/* look for parent, remove last '/' from path */
> +		of_path =3D xstrdup(state->root->full_name);
> +		c =3D strrchr(of_path, '/');
> +		if (!c)
> +			return -ENODEV;
> +		*c =3D '0';
> +		parent =3D of_find_node_by_path(of_path);
> +		if (!parent)
> +			parent =3D root;
> +
> +		free(of_path);
> +	}
> +
> +	/* serialize variable definitions */
> +	new_node =3D state_to_node(state, parent, STATE_CONVERT_FIXUP);
> +	if (IS_ERR(new_node))
> +		return PTR_ERR(new_node);
> +
> +	/* compatible */
> +	p =3D of_new_property(new_node, "compatible", compatible,
> +			    strlen(compatible) + 1);
> +	if (!p) {
> +		ret =3D -ENOMEM;
> +		goto out;
> +	}
> +
> +	/* backend-type */
> +	if (!state->backend) {
> +		ret =3D -ENODEV;
> +		goto out;
> +	}
> +
> +	p =3D of_new_property(new_node, "backend-type", state->backend->name,
> +			    strlen(state->backend->name) + 1);
> +	if (!p) {
> +		ret =3D -ENOMEM;
> +		goto out;
> +	}
> +
> +	/* backend phandle */
> +	backend_node =3D of_find_node_by_path_from(root, state->backend->of_pat=
h);
> +	if (!backend_node) {
> +		ret =3D -ENODEV;
> +		goto out;
> +	}
> +
> +	phandle =3D of_node_create_phandle(backend_node);
> +	ret =3D of_property_write_u32(new_node, "backend", phandle);
> +	if (ret)
> +		goto out;
> +
> +	/* address-cells + size-cells */
> +	ret =3D of_property_write_u32(root, "#address-cells", 1);
> +	if (ret)
> +		goto out;
> +
> +	ret =3D of_property_write_u32(root, "#size-cells", 1);
> +	if (ret)
> +		goto out;
> +
> +	/* delete existing node */
> +	if (node)
> +		of_delete_node(node);
> +
> +	return 0;
> +
> + out:
> +	of_delete_node(new_node);
> +	return ret;
> +}
> +
>  /*
>   * state_new_from_node - create a new state instance from a device_node
>   *
> @@ -697,6 +784,11 @@ struct state *state_new_from_node(const char *name, =
struct device_node *node)
>  		return ERR_PTR(ret);
>  	}
>  =

> +	ret =3D of_register_fixup(of_state_fixup, state);
> +	if (ret) {
> +		state_release(state);
> +		return ERR_PTR(ret);
> +	}
This is broken. state_new_from_node is called in state_probe:

	static int state_probe(struct device_d *dev)
	{
		...
		state =3D state_new_from_node(alias, np);
		...
		ret =3D of_find_path(np, "backend", &path, 0);
		if (ret)
			return ret;
		...

So if there is an error with the backend (or something else later that
makes the state invalid) the fixup is still registered. So when the
fixup is actually called state might be invalid resulting in
of_state_fixup using possibly overwritten memory.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
