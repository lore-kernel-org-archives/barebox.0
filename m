Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VAs-0004e5-IC
 for barebox@lists.infradead.org; Tue, 25 Feb 2020 08:02:39 +0000
Date: Tue, 25 Feb 2020 09:02:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200225080236.GJ3335@pengutronix.de>
References: <20200221121512.15942-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221121512.15942-1-ceggers@arri.de>
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
Subject: Re: [PATCH] gadget: f_fastboot: New Kconfig option
 USB_GADGET_FASTBOOT_CMD_OEM
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 21, 2020 at 01:15:12PM +0100, Christian Eggers wrote:
> Most fastboot commands are suitable for a secure boot environment as
> they only allow to download/flash/erase to files/partitions which were
> explicitly specified in the usbgadget command.
> 
> The "oem" group of commands allows execution of arbitrary barebox
> commands. This needs to be disabled for secure boot devices.
> 
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  drivers/usb/gadget/Kconfig      | 11 +++++++++++
>  drivers/usb/gadget/f_fastboot.c |  4 +++-
>  2 files changed, 14 insertions(+), 1 deletion(-)

Applied, thanks

I squashed some defconfig changes into this so that the configs that has
the oem commands before this still have it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
