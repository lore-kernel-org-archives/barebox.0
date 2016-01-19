Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aLZ5c-0007gr-NV
 for barebox@lists.infradead.org; Tue, 19 Jan 2016 16:25:05 +0000
Date: Tue, 19 Jan 2016 17:24:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160119162441.GK13058@pengutronix.de>
References: <1453112360-25670-1-git-send-email-l.stach@pengutronix.de>
 <20160119075302.GI13058@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160119075302.GI13058@pengutronix.de>
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
Subject: Re: [PATCH] ARM: PXA: move HAVE_CLK select
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 19, 2016 at 08:53:02AM +0100, Sascha Hauer wrote:
> On Mon, Jan 18, 2016 at 11:19:20AM +0100, Lucas Stach wrote:
> > Claiming that all of PXA has CLK implemented, while only PXA3XX
> > selects the relevant clock implementations causes lots of build
> > failures for the other PXA architectures.
> 
> I can't see any build failures here. which config/branch are you using?

Ok, Lucas told me: HAVE_CLK makes other code selectable which depends on
clk_* functions which are not available.

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
