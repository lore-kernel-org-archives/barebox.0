Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VSmJK-0005mp-9s
 for barebox@lists.infradead.org; Sun, 06 Oct 2013 11:15:42 +0000
Date: Sun, 6 Oct 2013 13:15:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131006111520.GN30088@pengutronix.de>
References: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: BeagleBone fixes & cleanup
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 02, 2013 at 09:30:07PM +0200, Jan Luebbe wrote:
> Hi,
> 
> I've tried the recent changes in next on both BeagleBones.
> 
> These are actual fixes:
> [PATCH 1/4] am33xx_generic: convert from switch to if/else
> [PATCH 3/4] arm: omap: am33xx_generic: fix DDR setup for DDR2
> 
> These are more 'nice to have':
> [PATCH 2/4] arm: mmu: be more verbose if ttb setup fails
> [PATCH 4/4] beaglebone: use most recent timings for white variant

I applied all for master now. Anyway, Jan, could you give the
-fno-jump-labels thingy a test? Maybe we want to switch to this later.

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
