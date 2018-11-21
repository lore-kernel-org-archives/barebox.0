Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPOIs-0003ty-MK
 for barebox@lists.infradead.org; Wed, 21 Nov 2018 08:56:16 +0000
Date: Wed, 21 Nov 2018 09:55:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181121085558.ph44magnkv2vfpyy@pengutronix.de>
References: <1542654810-12087-1-git-send-email-chris@tinyhost.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1542654810-12087-1-git-send-email-chris@tinyhost.de>
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
Subject: Re: [PATCH] Add Raspberry Pi Zero W Board
To: Chris Fiege <chris@tinyhost.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 19, 2018 at 08:13:30PM +0100, Chris Fiege wrote:
> The Raspberry Pi Zero W is basically a Raspberry Pi 1 B+
> but on a smaller PCB and with Bluetooth and WiFi.
> See:
> https://elinux.org/RPi_Hardware
> 
> This patch adds support for Raspberry Pi Zero W to barebox.
> 
> Signed-off-by: Chris Fiege <chris@tinyhost.de>
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 1 +
>  arch/arm/mach-bcm283x/include/mach/mbox.h | 2 ++
>  2 files changed, 3 insertions(+)

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
