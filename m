Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7i0M-0005rA-BW
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 09:29:34 +0000
Received: by mail-we0-f175.google.com with SMTP id t60so2137816wes.6
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 02:29:11 -0700 (PDT)
Message-ID: <53C79763.7050406@gmail.com>
Date: Thu, 17 Jul 2014 11:29:07 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
 <53C70795.5050308@gmail.com> <20140717053355.GI23235@pengutronix.de>
In-Reply-To: <20140717053355.GI23235@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Update/include some functions from the Kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 07/17/2014 07:33 AM, Sascha Hauer wrote:
> On Thu, Jul 17, 2014 at 01:15:33AM +0200, Sebastian Hesselbarth wrote:
>> On 07/15/2014 03:49 PM, Sascha Hauer wrote:
>>> This adds/updates some lowlevel bitmap/bitop stuff from the
>>> Kernel. Needed by upcoming USB updates.
>>
>> Sascha,
>>
>> just curious what "USB updates" there are?
>
> The updates are only USB core related, like turning the hub driver into
> a device and make fix up the USB device hierarchy. The other stuff is
> USB gadget specific: Update to v3.15 and composite gadget support

Ok, for the xHCI driver, I am about to bring up the ports. But AFAKT,
it will be basically fine to reuse the EHCI hub code. The way data is
sent later, is different from EHCI. I still have to dig into both xHCI
and EHCI code and specs to be sure about it.

BTW, if USB2.0 is a reasonable fallback for both, xHCI devices and HC,
I guess it should be fine to just support the 2.0 stuff.

Up to now, I already stumbled upon some legacy stuff (from u-boot?),
e.g. USB_SPEED defines vs enum, struct usb_{config,interface}_descriptor
collusion. I guess I can split-off some cleanup and preparation patches
from that after yours.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
