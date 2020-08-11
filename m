Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5Qcx-0007v8-JG
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 09:31:29 +0000
Date: Tue, 11 Aug 2020 11:31:25 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20200811093125.5dk47sjabozf764x@tellis.lin.mbt.kalray.eu>
References: <20200721120600.15114-1-jmaselbas@kalray.eu>
 <20200721120600.15114-15-jmaselbas@kalray.eu>
 <20200810203412.GD9475@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200810203412.GD9475@pengutronix.de>
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
Subject: Re: [PATCH v3 14/14] usb: dwc2: Add ulpi phy function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 10, 2020 at 10:34:12PM +0200, Sascha Hauer wrote:
> On Tue, Jul 21, 2020 at 02:06:00PM +0200, Jules Maselbas wrote:
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> >  drivers/usb/dwc2/core.c | 33 +++++++++++++++++++++++++++++++++
> >  drivers/usb/dwc2/dwc2.h |  3 +++
> >  2 files changed, 36 insertions(+)
> 
> The functions introduced in this patch are unused, it seems there are
> bits missing for full ULPI support. Can we delay this patch until we
> have users of these functions?
Yes sure we can delay this patch.

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
