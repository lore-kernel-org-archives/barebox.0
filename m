Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vs1-xe30.google.com ([2607:f8b0:4864:20::e30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY30R-0002QV-Gj
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 06:33:12 +0000
Received: by mail-vs1-xe30.google.com with SMTP id o5so12840998vsq.4
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2019 23:33:11 -0700 (PDT)
MIME-Version: 1.0
From: Valentina Rusu <skorpyon1992@gmail.com>
Date: Tue, 4 Jun 2019 09:32:59 +0300
Message-ID: <CAPYMOwmwmX3G0cHp6DSmw+GxRmENThtABnQdSS-2cL=kgfYYPg@mail.gmail.com>
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
Subject: Raspberry Pi Barebox State Integration - SD card
To: barebox@lists.infradead.org

    Hello guys,

I want to integrate Barebox state for Raspberry Pi 3 in order to use
it along Barebox bootchooser and RAUC software update.
I have built my image using Yocto Pyro 2.3.2, barebox 2019.04.0 (added
a recipe in my meta layer, based on meta-barebox).
I have integrated Barebox bootchooser and tested it with some
hardcoded values for the target priority and remaining attempts. Works
fine.

The issue to integrate Barebox state are the following:
* we need to specify a backend for the "state" node;
* the backend should point to an of partition on a non-volatile memory;
* other boards have EEPROM, NAND besides SD card and they are
described in the device tree; RPi has no such thing;
* somehow I need to write the state on the SD card in a location where
does not interfere with the partitions created (boot, rootfs, user
partitions, etc);
* the SD card device (mci0) is automatically detected at startup, and
not described in the device tree;

I need to know how should I proceed? How should I describe that
"dynamic" device in my device tree, so I could point it in the
"backend" variable of the state node?

Thank you very much!

      Best regards,
       Vali.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
