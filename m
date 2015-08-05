Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZMuEz-0005hK-Hf
 for barebox@lists.infradead.org; Wed, 05 Aug 2015 08:40:02 +0000
Date: Wed, 5 Aug 2015 10:39:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150805083939.GF18700@pengutronix.de>
References: <1438755034-22236-1-git-send-email-antonynpavlov@gmail.com>
 <20150805075356.GE18700@pengutronix.de>
 <20150805112844.d8fc268394120c97f6e62c5c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150805112844.d8fc268394120c97f6e62c5c@gmail.com>
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
Subject: Re: [PATCH] mtd: nand_base: replace ifdef with IS_ENABLE
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 05, 2015 at 11:28:44AM +0300, Antony Pavlov wrote:
> On Wed, 5 Aug 2015 09:53:56 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Wed, Aug 05, 2015 at 09:10:34AM +0300, Antony Pavlov wrote:
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > >  drivers/mtd/nand/nand_base.c | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > 
> > Applied, thanks
> 
> It looks like I have to recall this patch.
> 
> +       if (IS_ENABLED(CONFIG_NAND_BBT)) {
> +               if (!chip->bbt)
> +                       return chip->block_bad(mtd, ofs, getchip);
> +
> +               /* Return info from the table */
> +               return nand_isbad_bbt(mtd, ofs, allowbbt);
> +       }
> 
> the nand_isbad_bbt() function is defined in drivers/mtd/nand/nand_bbt.c,
> but nand_bbt.c is compiled-in only if CONFIG_NAND_BBT is enabled.
> 
> My current gcc-4.9.2-based toolchain has no problem with this,
> but if CONFIG_NAND_BBT is disabled I suppose rather old toolchain can throw link error here.

If that throws a link error we would have tons of these problems
elsewhere. We currently heavily rely on the fact that gcc throws away
things inside if (0).

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
