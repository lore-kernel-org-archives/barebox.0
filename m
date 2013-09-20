Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMsZw-0007U4-Fu
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 04:44:29 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id CFE14DC27F4
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 06:44:06 +0200 (CEST)
Date: Fri, 20 Sep 2013 06:45:18 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130920044518.GB1137@ns203013.ovh.net>
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
Subject: [PATCH 0/3] introduce bootcount support
To: barebox@lists.infradead.org

Hi,

	when you want to detect boot faillure you need to count the number of
	boot and if the linux boot correctly it will clear it

The following changes since commit fe4117357f8f304a08b957eded8ede9db8dafdcf:

  Add missing dependency ENV_HANDLING for OF_BAREBOX_DRIVER option (2013-09-18 10:24:29 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/bootcount

for you to fetch changes up to b8c33aa7d8de3feaf2bf358ae33e8eb1612e2465:

  animeo_ip: add bootcount support (2013-09-20 12:41:33 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      misc: add bootcount framework
      misc: add somfy bootcount support
      animeo_ip: add bootcount support

 arch/arm/boards/animeo_ip/init.c     |   2 ++
 arch/arm/configs/animeo_ip_defconfig |   2 ++
 drivers/misc/Kconfig                 |   7 +++++
 drivers/misc/Makefile                |   2 ++
 drivers/misc/bootcount.c             |  24 +++++++++++++++++
 drivers/misc/somfy_bootcount.c       | 138 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/bootcount.h                  |  21 +++++++++++++++
 7 files changed, 196 insertions(+)
 create mode 100644 drivers/misc/bootcount.c
 create mode 100644 drivers/misc/somfy_bootcount.c
 create mode 100644 include/bootcount.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
