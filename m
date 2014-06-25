Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wzt4P-0005Y2-TV
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 19:41:26 +0000
Date: Wed, 25 Jun 2014 21:40:52 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20140625214052.077824ec@free-electrons.com>
In-Reply-To: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH RFC 0/4] MVEBU SoC full USB support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>

Dear Sebastian Hesselbarth,

On Wed, 25 Jun 2014 16:08:44 +0200, Sebastian Hesselbarth wrote:

> This *RFC* adds a driver stub for ChipIdea USB dual role controllers
> found on Marvell MVEBU SoCs. Although, I consider this driver quite
> finished, the corresponding DT binding is not. Also, we currently
> have no corresponding driver in Linux for both MVEBU CI stub and
> USB PHY.

Very nice! Definitely great to see some work being done on the USB
support, including the PHY initialization.

> The reason I send it here and now, is to get some input from the
> (Linux) MVEBU guys on the binding and functional tests on Armada XP.

I'll try to have a look when time permits.

> While we happily lived some years with ehci-orion ignoring usb-phys
> and no usb device support at all on Linux, the situation for barebox
> is different, of course. For a boot loader, we desperately need
> usb-phy setup (and fixup) and proper DT bindings.

Generally speaking, the Linux support for Armada 370/XP relies a lot on
specific initialization done by the Marvell U-Boot, especially in terms
of USB PHY, PCIe link initialization or SERDES configuration. One of my
goal when starting Armada 370/XP support in Barebox was to start with a
pristine state, and see what is missing in Linux.

> I decided to just add the new binding style to the three board dts
> overlays we have for barebox. If we are all happy with it, I'd start
> implementing the required Linux driver for usb-phy and CI stub with
> mbus setup. As usual, binding docs are missing but I think it is
> straight forward from what we know of other SoCs/PHYs already.

Indeed, Linux support for the USB gadget side would be useful.

> USB host has been tested on all three board obviously, I plan to
> test USB device on Dove D3Plug which has an USB device jack, but
> similar patches for Marvell Berlin (also CI) worked fine.

I think I should be able to test USB device on some of the development
boards, I'll have to check.

Thanks!

Thomas
-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
