Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRvqT-0004w2-Uv
 for barebox@lists.infradead.org; Fri, 13 Jan 2017 07:00:20 +0000
Date: Fri, 13 Jan 2017 07:59:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170113065956.qgkjsabpic7aval2@pengutronix.de>
References: <20170111193205.8905-1-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170111193205.8905-1-vicencb@gmail.com>
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
Subject: Re: [PATCH] scripts/omap4_usbboot: use libusb
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 11, 2017 at 08:32:05PM +0100, Vicente Bergas wrote:
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  scripts/.gitignore                          |   1 +
>  scripts/Makefile                            |   4 +-
>  scripts/{omap4_usbboot => }/omap4_usbboot.c |  78 ++++--
>  scripts/omap4_usbboot/.gitignore            |   1 -
>  scripts/omap4_usbboot/Makefile              |   5 -
>  scripts/omap4_usbboot/usb.h                 |  61 -----
>  scripts/omap4_usbboot/usb_linux.c           | 397 ----------------------------
>  7 files changed, 55 insertions(+), 492 deletions(-)
>  rename scripts/{omap4_usbboot => }/omap4_usbboot.c (87%)
>  delete mode 100644 scripts/omap4_usbboot/.gitignore
>  delete mode 100644 scripts/omap4_usbboot/Makefile
>  delete mode 100644 scripts/omap4_usbboot/usb.h
>  delete mode 100644 scripts/omap4_usbboot/usb_linux.c

Nice cleanup. It's always easy to apply patches with so many deleted
lines ;)
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
