Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBnhS-0006RH-7q
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 15:50:43 +0000
Received: by mail-pa0-f41.google.com with SMTP id fa1so3346963pad.28
 for <barebox@lists.infradead.org>; Fri, 07 Feb 2014 07:50:20 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20140207110703.GM16215@pengutronix.de>
References: <CAO6XYUtssrWFvmFZh8CUaaDwazt8apURKnyC04Rg4aRJF74_Bw@mail.gmail.com>
 <20140207110703.GM16215@pengutronix.de>
Date: Fri, 7 Feb 2014 10:50:17 -0500
Message-ID: <CAO6XYUtcDAjq9sjORrzcJy53Ro7zdUucaSdO4i-UzoHe_R05Xw@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: Porting barebox (devicetree) to Variscite iMX6 SOM [USB FIX]
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

I can probably shed a bit more light on this issue actually, now that
I understand it.

The current code you have in barebox SHOULD work with most properly
designed equipment -- key words being "properly designed".

In the case where you have a USB device tied straight to the iMX6 (or
whatever), then just using the PwrOn2PwrGood flag should be fine
(which, if memory serves is hardcoded at something like 20ms for EHCI
root hubs, I think).

Similarly, if you have a USB device being powered directly off the
pins on a USB hub, things should be fine if you use the PwrOn2PwrGood
flag from the hub itself.

The problem is when you have a secondary part like the 2076 MOSFET
hanging off the power lines coming out of a USB hub -- with it
providing the power to the actual device. It adds up to another 5-10ms
of delay, after the PwrOn2PwrGood delay, before the power to the
connected device is actually "good".

If the hubs in question were properly designed, they would have put an
I2C EEPROM on the config lines for the hub and then adjusted the
PwrOn2PwrGood delay appropriately -- i.e. they would have added the
10ms already, so we would be reading the correct value. The problem is
that some of the hubs I have been looking at recently -- including the
design that Variscite incorporated into their own iMX6 SOM -- don't
bother to add an EEPROM, so problems like this show up. I'm betting
other designs out there may suffer from the same problem (i.e. the
designers didn't really understand that a config EE for the hub was
needed and tried to save money by leaving it out and just letting the
hub use it's built-in default values).

In typical use cases under Linux, the problem doesn't really show up
that often because the hub is initialized at boot up and the the
device probing typically happens a bit later (which would also explain
why I see comments online about devices hotplugged later working, but
not working when they were plugged in initially during boot).

So, I guess the question is whether it is worth adding 10ms to the hub
probe ALL the time, or simply adding a quirk for some boards like the
Variscite SOM. However, it would be almost impossible to add quirk for
the case of external powered USB hubs that show this behavior though
-- because, typically, the ones that have the problem will be the ones
that don't have config EEPROMS on them, so they won't have any unique
ID information stored either.

Don't you just love having to work around problems caused by the
hardware designers trying to pinch pennies?

Thanks!
Michael Burkey




On 2/7/14, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, Feb 06, 2014 at 10:24:43PM -0500, Michael D. Burkey wrote:
>> Sascha,
>>
>> Well, a bit of good news -- I know what the problem is, and it is
>> probably one that has actually caused headaches for other people over
>> the years (probably in the Linux kernel as well).
>>
>> The problem is one that only shows up with a powered hub which uses
>> external power switches to feed the ports. The hub reports back a
>> PowerOn2PowerGood signal of 100ms. Unfortunately, standard MOSFET
>> switches such as the MIC2076 add up to another 10ms of delay to the
>> time it takes for the power lines to the ports to become stable.
>>
>> This would also explain a few problems that I have seen people talking
>> about online with BeagleBoards, etc under Linux where a USB device would
>> work fine if hot-plugged later on, but would not work if it was plugged
>> in at startup.
>>
>> Also, looking at the more recent Linux kernels, they have hardcoded
>> the value for the delay in usb_hub_power_on() to a minimum of 100ms,
>> rather than just using the PwrOn2PwrGood value -- so it probably makes
>> sense to do the same in barebox, except that we really should make the
>> delay timing for both about 110ms or PwrOn2PwrGood+10ms.
>>
>> I've (finally) gotten all my Variscite patches rolled together and
>> merged on my end with all the DTS changes that got checked into the
>> mainline over the last few days (you've been WAY too busy!!!) and I
>> can post a real patch file including the USB update shortly.
>>
>> That said, the change is to /drivers/usb/core/usb.c and the only
>> function changed is:
>>
>> static void usb_hub_power_on(struct usb_hub_device *hub)
>> {
>>         int i;
>>         unsigned delay;
>>         struct usb_device *dev;
>>
>>         dev = hub->pusb_dev;
>>         /* Enable power to the ports */
>>         USB_HUB_PRINTF("enabling power on all ports\n");
>>         for (i = 0; i < dev->maxchild; i++) {
>>                 usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
>>                 USB_HUB_PRINTF("port %d returns %lX\n", i + 1,
>> dev->status);
>>         }
>>
>>         /* Wait at least 110 msec for power to become stable. */
>>         /* PowerOn2PowerGood is encoded in 2ms increments -> times 2
>> for the actual delay */
>>         /* The additional 10ms is to allow for the turn-on/rise-time
>> delay often induced  */
>>         /* by MOSFET power distribution switches such as the Micrel
>> MIC2076.              */
>>         delay = max((unsigned)(hub->desc.bPwrOn2PwrGood*2), (unsigned)
>> 100);
>>         mdelay(delay+10);
>> }
>>
>>
>> This gets USB detection working properly on the Variscite -- and
>> probably helps a few other boards too!
>
> Indeed this function caused problems earlier, also on U-Boot. I thought
> the way we do it is fine now. It might be worth running a git blame/git
> log on this function in both barebox and U-Boot to get some background.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
