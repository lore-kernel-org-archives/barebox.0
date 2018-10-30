Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gHQ15-0003pj-C4
 for barebox@lists.infradead.org; Tue, 30 Oct 2018 09:08:53 +0000
Date: Tue, 30 Oct 2018 10:07:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181030090748.sht2avigo5do4prd@pengutronix.de>
References: <20181028211947.GA14788@lenoch> <20181028212213.GD14788@lenoch>
 <20181029100702.GA7947@lenoch> <20181029114329.GA12977@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181029114329.GA12977@lenoch>
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
Subject: Re: [PATCH 03/16] mtd: nand: hide in-memory BBT implementation details
To: Ladislav Michl <ladis@linux-mips.org>
Cc: barebox@lists.infradead.org

On Mon, Oct 29, 2018 at 12:43:29PM +0100, Ladislav Michl wrote:
> On Mon, Oct 29, 2018 at 11:07:02AM +0100, Ladislav Michl wrote:
> > On Sun, Oct 28, 2018 at 10:22:13PM +0100, Ladislav Michl wrote:
> > > Linux commit b32843b772db adapted for Barebox:
> > 
> > Hmm, there's something fishy with markgood functions (trying different board).
> > Debugging now...
> > 
> > >   nand_base.c shouldn't have to know the implementation details of
> > >   nand_bbt's in-memory BBT. Specifically, nand_base shouldn't perform the
> > >   bit masking and shifting to isolate a BBT entry.
> > > 
> > >   Instead, just move some of the BBT code into a new nand_markbad_bbt()
> > >   interface. This interface allows external users (i.e., nand_base) to
> > >   mark a single block as bad in the BBT. Then nand_bbt will take care of
> > >   modifying the in-memory BBT and updating the flash-based BBT (if
> > >   applicable).
> 
> Two bugs spotted:
> 1) we need to select chip again after erase
> 2) Linux cares only about marking block bad in BBT while Barebox supports
>    also unmarking it. Thus we need a bit more complicated version of
>    bbt_mark_entry.
> 
> Incremental patch bellow. Please let me know if there are another issues
> with this serie, I'll squash it for v2.

I had a look over the series, but it's very hard to do a proper review
without spending a lot of time. I guess I just have to believe that
these are Linux commits and thus are good and valuable for barebox
aswell ;)

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
