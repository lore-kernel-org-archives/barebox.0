Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqpAb-00084p-QW
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 18:37:50 +0000
Date: Sun, 23 Jun 2013 20:37:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130623183726.GK32299@pengutronix.de>
References: <1371819019-13596-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371819019-13596-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH 1/2] i2c-omap: Remove cpu_is functions completely
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 21, 2013 at 02:50:18PM +0200, Teresa G=E1mez wrote:
> This patch removes the call of the cpu_is_* functions completely
> and uses id_tables instead.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Nice, thanks ;)

Applied both and squashed into a single commit. Otherwise we don't have
i2c support after the first patch.

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
