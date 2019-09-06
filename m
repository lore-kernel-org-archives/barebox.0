Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68gm-00014U-98
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 07:29:50 +0000
Date: Fri, 6 Sep 2019 09:29:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190906072946.bg6vlfl4fjppijaa@pengutronix.de>
References: <20190905105142.13681-1-m.tretter@pengutronix.de>
 <20190905105142.13681-3-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905105142.13681-3-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH 2/7] of: add support for devicetree overlays
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 05, 2019 at 12:51:37PM +0200, Michael Tretter wrote:
> The devicetree overlay support is based on the Linux driver for device
> tree overlays, but many features that are not required in Barebox are
> left out.
> 
> Unlike Linux, which applies the overlay to the live devicetree, Barebox
> registers a fixup for the overlay which is applied with other fixups to
> whatever tree is fixed. This is necessary to apply the overlay to
> devicetrees that are passed to Linux, which might differ from the
> devicetree that is currently live in Barebox.

Even though we usually apply the overlay as a fixup I would expect some
(exported) function to apply this overlay to that devicetree *now*.

> +	ret = of_property_read_string(fragment, "target-path", &path);
> +	if (!ret) {
> +		node = of_find_node_by_path_from(root, path);
> +		if (!node)
> +			pr_err("fragment %pOF: path '%s' not found\n",
> +			       fragment, path);
> +		return node;
> +	}
> +
> +	pr_err("fragment %pOF: no target property\n", fragment);

You use pr_* functions, so please also add a pr_fmt to give the messages
some more context.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
