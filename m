Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6w4M-0006fq-2D
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 07:55:18 +0000
Date: Thu, 10 Dec 2015 08:54:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151210075456.GD11966@pengutronix.de>
References: <1449590302.3118.20.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449590302.3118.20.camel@pengutronix.de>
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
Subject: Re: Messed up commit in master
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 08, 2015 at 04:58:22PM +0100, Lucas Stach wrote:
> Hi Sascha,
> 
> I've just stumbled across a messed up commit that landed in barebox
> master. It seems you squashed other unrelated commits into commit
> e7a8519963fcb235a123dfe5e7dd59d6fb2eaf9e (ARM: mx6sx-sabresdb: set
> proper hostname).
> 
> I know its against the master stability rules, but I think it would be
> justified to split this commit properly and re-push a fixed master.

I messed it up, but unfortunately we have to live with it. I won't
rebase master. In the end nothing bad has happened, only that one commit
has the wrong commit message.

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
