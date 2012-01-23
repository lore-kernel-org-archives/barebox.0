Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpFZl-0000ok-Bd
 for barebox@lists.infradead.org; Mon, 23 Jan 2012 08:48:30 +0000
Date: Mon, 23 Jan 2012 09:48:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120123084821.GI5446@pengutronix.de>
References: <4F18328E.9080404@pengutronix.de>
 <1327090644-17469-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1327090644-17469-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH V3] usb/gadget: fix poller NPE in early polling
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Fri, Jan 20, 2012 at 09:17:24PM +0100, Robert Jarzmik wrote:
> The timings of the poller calling have changed, digging out
> a latent bug in pxa27x udc controller.
> The polling routine is called before the probe function is
> called, and the driver internal are not initialized at that
> time. This triggers a NULL pointer exception.
> 
> Fix it by moving poller registration after driver probe.

Please specifiy for which branch this is targeted next time. I was
about to apply it for next until I realized that this breakage is
already in master.

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
