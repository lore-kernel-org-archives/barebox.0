Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TP1z8-0007S4-SE
 for barebox@lists.infradead.org; Fri, 19 Oct 2012 02:06:52 +0000
Received: from mail606.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 57E8BDC043B
 for <barebox@lists.infradead.org>; Fri, 19 Oct 2012 04:13:30 +0200 (CEST)
Date: Fri, 19 Oct 2012 04:04:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121019020430.GE22418@game.jcrosoft.org>
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
Subject: [PATCH 0/2] pm9g45 fix
To: barebox@lists.infradead.org

HI,

	the folowing patch series fix pm9g45 so we can have the correct nand
	support and be able to boot as the current binary is bigger than the
	partition for barebox and boot a mainline kernel + dt

The following changes since commit f99ea5c9d8cfddf3a1d6b181d0dbb26e06a86d2b:

  ARM samsung S5P: Enable board support (2012-10-15 19:47:01 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/pm9g45

for you to fetch changes up to d4d6062c3177d25a1181fc987231f507b74b92a9:

  pm9g45: fix config and defconfig (2012-10-19 01:08:53 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      pm9g45: fix nand partition in c code
      pm9g45: fix config and defconfig

 arch/arm/boards/pm9g45/env/config |   13 ++++++++-----
 arch/arm/boards/pm9g45/init.c     |    7 +++++--
 arch/arm/configs/pm9g45_defconfig |   32 ++++++++++++++++++++++++--------
 3 files changed, 37 insertions(+), 15 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
