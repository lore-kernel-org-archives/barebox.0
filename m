Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMa8k-0006jS-44
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 07:58:39 +0000
Date: Fri, 12 Oct 2012 09:58:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121012075835.GG27665@pengutronix.de>
References: <1349940335-20960-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349940335-20960-1-git-send-email-t.gamez@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM OMAP: Create device file
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Thu, Oct 11, 2012 at 09:25:34AM +0200, Teresa G=E1mez wrote:
> Created wrapper to add omap devices.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
> +
> +struct device_d *omap_add_mmc(resource_size_t base, void *pdata)
> +{
> +	return omap_add_device("omap-hsmmc", base, SZ_4K, pdata);
> +}

Nice work. As Jean Christophe already mentioned, it would be nice to
skip the base address. That would mean to have a omap_add_mmc() function
like above in an omap generic place and then:

static inline struct device_d omap<x>_add_mmc<y>(void *pdata)
{
	omap_add_mmc(OMAPx_MMCy_BASE, pdata);
}

in omap3/4 specific include files.

Let me know if you want to work on this, otherwise I'm also happy to
apply this one as it's already a step forward.

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
