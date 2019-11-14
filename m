Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGEq-000689-Am
 for barebox@lists.infradead.org; Thu, 14 Nov 2019 14:36:49 +0000
Date: Thu, 14 Nov 2019 15:36:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191114143644.j5zuqrxvi4di22k5@pengutronix.de>
References: <20191114130021.1029-1-s.hauer@pengutronix.de>
 <20191114130021.1029-2-s.hauer@pengutronix.de>
 <668381f9-a1da-9cd3-ce4f-17cbd918c4ac@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <668381f9-a1da-9cd3-ce4f-17cbd918c4ac@pengutronix.de>
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
Subject: Re: [PATCH 1/6] net: fsl-fman: reset device before leaving
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 14, 2019 at 02:23:44PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 11/14/19 2:00 PM, Sascha Hauer wrote:
> > edev->halt is implemented, but not called by the core during shutdown.
> 
> Oh, that's news to me. Apparently only eth_unregister calls ->halt and that
> one is only used by drivers. Shouldn't calling eth_unregister be a part of
> the barebox shutdown sequence?
> 

I had the same thought as well and have put it on my mental todo list.
It would be easy to put calling of edev->halt() somewhere in the
shutdown path, but this would result in edev->halt() being called twice
for drivers which already do this in their own remove function. I'm not
sure every driver handles this fine so we probably have to make sure it
is called only once.

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
