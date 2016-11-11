Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c59qL-00045I-4C
 for barebox@lists.infradead.org; Fri, 11 Nov 2016 11:18:02 +0000
Date: Fri, 11 Nov 2016 12:17:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161111111736.nirnpr462x7uej3a@pengutronix.de>
References: <20161111092941.44lmfsowkldkbhis@pengutronix.de>
 <46139469-bb50-505d-4486-2336f8bf6b3e@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46139469-bb50-505d-4486-2336f8bf6b3e@mev.co.uk>
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
Subject: Re: v2016.11.0
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Fri, Nov 11, 2016 at 11:07:27AM +0000, Ian Abbott wrote:
> On 11/11/16 09:29, Sascha Hauer wrote:
> > Hi All,
> > 
> > We have a November Release.
> > 
> > This is the first release which contains bootchooser, a framework which
> > simplifies and generalizes redundant boot scenarios.
> > Other than that we can now rename UBI volumes. Also there are improvemts
> > in running the UBI background thread which finally means that barebox
> > can write a fastmap on freshly formatted UBI devices. Previously barebox
> > was often not able to find an anchor PEB for the fastmap.
> > Another change worth noting is that the decision if defenv-1 or defenv-2
> > should be used can now be selected in Kconfig. It is no longer a board
> > decision.
> > As usual several fixes went in all over the place.
> > 
> > Sascha
> 
> Thanks!  I am wondering about the git repository - the "v2016.11.0" tag
> exists, but seems to be 6 commits above the top of the "master" branch.

Gnagna, I screwed it up. I made the v2016.11.0 tag while my for-next/mtd
was checked out.
It seems last mtd patches took the fast lane and went into the November
release while they should be in the December release. So the following
went in early:

f160f86 of: of_find_path: Add support for new partition binding
1f2f980 of: partitions: Support new binding
1c7cf80 mtd: spi-nor: add MX25U2033E
7159d9d mtd: nand: nand_mxs: Fix readtotal calculation
0d68468 mtd: Make UBI detection more robust

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
