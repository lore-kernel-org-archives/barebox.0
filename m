Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwQi-0006Dd-8U
 for barebox@lists.infradead.org; Tue, 05 Nov 2019 10:51:21 +0000
Date: Tue, 5 Nov 2019 11:51:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191105105118.ni4vs57wc5hu4d63@pengutronix.de>
References: <20191104221407.14791-1-a.fatoum@pengutronix.de>
 <20191104221407.14791-2-a.fatoum@pengutronix.de>
 <20191105104008.qrivs4orphopplzz@pengutronix.de>
 <9c68dcf1-5033-efa5-66b5-50679f1ca6b0@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c68dcf1-5033-efa5-66b5-50679f1ca6b0@pengutronix.de>
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
Subject: Re: [PATCH v2 2/4] watchdog: implement generic support for .running
 device parameter
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 05, 2019 at 11:46:18AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 11/5/19 11:40 AM, Sascha Hauer wrote:
> > Hi Ahmad,
> > 
> > On Mon, Nov 04, 2019 at 11:14:05PM +0100, Ahmad Fatoum wrote:
> >> Linux watchdog have an optional WDOG_HW_RUNNING bit that is used in
> >> conjunction with CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED to automatically
> >> ping running watchdogs until userspace takes over.
> >>
> >> So far, when we ported Linux drivers, we dropped this detection, but it
> >> would be useful to have this information in barebox as well:
> >>
> >> The American Megatrends BIOS I am using allows configuring the hardware
> >> watchdog from the BIOS. barebox enables the WDT as well, so in normal
> >> operation we would never notice if after a BIOS update, the watchdog is
> >> no longer enabled. If we maintain a running parameter on watchdog
> >> devices, board code can be written to check whether the watchdog device
> >> is indeed running.
> > 
> > To write such code I would prefer to have a function which returns the
> > running status rather than playing with getenv().
> 
> Ye, board code can use watchdog_hw_running added in this patch.
> Hush scripts can use the device parameter. I'll amend the commit message.

You are right, I missed watchdog_hw_running() in your patch.

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
