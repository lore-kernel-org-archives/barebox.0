Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WerjT-0001NU-9h
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 20:00:56 +0000
Date: Mon, 28 Apr 2014 22:00:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140428200030.GY5858@pengutronix.de>
References: <1398673121-6075-1-git-send-email-s.hauer@pengutronix.de>
 <1398673121-6075-2-git-send-email-s.hauer@pengutronix.de>
 <20140428163015.GB19883@omega>
 <20140428184702.GW5858@pengutronix.de>
 <20140428185119.GA11686@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140428185119.GA11686@omega>
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
Subject: Re: [PATCH 1/2] Add initial regulator support
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 28, 2014 at 08:51:21PM +0200, Alexander Aring wrote:
> Hi,
> 
> On Mon, Apr 28, 2014 at 08:47:02PM +0200, Sascha Hauer wrote:
> > 
> > I think both functions should return 0 without a valid gpio instead.
> > Anyway, there's something wrong here.
> > 
> 
> maybe checking on this at probe time, at the beginning or can this gpio
> changed at runtime?
> 
> Maybe you don't need this here because probe will already failed with a
> invalid gpio.

No, the gpio is optional. Getting a fixed regulator without software
control is one usecase of the driver, just like in the kernel.

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
