Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STs31-0008EK-Ic
 for barebox@lists.infradead.org; Mon, 14 May 2012 09:58:36 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 14 May 2012 11:57:29 +0200
References: <20120513090917.GX27341@pengutronix.de>
 <201205141104.22094.jbe@pengutronix.de> <4FB0D058.3070206@gmail.com>
In-Reply-To: <4FB0D058.3070206@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205141157.29518.jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/9] Minimal S5PV210 + Tiny210 support (2nd stage only)
To: barebox <barebox@lists.infradead.org>
Cc: Alexey Galakhov <agalakhov@gmail.com>

Hi Alexey,

please keep the mailing list at least on CC.

Alexey Galakhov wrote:
> > It would be all right if you had introduce the basic support first and it
> > is now part of the repository. And *then* add the native boot support as
> > a really second step and separate patch series.
>
> The iROM support should be separated anyway. The reason is, iROM is only
> a temporary solution until we have a working replacement. This patch is
> designed to be easily reverted separately as soon as we'll able to boot
> without it.
>
> Using iROM to boot is generally a bad idea, but there's no alternative
> right now.

For you there might be no alternative right now. But for Barebox its all right 
if only a basic support for this new CPU is available.

> I think the correct patch series should look like that:
>
> * make some space for everything (not introducing anything new, to be
>   able to use git bisect if things do break)
> * add support of the new architecture to the existing code
> * add support for specific PLL
> * add support for specific DRAM
> * add support for iROM

Skip the iROM entirely in your patch series if you want to remove it later on. 
What sense would it make to include it and then remove it again?

> * finally, add new board.

Yes. This step makes use of all the steps above (but not the iROM).

> The point is, if one reverts these patches one by one from the end, the
> rest will be usable.

There is almost _never_ a reason to revert a complete patch. If an older patch 
has introduced a regression then there will be a new patch that fixes it and 
explains why and how to fix.

> However, there's one bad thing: it's better to add at least one board to
> Kconfig with the new arch.

?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
