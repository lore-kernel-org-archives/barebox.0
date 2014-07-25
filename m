Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-x236.google.com ([2607:f8b0:4003:c02::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAhWN-0002IB-3t
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 15:34:59 +0000
Received: by mail-oa0-f54.google.com with SMTP id n16so5791810oag.27
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 08:34:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABJ1b_RgTF0eTSVWGy6H01bTVX8OCxwPtRpMQhsev=w53fcZLA@mail.gmail.com>
References: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140725073243.GP23235@pengutronix.de>
 <CABJ1b_RgTF0eTSVWGy6H01bTVX8OCxwPtRpMQhsev=w53fcZLA@mail.gmail.com>
Date: Fri, 25 Jul 2014 17:34:37 +0200
Message-ID: <CABJ1b_Qi4iSkHfdgLqH1kOcxiM06Xg0dSxzJUiKR1DyxQjDnUw@mail.gmail.com>
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 0/6] Minor USB fixes and xHCI driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox <barebox@lists.infradead.org>

On Fri, Jul 25, 2014 at 4:40 PM, Sebastian Hesselbarth
<sebastian.hesselbarth@gmail.com> wrote:
> On Fri, Jul 25, 2014 at 9:32 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> On Thu, Jul 24, 2014 at 03:28:40PM +0200, Sebastian Hesselbarth wrote:
>>> This patch set adds initial support for xHCI host controllers either
>>> as platform_device or PCI attached device. Compared to EHCI, the
>>> xHCI added even more SW stuff around the host controller interface
>>> we have to deal with. From a topology point-of-view each xHCI HC
>>> represents two virtual Root Hubs, one for USB 3.0 and one for USB
>>> 2.0 with TT.
>>>
>>> The xHCI driver currently only supports virtual USB 2.0 ports of the
>>> xHCI controller. If a USB 3.0 device is used, it has to be connected
>>> with a USB 2.0 cable, i.e. no SuperSpeed cable. Also, I haven't been
>>> able to test any USB 1.1 devices, yet. Anyway, I plan to have a look
>>> at both USB 1.1 and USB 3.0 but still I consider the driver in a
>>> quite good shape to be released.
>>
>> Do we have the chance to issue a warning when a device is connected
>> with a superspeed cable? If not maybe a general warning in the xhci
>> probe function is a good idea.
>
> Sorry, I the reply is f*cked up, have to answer this through gmail.
>
> I did some improvements and added missing pieces, now all non-SS
> combinations I have tested are working, e.g LS/FS/HS on Root Hub,
> on Single-TT HS Hub, and on Multi-TT HS Hub. I haven't tested any
> Hub-Hub paths, but that is something that can wait IMHO.

I just tested SS (with SS cable) on Root Hub and it worked.. but just
on one of the both ports Mirabox has. Now I am quite convinced that
the inscription on the back of Mirabox above USB ports isn't a typo ;)

Both ports are blue, i.e. they should be SS capable. The working one
has "USB 3.0" printed above it, the one that does not work has "USB 2.0"
printed over it. I thought it was just a typo, I guess it isn't.

> I am now going to look at SS issues and if I don't find a quick solution,
> I'll put a warning that SS is not supported, yet. I will be quite easy to
> catch, as there are distinct virtual USB 3.0 ports on each xHCI, i.e.
> if the port reports a device, it is SS with SS-cable on USB 3.0 port.

Ok, I admit that error reporting capabilities of the driver could be improved
a lot. OTOH, usb core itself isn't very noisy about errors too, it just silently
fails.

I'll send an updated v2 this weekend or beginning of next week.

> BTW, the error path of usb core device detect is utterly broken.. not
> that it is important for most cases, but for debugging failing device
> connects it is ;) I'll fix it up anytime soon.

When I get back to above, I'll also add some more verbose error reporting
to xHCI HCD.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
