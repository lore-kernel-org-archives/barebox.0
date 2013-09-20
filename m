Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMtXI-0008Il-MR
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 05:45:49 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 38490DC8A54
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 07:45:27 +0200 (CEST)
Date: Fri, 20 Sep 2013 07:46:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130920054640.GD1137@ns203013.ovh.net>
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
Subject: [PATCH 0/3 v2] Animeo IP: macb support improvement
To: barebox@lists.infradead.org

Hi,

	v2:

	send right patch 3

	the patch serie depend on usb support patch

	The following patch series add
	 - fix reset
	 - retreive previously valid public macb's mac
	 - set local mac to macb (if none) and asix with "smf" as OUI

The following changes since commit 1877e0407fc38f3eba60a3e60b61a0982a6c006b:

  Animeo IP: add usb host support (2013-09-20 13:42:21 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/animeo_ip_eth

for you to fetch changes up to 994c17ca145407c6a0edae4caf096e4dcdde1535:

  animeo_ip: retrieve the mac from the macb and set private mac to asix (2013-09-20 13:44:30 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      introduce helper to generate mac address with OUI
      animeo_ip: ensure the phy is reset correctly
      animeo_ip: retrieve the mac from the macb and set private mac to asix

 arch/arm/boards/animeo_ip/init.c | 73 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/local_mac_address.h      | 40 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 112 insertions(+), 1 deletion(-)
 create mode 100644 include/local_mac_address.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
