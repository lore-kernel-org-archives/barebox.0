Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTpGp-0006Fs-Dc
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 07:32:56 +0000
Date: Thu, 1 Nov 2012 08:32:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121101073251.GS1641@pengutronix.de>
References: <1351613312-4506-1-git-send-email-shc_work@mail.ru>
 <20121031213608.GR1641@pengutronix.de>
 <20121101092038.0b71630228ecac770b8b1128@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121101092038.0b71630228ecac770b8b1128@mail.ru>
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
Subject: Re: [PATCH v3 1/3] ARM: Add CLPS711X architecture
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Nov 01, 2012 at 09:20:38AM +0400, Alexander Shiyan wrote:
> On Wed, 31 Oct 2012 22:36:08 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> ...
> > > +
> > > +	asm("mov pc, #0");
> > 
> > Or is it because you do not have a real reset function and have to jump
> > through zero instead? Still common_reset() shouldn't be necessary. What
> Yes.
> > you may have to do here is to make sure the MMU is disabled and caches
> > are flushed.
> Yes. This call was be added for do it.
> I may replace entrie function by calling start(). Is it a better way()?

arch_shutdown() should do it.

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
