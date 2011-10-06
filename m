Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RBixC-0002Dw-GJ
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 08:05:19 +0000
Received: from [192.168.0.14] (tra42-5-83-152-246-54.fbx.proxad.net
	[83.152.246.54])
	by mail.free-electrons.com (Postfix) with ESMTPA id 30A33206
	for <barebox@lists.infradead.org>;
	Thu,  6 Oct 2011 10:05:07 +0200 (CEST)
Message-ID: <4E8D6133.8080604@free-electrons.com>
Date: Thu, 06 Oct 2011 10:05:07 +0200
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC/PATCH 0/2]  Backlight support
To: barebox <barebox@lists.infradead.org>

This patch set is a RFC about a backlight framework. The purpose of
this framework is mainly to allow to add easily a support for a
backlight with the possibility of setting brightness directly from the
barebox shell using the brightness parameter.

An implementation is provided for i.MX23 by using the PWM. It was
tested on a custom i.MX23 base board.

All this commits are done to be applied on top of this git repository :

  git://git.pengutronix.de/git/barebox.git master

The HEAD of this git repository, when I created this patch, was:
commit 71e806048e5a370fbcabf5441de33bd3f083903a
login: correct a typo in command description

Gregory CLEMENT (2):
  backlight: Add backlight framework to support backlight driver
  backlight: mxs: Add backlight support for i.MX23

 arch/arm/mach-mxs/include/mach/backlight.h |   19 ++++
 drivers/video/Kconfig                      |    3 +-
 drivers/video/Makefile                     |    2 +
 drivers/video/backlight/Kconfig            |   16 ++++
 drivers/video/backlight/Makefile           |    3 +
 drivers/video/backlight/backlight-mxs.c    |  136 ++++++++++++++++++++++++++++
 drivers/video/backlight/backlight.c        |   85 +++++++++++++++++
 include/backlight.h                        |   21 +++++
 8 files changed, 284 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/backlight.h
 create mode 100644 drivers/video/backlight/Kconfig
 create mode 100644 drivers/video/backlight/Makefile
 create mode 100644 drivers/video/backlight/backlight-mxs.c
 create mode 100644 drivers/video/backlight/backlight.c
 create mode 100644 include/backlight.h

-- 
1.7.4.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
