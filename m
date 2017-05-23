Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dD4lV-00042K-Qb
 for barebox@lists.infradead.org; Tue, 23 May 2017 08:02:03 +0000
Date: Tue, 23 May 2017 10:01:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170523080139.t3b2nejyotlo2g55@pengutronix.de>
References: <af0065c8-141d-dce0-11bf-1aca9c46d73c@emlix.com>
 <20170503121324.qguy2tsch7gepob7@pengutronix.de>
 <9d5f2e1b-c065-8969-14fb-3cf309b580d9@emlix.com>
 <20170508121857.zyag2yras6ljip5q@pengutronix.de>
 <7fd95ee0-b053-5935-0938-b17ed5572197@emlix.com>
 <506afeb0-7434-b040-2943-4d304f47b6b8@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <506afeb0-7434-b040-2943-4d304f47b6b8@emlix.com>
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
Subject: Re: barebox-state setup
To: Andreas Wilhelm <andreas.wilhelm@emlix.com>
Cc: barebox@lists.infradead.org

Hi Andreas,

On Mon, May 22, 2017 at 02:47:18PM +0200, Andreas Wilhelm wrote:
> 
> > First of all, what storage device are you using? Is it a real flash or
> > some EEPROM or NVRAM?
> 
> we are using an SPI NOR flash Micron N25Q128A13ESE40F. Are there any
> known issues with this kind of chips? And what could cause such
> behavior as shown above?

No, there is no known issue. I just wanted to know because real flashes
use the circular backend while EEPROMs use the direct backend.

I just posted a state example dtsi file which works on a Phytec phyFLEX
i.MX6 board. This also contains a SPI NOR flash and I just verified this
works fine on current master with dt-utils 2017.03.0. Maybe you could
compare this with your current setup and see if you find any
differences.

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
