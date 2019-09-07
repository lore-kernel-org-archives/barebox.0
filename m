Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kXr-0003Xy-3C
 for barebox@lists.infradead.org; Sat, 07 Sep 2019 23:55:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so5581523pgi.6
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 16:55:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 16:54:56 -0700
Message-Id: <20190907235456.21535-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190907235456.21535-1-andrew.smirnov@gmail.com>
References: <20190907235456.21535-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/4] USB: gadget: Compile composite.c with
 -Wno-address-of-packed-member
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

GCC9 for ARM produces the following warnings:

drivers/usb/gadget/composite.c: In function 'bos_desc':
drivers/usb/gadget/composite.c:522:15: warning: taking address of packed member of 'struct usb_bos_descriptor' may result in an unaligned pointer value [-Waddress-of-packed-member]
  522 |  le16_add_cpu(&bos->wTotalLength, USB_DT_USB_EXT_CAP_SIZE);
      |               ^~~~~~~~~~~~~~~~~~
drivers/usb/gadget/composite.c:534:15: warning: taking address of packed member of 'struct usb_bos_descriptor' may result in an unaligned pointer value [-Waddress-of-packed-member]
  534 |  le16_add_cpu(&bos->wTotalLength, USB_DT_USB_SS_CAP_SIZE);
      |               ^~~~~~~~~~~~~~~~~~
drivers/usb/gadget/composite.c: In function 'get_string':
drivers/usb/gadget/composite.c:928:23: warning: taking address of packed member of 'struct usb_string_descriptor' may result in an unaligned pointer value [-Waddress-of-packed-member]
  928 |    collect_langs(sp, s->wData);
      |                      ~^~~~~~~
drivers/usb/gadget/composite.c:933:24: warning: taking address of packed member of 'struct usb_string_descriptor' may result in an unaligned pointer value [-Waddress-of-packed-member]
  933 |     collect_langs(sp, s->wData);
      |                       ~^~~~~~~
drivers/usb/gadget/composite.c:938:25: warning: taking address of packed member of 'struct usb_string_descriptor' may result in an unaligned pointer value [-Waddress-of-packed-member]
  938 |      collect_langs(sp, s->wData);
      |                        ~^~~~~~~
drivers/usb/gadget/composite.c:945:23: warning: taking address of packed member of 'struct usb_string_descriptor' may result in an unaligned pointer value [-Waddress-of-packed-member]
  945 |    collect_langs(sp, s->wData);
      |                      ~^~~~~~~

the offending code seems OK and there doesn't seem to be a way to fix
this in code, so disable the warning for that file.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/gadget/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/gadget/Makefile b/drivers/usb/gadget/Makefile
index 9ef594575b..8d399e568f 100644
--- a/drivers/usb/gadget/Makefile
+++ b/drivers/usb/gadget/Makefile
@@ -1,4 +1,6 @@
 
+CFLAGS_composite.o := -Wno-address-of-packed-member
+
 obj-$(CONFIG_USB_GADGET) += composite.o config.o usbstring.o epautoconf.o udc-core.o functions.o config.o multi.o
 obj-$(CONFIG_USB_GADGET_SERIAL) += u_serial.o serial.o f_serial.o f_acm.o
 obj-$(CONFIG_USB_GADGET_DFU) += dfu.o
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
