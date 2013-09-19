Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMe7z-0005tn-5R
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 13:18:39 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id F067ADC3721
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 15:18:16 +0200 (CEST)
Date: Thu, 19 Sep 2013 15:19:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130919131929.GA1137@ns203013.ovh.net>
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
Subject: [PATCH 0/5] introduce basic rs485 support
To: barebox@lists.infradead.org

HI,

	this patch serie introduce the basic rs485 support

	This wil allow as example on Somfy Animeo-IP board to detect crossed
	rs485 cable that is used to start the board in special mode

The following changes since commit fe4117357f8f304a08b957eded8ede9db8dafdcf:

  Add missing dependency ENV_HANDLING for OF_BAREBOX_DRIVER option (2013-09-18 10:24:29 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/rs485

for you to fetch changes up to fdee185585717e2d2368252542083fd3516abc1a:

  Animeo IP: add rs485 crossing detection support (2013-09-19 21:15:50 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      shutdown: add board call back
      console: introduce console_get_by_dev
      console: introduce new callback set_mode
      atmel_serial: add rs485 support
      Animeo IP: add rs485 crossing detection support

 arch/arm/boards/animeo_ip/init.c     | 88 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----
 arch/arm/configs/animeo_ip_defconfig |  1 -
 common/console_common.c              | 13 +++++++++++++
 common/startup.c                     |  4 ++++
 drivers/serial/atmel.c               | 27 +++++++++++++++++++++++++++
 include/common.h                     |  1 +
 include/console.h                    |  8 ++++++++
 7 files changed, 136 insertions(+), 6 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
