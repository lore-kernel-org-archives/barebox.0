Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5sMI-0000fh-7N
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 09:45:26 +0000
Date: Mon, 7 Dec 2015 10:45:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151207094504.GD11966@pengutronix.de>
References: <1449257064.26955.20.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449257064.26955.20.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] ARM: Remove do_execute and thumb2_execute
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Fri, Dec 04, 2015 at 07:24:19PM +0000, Trent Piepho wrote:
> In commit 104a6a7ccfb7928ca5dc28c8cbe0ea231ffc45ee support was added
> for Thumb2.  It added do_execute() as a way to provide arch dependent
> calling veneers for use in "go" and thumb2_execute() as the thumb2 to
> arm veneer.
> 
> But thumb2_execute() isn't necessary as gcc generates a proper calling
> sequence from a standard function pointer call.  Thumb2 barebox is
> compiled with the AAPCS ABI which requires this.
> 
> It also had a bug and didn't pass the arguments properly, but code
> execute via "go" rarely uses arguments so this wasn't very noticeable.
> 
> Since thumb2 was always the only user of do_execute(), go ahead and
> delete that too.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>

Applied, thanks

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
