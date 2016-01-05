Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGMO4-0001gG-7D
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 07:50:36 +0000
Date: Tue, 5 Jan 2016 08:50:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160105075014.GN13058@pengutronix.de>
References: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
 <20160104083257.GA13058@pengutronix.de>
 <1451934159.26955.276.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1451934159.26955.276.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 2/2] OF: Fix fixups to fix Linux DT instead of Barebox DT
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Jan 04, 2016 at 07:02:34PM +0000, Trent Piepho wrote:
> OF fixups cm_cogent_fixup() and hb_fixup() are supposed to modify the
> Linux device tree.  And they did originally, but commit
> e520a8cc463760d21890b35218e4dac817e7c7e7 changed them to use
> for_each_compatible_node(), which iterates through the Barebox DT.
> Use new for_each_compatible_node_from() to specify the Linux DT root
> as the start point.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  arch/arm/boards/at91sam9x5ek/hw_version.c | 2 +-
>  arch/arm/boards/highbank/init.c           | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

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
