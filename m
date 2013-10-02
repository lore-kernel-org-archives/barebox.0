Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRSMu-00050C-EA
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 19:45:57 +0000
Message-ID: <1380743134.7042.4.camel@polaris.local>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 02 Oct 2013 21:45:34 +0200
In-Reply-To: <20130930081642.GA30088@pengutronix.de>
References: <1380195624-22891-1-git-send-email-j.weitzel@phytec.de>
 <20130930081642.GA30088@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] i2c-omap: Update driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 2013-09-30 at 10:16 +0200, Sascha Hauer wrote: 
> On Thu, Sep 26, 2013 at 01:40:24PM +0200, Jan Weitzel wrote:
> > The driver didn't work well with at24 driver. NACKS are lost.
> > Errors are lost in isr due to the local variable err. Also we didn't wait for
> > bus free in omap_i2c_xfer_msg.
> > 
> > Fix issues and get other improvements from linux kernel
> > 
> > Tested on OMAP4 and AM335x
> > 
> > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> 
> Applied, thanks

When booting my BeagleBone with this, I see:
i2c-omap i2c-am33xx0: bus 0 rev84148224.11 at 100 kHz

The revision entry looks strange, but the at24 EEPROM continues to be
accessible. I've not yet looked at it in detail. Jan, do you have an
idea?

Regards,
Jan


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
