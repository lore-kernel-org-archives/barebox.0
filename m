Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6b8U-00057o-Cl
 for barebox@lists.infradead.org; Fri, 05 May 2017 11:11:00 +0000
Date: Fri, 5 May 2017 13:10:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170505111035.lci4sn6x4u7dfzsj@pengutronix.de>
References: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
 <1452699456-1025-8-git-send-email-s.hauer@pengutronix.de>
 <20170505130520.390b624caa1617fe7153e642@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170505130520.390b624caa1617fe7153e642@gmail.com>
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
Subject: Re: [PATCH 07/15] input: Add input core
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, May 05, 2017 at 01:05:20PM +0300, Antony Pavlov wrote:
> On Wed, 13 Jan 2016 16:37:28 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> Hi Sascha!
> 
> > Currently all input driver register themselves as consoles. Consoles are
> > fine for typing text, but they do not allow to ask for the current
> > pressed state of buttons or keypads. They also do not support non
> > printable keys like the function keys.
> > 
> > This patch adds a simple input core. On the driver side it supports
> > input_report_key_event() to report events (button presses and releases).
> > On the consumer side it allows getting the current button status via
> > input_key_get_status(). Also an event driven interface is available
> 
> It looks like there is no input_key_get_status() user in barebox-v2017.05.0 ...

Indeed not. This interface is for boards which want to check for certain
buttons for alternative boot modes. No board in mainline currently does
this.

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
