Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciiok-0000zH-5P
 for barebox@lists.infradead.org; Tue, 28 Feb 2017 14:31:57 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Tue, 28 Feb 2017 15:31:23 +0100
Message-Id: <20170228143127.2945-1-bst@pengutronix.de>
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
Subject: [PATCH v2 0/4] Prepare consoles,
 add fb flush and Solomon SSD1307 OLED controller support
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

Changes since last version:

console: replace set_active by open/close
  - use a counter rather than flags
  - inrease counter independent of the presence of the cdev->open() hook

console: expose consoles in devfs
  - test for presence before using flush hook

video: add support for Solomon SSD1307 OLED controller family
  - remove pwm dependency and SSD1307 compatibility
  - use tabs and spaces consistently
  - remove unnecessary 'struct ssd1307fb_par'
  - remove unnecessary xzalloc check
  - bail out if any of the *required* device tree properties are missing
  - replace errno on gpio failure with error string
  - remove obsolete printk include

Bastian Stender (4):
  console: replace set_active by open/close
  console: expose consoles in devfs
  fb: introduce flush for virtual framebuffer
  video: add support for Solomon SSD1307 OLED controller family

 commands/fbtest.c         |   1 +
 common/console.c          |  99 +++++++-
 drivers/video/Kconfig     |   4 +
 drivers/video/Makefile    |   1 +
 drivers/video/fb.c        |  26 +++
 drivers/video/fbconsole.c |  31 ++-
 drivers/video/ssd1307fb.c | 566 ++++++++++++++++++++++++++++++++++++++++++++++
 include/console.h         |  10 +-
 include/fb.h              |   2 +
 net/netconsole.c          |  27 ++-
 10 files changed, 744 insertions(+), 23 deletions(-)
 create mode 100644 drivers/video/ssd1307fb.c

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
