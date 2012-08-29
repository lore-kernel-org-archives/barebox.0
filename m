Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6iIT-0005Ni-9e
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 13:27:06 +0000
Date: Wed, 29 Aug 2012 15:27:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120829132702.GB26594@pengutronix.de>
References: <503CC976.6090006@webware-experts.de>
 <20120829062913.GL26594@pengutronix.de>
 <503E1591.8090904@webware-experts.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <503E1591.8090904@webware-experts.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: What is TEXT_BASE?
To: Norbert Roos <nroos@webware-experts.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2012 at 03:13:53PM +0200, Norbert Roos wrote:
> Hello,
> 
> On 08/29/2012 08:29 AM, Sascha Hauer wrote:
> 
> >TEXT_BASE is the address barebox will be linked at. Normally this is
> >somewhere near the end of SDRAM, but could be also in some internal SRAM
> >in special cases. If you use the pcm049_defconfig it should be
> >configured correctly already.
> 
> Ok, thanks, i didn't know there are those configs.
> 
> Now it's building and produces some files. Is there somewhere an
> explanation what the files are and what i should do with them in the
> next step? In my case with an OMAP based board? I would have
> expected at least the "MLO" file, but there are just the barebox
> files..

For OMAP boards there are two defconfigs, one for the MLO (or xloader)
and one regular barebox binary. See
http://wiki.barebox.org/doku.php?id=boards:omap

(I just saw it's a bit outdated, because the file generated for the
xloader is nowadays MLO, not barebox.bin.ift.

So you have to:

make pcm049_xload_defconfig
make
cp MLO /mnt/MLO
make pcm049_defconfig
cp barebox.bin /mnt/barebox.bin

> 
> I don't intend to get personal teaching lessons here, but the whole
> documentation is somehow - suboptimal. I am writing down the steps
> i'm doing, so in return i could add a howto or tutorial or something
> like that.

That would be great. I could give you an account for the wiki if you
have something to improve there.

Thanks
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
