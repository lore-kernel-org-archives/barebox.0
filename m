Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5DO-0005xD-UX
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:43:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:43:07 +0100
Message-Id: <20180209094316.8523-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/9] Fastboot customization support
To: Barebox List <barebox@lists.infradead.org>

In a customer project we have to do some customization to the fastboot
support. In particular, we have to check signatures in uploaded images,
which requires us to upload the whole image before it can be flashed.
This contradicts Fastboot sparse support, so we make Sparse support
optional in this series.

We decided to use FIT images as format to the signed images, so now we
are in the situation that we want to hold big FIT images in memory and
not unnecessarily copy it. Normally Fastboot temporarily stores a file
in RAMFS. This file can't be directly used by the FIT image code though,
so we add a compile time option to store the temporary fastboot image as
a buffer. This can be directly reused by the FIT image code (thanks to
recent FIT image changes).

Last not least we add hooks to the fastboot code. These can be used
to handle commands in a special way, like for example to deny certain
commands or to implement special commands. Also there is a "flash"
hook which can be used to add a custom flash operation, like for example
for our customer to implement signature checking of the FIT images.

Sascha


Sascha Hauer (9):
  ubiformat: Allow to ubiformat with a buffer given
  usb: gadget: fastboot: Make sparse support optional
  usb: gadget: fastboot: pass struct f_fastboot * around
  usb: gadget: fastboot: use read_file_2
  usb: gadget: fastboot: Always remove temporary file
  usb: gadget: fastboot: fix typo
  usb: gadget: fastboot: beautify fb_run_command()
  usb: gadget: fastboot: Add option to download to a buffer
  usb: gadget: fastboot: Add external command execution support

 common/ubiformat.c              |  55 ++++++----
 drivers/usb/gadget/Kconfig      |  22 +++-
 drivers/usb/gadget/f_fastboot.c | 216 ++++++++++++++++++++++++++--------------
 drivers/usb/gadget/multi.c      |   2 +
 include/ubiformat.h             |   7 ++
 include/usb/fastboot.h          |  17 ++++
 6 files changed, 222 insertions(+), 97 deletions(-)

-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
