Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Fzi-0006Di-8f
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:04:39 +0000
Date: Tue, 3 Apr 2018 09:04:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180403070427.terivivcpl2abuuf@pengutronix.de>
References: <20180326130915.8726-1-andrew.smirnov@gmail.com>
 <20180326130915.8726-4-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180326130915.8726-4-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/3] serial: Check result of console_unregister()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 26, 2018 at 06:09:15AM -0700, Andrey Smirnov wrote:
> In order to allow 'serdev' devices to prevent parent console device
> removal and correspondign memory deallocation add code to all serial
> driver to check result of console_unregister() and bail out early if
> it is unsuccessful.
> 
> One example of a use-case for this would be a reset handler relying on
> a serdev device for transport. Without this patch underlying console
> device would be removed and de-allocated before reset handler is even
> run thus leading to unpredictable behaviour and crashes.

Can't we make this sure at driver core level? So if a device decides not
to return -EBUSY in the remove callback then the parent devices won't be
removed?

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
