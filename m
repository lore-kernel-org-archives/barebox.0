Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPR58-0000iP-QG
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 06:31:31 +0000
Date: Mon, 17 Mar 2014 07:31:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140317063107.GB17250@pengutronix.de>
References: <loom.20140313T212720-896@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20140313T212720-896@post.gmane.org>
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
Subject: Re: i.MX21 ADS NAND flash bad blocks scan. Barebox vs Linux
To: Cristiano De Alti <cristiano_dealti@hotmail.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 13, 2014 at 08:44:08PM +0000, Cristiano De Alti wrote:
> Hi,
>   I'm probably posting to the wrong list since this is Linux issue.
> I'm still trying to revive this old board.
> 
> This board has a 64MBi Samsung NAND flash that is detected both by Barebox
> (recent snapshot) and Linux 3.4.77.
> 
> The issue is that, while the bad blocks scan takes a negligible time on
> Barebox, it takes 10 minutes to complete on Linux.
> They both detect block 0 as a bad block. This is strange since it is
> guaranteed to be good by the manufacturer but I've read the OOB data with
> barebox and it's marked ad bad. I found this board in the lab and don't know
> how it was used before.
> 
> Barebox code, nand_imx.c, and Linux code, mxc_nand.c, are similar but not
> identical of course. I also think that Linux code was contributed by
> Pengutronix so this is the reason I'm asking here.
> 
> I've enabled debug statements in Linux code and added my own statements.
> As said, scan completes, everything looks OK but it is very slow.

I assume this is a 512 byte page Nand, right? In this case you shouldn't
have any issues with bad block marker swapping.
An issue could be that one party uses a bad block table wereas the other
scans each time. I recommend using a bad block table for barebox and the
kernel.
Maybe somebody has marked block 0 as bad to see whether the ROM Code
handles this properly.

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
