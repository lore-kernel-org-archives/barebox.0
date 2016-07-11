Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bMUl5-0007MV-Iz
 for barebox@lists.infradead.org; Mon, 11 Jul 2016 06:32:00 +0000
Date: Mon, 11 Jul 2016 08:31:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160711063136.GX20657@pengutronix.de>
References: <1466358813-31528-1-git-send-email-shc_work@mail.ru>
 <20160704164810.ad22e9243d6bd0541a637888@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160704164810.ad22e9243d6bd0541a637888@gmail.com>
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
Subject: Re: [PATCH] input: Compile keymap only if necessary
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 04, 2016 at 04:48:10PM +0300, Antony Pavlov wrote:
> On Sun, 19 Jun 2016 20:53:33 +0300
> Alexander Shiyan <shc_work@mail.ru> wrote:
> 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  drivers/input/Makefile   | 3 +--
> >  include/input/keyboard.h | 4 ++++
> >  2 files changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/input/Makefile b/drivers/input/Makefile
> > index 7d2c194..e694a98 100644
> > --- a/drivers/input/Makefile
> > +++ b/drivers/input/Makefile
> > @@ -1,8 +1,7 @@
> > -obj-$(CONFIG_INPUT) += input.o
> > +obj-$(CONFIG_INPUT) += input.o keymap.o
> >  obj-$(CONFIG_INPUT_MATRIXKMAP) += matrix-keymap.o
> >  obj-$(CONFIG_KEYBOARD_USB) += usb_kbd.o
> >  obj-$(CONFIG_KEYBOARD_GPIO) += gpio_keys.o
> >  obj-$(CONFIG_KEYBOARD_TWL6030) += twl6030_pwrbtn.o
> >  obj-$(CONFIG_KEYBOARD_IMX_KEYPAD) += imx_keypad.o
> >  obj-$(CONFIG_KEYBOARD_QT1070) += qt1070.o
> > -obj-y += keymap.o
> > diff --git a/include/input/keyboard.h b/include/input/keyboard.h
> > index d1f5bf5..e205a51 100644
> > --- a/include/input/keyboard.h
> > +++ b/include/input/keyboard.h
> > @@ -1,6 +1,8 @@
> >  #ifndef __INPUT_KEYBOARD_H
> >  #define __INPUT_KEYBOARD_H
> >  
> > +#ifdef CONFIG_INPUT
> > +
> 
> Do we really need this?

Erm, no, we shouldn't need this. I removed this hunk from the patch.

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
