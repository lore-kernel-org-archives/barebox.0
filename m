Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chGon-0005Rf-Qn
 for barebox@lists.infradead.org; Fri, 24 Feb 2017 14:25:59 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Fri, 24 Feb 2017 15:24:57 +0100
Message-Id: <20170224142501.2679-1-bst@pengutronix.de>
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
Subject: [PATCH 0/4] Prepare consoles,
 add fb flush and Solomon SSD1307 OLED controller support
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

Hi,

This patch set basically adds support for the Solomon SSD1307 OLED
controller family along with some framebuffer and console features
needed.

To enable opening and closing consoles regardless of stdin, stdout and
stderr the open and close methods were introduced. In combination with
the 2nd patch it is now possible to display text with
'echo -o <console device> abcdef'.

The 3rd patch adds a flush method for drivers using a virtual
framebuffer - like the SSD1307 OLED controller. It is called at
appropriate times. The 4th patch finally adds Solomon SSD1307 OLED
controller support.

Regards,
Bastian

Bastian Stender (4):
  console: replace set_active by open/close
  console: expose consoles in devfs
  fb: introduce flush for virtual framebuffer
  video: add support for Solomon SSD1307 OLED controller family

 commands/fbtest.c         |   1 +
 common/console.c          |  71 +++++-
 drivers/video/Kconfig     |   4 +
 drivers/video/Makefile    |   1 +
 drivers/video/fb.c        |  26 +++
 drivers/video/fbconsole.c |  31 ++-
 drivers/video/ssd1307fb.c | 569 ++++++++++++++++++++++++++++++++++++++++++++++
 include/console.h         |   6 +-
 include/fb.h              |   2 +
 net/netconsole.c          |  27 ++-
 10 files changed, 713 insertions(+), 25 deletions(-)
 create mode 100644 drivers/video/ssd1307fb.c

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
