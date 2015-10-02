Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhvNQ-0008OK-DJ
 for barebox@lists.infradead.org; Fri, 02 Oct 2015 08:07:36 +0000
Date: Fri, 2 Oct 2015 10:07:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151002080713.GQ7858@pengutronix.de>
References: <1443770610-24469-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443770610-24469-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] usb: core: drop unnecessary le16_to_cpu() conversion
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 02, 2015 at 10:23:30AM +0300, Antony Pavlov wrote:
> In drivers/usb/core/usb.c we already have le16_to_cpus() conversion
> just after usb_get_descriptor():
> 
>     390     /* correct le values */
>     391     le16_to_cpus(&dev->descriptor->bcdUSB);
>     392     le16_to_cpus(&dev->descriptor->idVendor);
>     393     le16_to_cpus(&dev->descriptor->idProduct);
>     394     le16_to_cpus(&dev->descriptor->bcdDevice);
> 
> so no additional idVendor/idProduct descriptor fields
> le16_to_cpu() conversion is needed after that.
> 
> On the big-endian machines extra le16_to_cpu() conversion
> leads to wrong idVendor/idProduct USB device parameters values
> (e.g. see devinfo <usb-device> output), and to a much more
> serious problem: idVendor/idProduct-based USB device detection
> does not work.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/usb/core/usb.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

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
