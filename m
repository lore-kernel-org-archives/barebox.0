Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNGvN-00039t-6A
 for barebox@lists.infradead.org; Sat, 21 Sep 2013 06:44:14 +0000
Received: from mail440.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 69430101004F
 for <barebox@lists.infradead.org>; Sat, 21 Sep 2013 08:43:49 +0200 (CEST)
Date: Sat, 21 Sep 2013 08:45:03 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130921064503.GI1137@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 0/4 v2] introduce bootcount support
To: barebox@lists.infradead.org

Hi,

	v2:
	move count params to framework

	add basic register driver

	when you want to detect boot faillure you need to count the number of
	boot and if the linux boot correctly it will clear it

The following changes since commit fe4117357f8f304a08b957eded8ede9db8dafdcf:

  Add missing dependency ENV_HANDLING for OF_BAREBOX_DRIVER option (2013-09-18 10:24:29 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/bootcount

for you to fetch changes up to aca14c8908c1e33aa9b3d7847765ebf04d963d54:

  animeo_ip: add bootcount support (2013-09-21 14:38:41 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      misc: add bootcount framework
      bootcount: add simple register support
      bootcount: add somfy bootcount support
      animeo_ip: add bootcount support

 arch/arm/boards/animeo_ip/init.c     |   2 ++
 arch/arm/configs/animeo_ip_defconfig |   2 ++
 drivers/misc/Kconfig                 |   2 ++
 drivers/misc/Makefile                |   1 +
 drivers/misc/bootcount/Kconfig       |  22 +++++++++++++++++
 drivers/misc/bootcount/Makefile      |   3 +++
 drivers/misc/bootcount/core.c        |  54 +++++++++++++++++++++++++++++++++++++++++
 drivers/misc/bootcount/register.c    | 107 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/misc/bootcount/somfy.c       | 128 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/bootcount.h                  |  31 ++++++++++++++++++++++++
 10 files changed, 352 insertions(+)
 create mode 100644 drivers/misc/bootcount/Kconfig
 create mode 100644 drivers/misc/bootcount/Makefile
 create mode 100644 drivers/misc/bootcount/core.c
 create mode 100644 drivers/misc/bootcount/register.c
 create mode 100644 drivers/misc/bootcount/somfy.c
 create mode 100644 include/bootcount.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
