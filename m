Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpSAG-0004jZ-Vr
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 08:28:05 +0000
Date: Wed, 16 Dec 2020 09:28:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201216082803.GJ3977@pengutronix.de>
References: <20200722080956.17454-1-a.fatoum@pengutronix.de>
 <6f18c5e7-4826-276e-6860-9bd06bbbd908@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f18c5e7-4826-276e-6860-9bd06bbbd908@pengutronix.de>
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
Subject: Re: [PATCH 1/2] phy: stm32-usphyc: release resources to properly
 support EPROBE_DEFER
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Michael Grzeschik <mgr@pengutronix.de>

On Mon, Dec 14, 2020 at 06:53:08PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 22.07.20 10:09, Ahmad Fatoum wrote:
> > Driver failed to release resources on failed probe so far, leading to
> > deferred probe failing with -EBUSY. Fix this.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> As we still have EPROBE_DEFER, it would be nice if this could
> be merged.

Just did that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
