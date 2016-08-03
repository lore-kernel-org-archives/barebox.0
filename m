Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bUp1u-0001Ge-8W
 for barebox@lists.infradead.org; Wed, 03 Aug 2016 05:47:46 +0000
Date: Wed, 3 Aug 2016 07:47:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160803054721.GJ20657@pengutronix.de>
References: <1469024265-20098-1-git-send-email-w.egorov@phytec.de>
 <1469024265-20098-2-git-send-email-w.egorov@phytec.de>
 <CAHQ1cqF9vATXHQRTo=kX+2W3EEb0mzSJXRp=LOHWFaNZfi1zOg@mail.gmail.com>
 <5799F2BB.2020205@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5799F2BB.2020205@phytec.de>
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
Subject: Re: [PATCH 2/8] ARM: rockchip: Add timer driver
To: Wadim Egorov <w.egorov@phytec.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jul 28, 2016 at 01:55:39PM +0200, Wadim Egorov wrote:
> 
> 
> On 20.07.2016 19:35, Andrey Smirnov wrote:
> > On Wed, Jul 20, 2016 at 7:17 AM, Wadim Egorov <w.egorov@phytec.de> wrote:
> >> This driver comes from the u-boot (v2016.01).
> > I'd suggest this to be moved to "drivers/clocksource" and converted to
> > a proper driver that binds against DT node and doesn't use a CONFIG_*
> > symbol to determine its base address.
> 
> I want to use this driver in the SPL part later. The SRAM we can use is
> very limited on the RK3288. So I don't want to add more DT code here.

Do we need a full barebox as SPL? This usually means we have to build
barebox twice which is not very convenient. Can we instead build the SPL
code into the barebox PBL? This is what I have done for i.MX.

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
