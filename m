Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZMtxB-00085n-5K
 for barebox@lists.infradead.org; Wed, 05 Aug 2015 08:21:37 +0000
Received: by lbbpo9 with SMTP id po9so20149336lbb.2
 for <barebox@lists.infradead.org>; Wed, 05 Aug 2015 01:21:15 -0700 (PDT)
Date: Wed, 5 Aug 2015 11:28:44 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150805112844.d8fc268394120c97f6e62c5c@gmail.com>
In-Reply-To: <20150805075356.GE18700@pengutronix.de>
References: <1438755034-22236-1-git-send-email-antonynpavlov@gmail.com>
 <20150805075356.GE18700@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] mtd: nand_base: replace ifdef with IS_ENABLE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 5 Aug 2015 09:53:56 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Aug 05, 2015 at 09:10:34AM +0300, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  drivers/mtd/nand/nand_base.c | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> =

> Applied, thanks

It looks like I have to recall this patch.

+       if (IS_ENABLED(CONFIG_NAND_BBT)) {
+               if (!chip->bbt)
+                       return chip->block_bad(mtd, ofs, getchip);
+
+               /* Return info from the table */
+               return nand_isbad_bbt(mtd, ofs, allowbbt);
+       }

the nand_isbad_bbt() function is defined in drivers/mtd/nand/nand_bbt.c,
but nand_bbt.c is compiled-in only if CONFIG_NAND_BBT is enabled.

My current gcc-4.9.2-based toolchain has no problem with this,
but if CONFIG_NAND_BBT is disabled I suppose rather old toolchain can throw=
 link error here.

I have to add something like this

#ifndef CONFIG_NAND_BBT

static inline nand_isbad_bbt(...) { };

#endif

to include/linux/mtd/nand.h.


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
