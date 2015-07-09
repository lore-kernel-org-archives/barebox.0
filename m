Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZDJKs-0006T7-QG
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 21:26:27 +0000
Received: by laar3 with SMTP id r3so254566701laa.0
 for <barebox@lists.infradead.org>; Thu, 09 Jul 2015 14:26:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 10 Jul 2015 00:25:49 +0300
Message-Id: <1436477154-28594-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC-WIP 0/5] fbconsole: switch to lib/fonts framework
To: barebox@lists.infradead.org

Antony Pavlov (5):
  for-ammend: fbconsole: FBCONSOLE -> FRAMEBUFFER_CONSOLE
  import lib/fonts framework from linux kernel
  for-ammend: video: fbconsole: switch to lib/fonts framework
  lib/fonts: add "MINI4x6" font
  video: fbconsole: switch to "MINI4x6" font: just for demo purposes

 drivers/video/Kconfig                              |    2 +-
 drivers/video/Makefile                             |    2 +-
 drivers/video/fbconsole.c                          |   44 +-
 include/linux/font.h                               |   29 +
 lib/Kconfig                                        |    2 +
 lib/Makefile                                       |    1 +
 lib/fonts/Kconfig                                  |   25 +
 lib/fonts/Makefile                                 |   10 +
 include/video_font_data.h => lib/fonts/font_8x16.c |  479 ++---
 lib/fonts/font_mini_4x6.c                          | 2155 ++++++++++++++++++++
 lib/fonts/fonts.c                                  |   66 +
 11 files changed, 2559 insertions(+), 256 deletions(-)
 create mode 100644 include/linux/font.h
 create mode 100644 lib/fonts/Kconfig
 create mode 100644 lib/fonts/Makefile
 rename include/video_font_data.h => lib/fonts/font_8x16.c (94%)
 create mode 100644 lib/fonts/font_mini_4x6.c
 create mode 100644 lib/fonts/fonts.c

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
