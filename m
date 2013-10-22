Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYc6N-0003DQ-KK
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 13:34:28 +0000
Date: Tue, 22 Oct 2013 15:34:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131022133405.GM30088@pengutronix.de>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
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
Subject: Re: [PATCH 00/10] RPi mailbox support
To: Andre Heider <a.heider@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 19, 2013 at 02:18:41PM +0200, Andre Heider wrote:
> This adds a bcm2835 mailbox driver for the RPi to talk to the on-SoC
> VideoCore. See [1] for a description.
> 
> This patchset uses it to get two properties, the eMMC clock and the
> memory size.
> 
> The RPi backend needs to use this driver early on, namely before the
> MMU setup. We also want to use the driver in the future after the MMU setup,
> like setting up simplefb for the kernel. Patch 1 and 2 lay the groundwork
> for that.
> 
> The mailbox driver also needs to handle timouts, so patch 5 and 6 are
> making the clocksource accessible earlier.
> 
> Patch 7 is the driver itself, providing a helper macro for users based on
> a new common macro from patch 3.
> 
> Patch 8 and 9 switch the bc2835_mci driver from a local mailbox
> implementation to the new driver.
> 
> Patch 10 uses the driver to get the proper memory size.
> 
> Patch 4 is just a cleanup.

Applied, thanks. I'll probably have a closer look at the caching bits
later, but looks good for now.

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
