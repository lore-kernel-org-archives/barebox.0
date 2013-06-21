Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upu55-0008WN-9Q
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 05:40:19 +0000
Date: Fri, 21 Jun 2013 07:39:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130621053956.GX32299@pengutronix.de>
References: <1371732630-27966-1-git-send-email-t.gamez@phytec.de>
 <1371732630-27966-3-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371732630-27966-3-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH 2/3] ARM: AM33xx: Add i2c support for AM33xx
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Thu, Jun 20, 2013 at 02:50:29PM +0200, Teresa G=E1mez wrote:
>  static void omap_i2c_unidle(struct omap_i2c_struct *i2c_omap)
>  {
> -	if (cpu_is_omap34xx()) {
> +	if (cpu_is_omap34xx() || cpu_is_am33xx()) {

Applied for now, but please consider converting this driver to use
id_table and a sane set of driver data. All these cpu_is_* do not scale
anymore for this driver.

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
