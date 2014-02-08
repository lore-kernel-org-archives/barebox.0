Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WC3kC-0001YW-TE
 for barebox@lists.infradead.org; Sat, 08 Feb 2014 08:58:38 +0000
Date: Sat, 8 Feb 2014 09:58:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140208085811.GN16215@pengutronix.de>
References: <CAO6XYUtssrWFvmFZh8CUaaDwazt8apURKnyC04Rg4aRJF74_Bw@mail.gmail.com>
 <20140207110703.GM16215@pengutronix.de>
 <CAO6XYUtcDAjq9sjORrzcJy53Ro7zdUucaSdO4i-UzoHe_R05Xw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO6XYUtcDAjq9sjORrzcJy53Ro7zdUucaSdO4i-UzoHe_R05Xw@mail.gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM [USB FIX]
To: "Michael D. Burkey" <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

Hi Michael,

On Fri, Feb 07, 2014 at 10:50:17AM -0500, Michael D. Burkey wrote:
> Sascha,
> 
> I can probably shed a bit more light on this issue actually, now that
> I understand it.
> 
> The current code you have in barebox SHOULD work with most properly
> designed equipment -- key words being "properly designed".
> 
> In the case where you have a USB device tied straight to the iMX6 (or
> whatever), then just using the PwrOn2PwrGood flag should be fine
> (which, if memory serves is hardcoded at something like 20ms for EHCI
> root hubs, I think).
> 
> Similarly, if you have a USB device being powered directly off the
> pins on a USB hub, things should be fine if you use the PwrOn2PwrGood
> flag from the hub itself.
> 
> The problem is when you have a secondary part like the 2076 MOSFET
> hanging off the power lines coming out of a USB hub -- with it
> providing the power to the actual device. It adds up to another 5-10ms
> of delay, after the PwrOn2PwrGood delay, before the power to the
> connected device is actually "good".
> 
> If the hubs in question were properly designed, they would have put an
> I2C EEPROM on the config lines for the hub and then adjusted the
> PwrOn2PwrGood delay appropriately -- i.e. they would have added the
> 10ms already, so we would be reading the correct value. The problem is
> that some of the hubs I have been looking at recently -- including the
> design that Variscite incorporated into their own iMX6 SOM -- don't
> bother to add an EEPROM, so problems like this show up. I'm betting
> other designs out there may suffer from the same problem (i.e. the
> designers didn't really understand that a config EE for the hub was
> needed and tried to save money by leaving it out and just letting the
> hub use it's built-in default values).
> 
> In typical use cases under Linux, the problem doesn't really show up
> that often because the hub is initialized at boot up and the the
> device probing typically happens a bit later (which would also explain
> why I see comments online about devices hotplugged later working, but
> not working when they were plugged in initially during boot).
> 
> So, I guess the question is whether it is worth adding 10ms to the hub
> probe ALL the time, or simply adding a quirk for some boards like the
> Variscite SOM. However, it would be almost impossible to add quirk for
> the case of external powered USB hubs that show this behavior though
> -- because, typically, the ones that have the problem will be the ones
> that don't have config EEPROMS on them, so they won't have any unique
> ID information stored either.

USB is slow in probing anyway, adding another 10ms doesn't really hurt.
Let's just add them if it helps.

> 
> Don't you just love having to work around problems caused by the
> hardware designers trying to pinch pennies?

Yes, that's really great ;) I didn't know USB hubs need EEPROMS aswell.
I only know this problem with network controllers for which you have to
make up a MAC address because the designers saved some money. And yes,
USB serial dongles have this aswell. Without EEPROMs they don't have
serial numbers to uniquely iddentify them.

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
