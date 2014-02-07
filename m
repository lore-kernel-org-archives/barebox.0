Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f43.google.com ([209.85.160.43])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBc3y-0002Ol-Uf
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 03:25:12 +0000
Received: by mail-pb0-f43.google.com with SMTP id md12so2653714pbc.16
 for <barebox@lists.infradead.org>; Thu, 06 Feb 2014 19:24:45 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 6 Feb 2014 22:24:43 -0500
Message-ID: <CAO6XYUtssrWFvmFZh8CUaaDwazt8apURKnyC04Rg4aRJF74_Bw@mail.gmail.com>
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
To: barebox@lists.infradead.org

Sascha,

Well, a bit of good news -- I know what the problem is, and it is
probably one that has actually caused headaches for other people over
the years (probably in the Linux kernel as well).

The problem is one that only shows up with a powered hub which uses
external power switches to feed the ports. The hub reports back a
PowerOn2PowerGood signal of 100ms. Unfortunately, standard MOSFET
switches such as the MIC2076 add up to another 10ms of delay to the
time it takes for the power lines to the ports to become stable.

This would also explain a few problems that I have seen people talking
about online with BeagleBoards, etc under Linux where a USB device would
work fine if hot-plugged later on, but would not work if it was plugged
in at startup.

Also, looking at the more recent Linux kernels, they have hardcoded
the value for the delay in usb_hub_power_on() to a minimum of 100ms,
rather than just using the PwrOn2PwrGood value -- so it probably makes
sense to do the same in barebox, except that we really should make the
delay timing for both about 110ms or PwrOn2PwrGood+10ms.

I've (finally) gotten all my Variscite patches rolled together and
merged on my end with all the DTS changes that got checked into the
mainline over the last few days (you've been WAY too busy!!!) and I
can post a real patch file including the USB update shortly.

That said, the change is to /drivers/usb/core/usb.c and the only
function changed is:

static void usb_hub_power_on(struct usb_hub_device *hub)
{
        int i;
        unsigned delay;
        struct usb_device *dev;

        dev = hub->pusb_dev;
        /* Enable power to the ports */
        USB_HUB_PRINTF("enabling power on all ports\n");
        for (i = 0; i < dev->maxchild; i++) {
                usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
                USB_HUB_PRINTF("port %d returns %lX\n", i + 1, dev->status);
        }

        /* Wait at least 110 msec for power to become stable. */
        /* PowerOn2PowerGood is encoded in 2ms increments -> times 2
for the actual delay */
        /* The additional 10ms is to allow for the turn-on/rise-time
delay often induced  */
        /* by MOSFET power distribution switches such as the Micrel
MIC2076.              */
        delay = max((unsigned)(hub->desc.bPwrOn2PwrGood*2), (unsigned) 100);
        mdelay(delay+10);
}


This gets USB detection working properly on the Variscite -- and
probably helps a few other boards too!

Thanks,
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
