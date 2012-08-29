Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6bm8-00022K-Ge
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 06:29:17 +0000
Date: Wed, 29 Aug 2012 08:29:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120829062913.GL26594@pengutronix.de>
References: <503CC976.6090006@webware-experts.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <503CC976.6090006@webware-experts.de>
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

Hi Norbert,

On Tue, Aug 28, 2012 at 03:36:54PM +0200, Norbert Roos wrote:
> Hello,
> 
> I'm just trying to build barebox for the first time, for processor
> OMAP4 and board Phytec phycore pcm049.
> 
> Now i have to enter something for "TEXT_BASE", what should i select?
> 
> And in general, are there some important settings beside selecting
> the processor and board, or are the default values good for the
> first try?

TEXT_BASE is the address barebox will be linked at. Normally this is
somewhere near the end of SDRAM, but could be also in some internal SRAM
in special cases. If you use the pcm049_defconfig it should be
configured correctly already.

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
