Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0ihV-0002hY-UR
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 08:11:55 +0000
Date: Mon, 4 Mar 2019 09:11:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190304081151.y6ulieh6tzubicro@pengutronix.de>
References: <AM0PR08MB38426E671D56BFE16ACA65C1EB770@AM0PR08MB3842.eurprd08.prod.outlook.com>
 <3429d555-f746-f248-af2f-7e41022cf055@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3429d555-f746-f248-af2f-7e41022cf055@rempel-privat.de>
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
Subject: Re: Loading Barebox to RAM
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: Patrick Schneider <patrick.schneider@bhtronik.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sat, Mar 02, 2019 at 03:36:51PM +0100, Oleksij Rempel wrote:
> Hi,
> 
> Am 02.03.19 um 13:49 schrieb Patrick Schneider:
> > Hey guys,
> > I have a question about a way of "emergency flashing" the device.
> > So I have a fully operational linux system with barebox as bootloader. In production environment I have no access to the serial console but I have a USB OTG port.
> > For security reasons I don't want USB active in my "normal" barebox environment, so it's off by config.
> > For support, to gain access to a barebox and bootloader functionality is there a way to load another barebox (with usb active) from linux userspace into RAM and start/reboot into that?
> > Have a nice weekend!
> 
> Let me rephrase: you disabled every thing in a bootloader which can be
> accessed only locally and provided functional to nuke complete system
> from linux which can be accessed locally and remotely?
> I assume, it would make sense to review the thread model of this project.
> 
> Any way. "is it possible to run barebox from linux", the answer would
> be: theoretically it should be possible to do it from kexec. I never
> tried it before.

I tried it on ARM and it used to work. Of course you need a barebox that
doesn't try to bringup the SDRAM you are currently running at, but most
code in barebox tests the PC being outside SDRAM before setting it up.

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
