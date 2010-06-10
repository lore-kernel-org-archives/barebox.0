Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMgmS-0001uX-3k
	for barebox@lists.infradead.org; Thu, 10 Jun 2010 12:22:45 +0000
Date: Thu, 10 Jun 2010 14:22:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100610122242.GP20799@pengutronix.de>
References: <L3OROK$8E14E73C17D97B7C877E590EED33976C@aruba.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <L3OROK$8E14E73C17D97B7C877E590EED33976C@aruba.it>
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
Subject: Re: OMAP 3530 arch_shutdown "undefined instruction"
To: Luca Ceresoli <list@lucaceresoli.net>
Cc: barebox@lists.infradead.org

On Tue, Jun 08, 2010 at 10:02:44AM +0200, Luca Ceresoli wrote:
> Orjan Friberg wrote:> On 2010-05-27 11:31, Sascha Hauer wrote:
> > > Seems this does not work on Cortex Processors. Can you try replacing
> > > this with the following please:
> > >
> > > 	asm volatile (
> > > 		"bl __mmu_cache_flush;"
> > > 		"bl __mmu_cache_off;"
> > > 		:
> > > 		:
> > > 		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
> > > 	);
> > 
> > Thanks, this seems to work fine (in the sense that I can load and run a 
> > second stage bootloader; I haven't tried verifying what happens with the 
> > I and D cache).
> 
> Works for me as well.
> Is it going to be committed?

Ok, done.

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
