Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6VTV-0006rh-8C
 for barebox@lists.infradead.org; Mon, 01 Feb 2021 09:26:26 +0000
Date: Mon, 1 Feb 2021 10:26:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20210201092623.GO19583@pengutronix.de>
References: <20210127164937.20328-1-jmaselbas@kalray.eu>
 <91ec3053-201d-ff02-0f78-6d86a6b8a0f0@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91ec3053-201d-ff02-0f78-6d86a6b8a0f0@pengutronix.de>
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
Subject: Re: [RFC PATCH] usb: gadget: dfu: Wrap fs operation in workqueue
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org

On Fri, Jan 29, 2021 at 10:51:18AM +0100, Ahmad Fatoum wrote:
> Hello Jules,
> 
> On 27.01.21 17:49, Jules Maselbas wrote:
> > File system operation shouldn't be executed in a poller. Use
> > a workqueue to delay filesystem operation to command context.
> > 
> > This is an RFC, extra work must be done to properly handle error
> > cases and dfu cleanup.
> 
> I erroneously thought the poller is within the DFU bits. I wonder what
> side-effect moving the whole USB gadget polling into a workqueue would
> have. In that case, we wouldn't need to any changes for DFU itself.

We have serial gadget support. One of the side effects likely would be
that the console no longer properly works.

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
