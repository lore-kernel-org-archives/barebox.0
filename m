Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOTJc-0006fH-9a
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 13:05:40 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C215ADC2295
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 15:12:18 +0200 (CEST)
Date: Wed, 17 Oct 2012 15:03:20 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121017130320.GF30038@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] allow to use named resources
To: barebox@lists.infradead.org

Hi,

	add helper to use named resources and use it on nomadik

The following changes since commit f99ea5c9d8cfddf3a1d6b181d0dbb26e06a86d2b:

  ARM samsung S5P: Enable board support (2012-10-15 19:47:01 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/nomadik

for you to fetch changes up to 0bcfbe7caab23ba5c78c964e91c43456e66cd9aa:

  nomadik_nand: switch to named resource (2012-10-17 12:09:16 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      driver: add support for requesting resource by name
      nomadik_nand: switch to named resource

 arch/arm/boards/nhk8815/setup.c |    3 +++
 drivers/base/driver.c           |   46 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/nand/nomadik_nand.c |    6 +++---
 include/driver.h                |   15 +++++++++++++++
 4 files changed, 67 insertions(+), 3 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
