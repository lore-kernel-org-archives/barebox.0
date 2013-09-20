Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMtQW-0008E6-Ts
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 05:38:49 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0125CDC67D2
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 07:38:27 +0200 (CEST)
Date: Fri, 20 Sep 2013 07:39:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130920053940.GC1137@ns203013.ovh.net>
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
Subject: [PATCH 0/3] Animeo IP: macb support improvement
To: barebox@lists.infradead.org

Hi,

	The following patch series add
	 - fix reset
	 - retreive previously valid public macb's mac
	 - set local mac to macb (if none) and asix with "smf" as OUI

The following changes since commit 820e3d7d20da7d0258349ae6a152b13a3e0d0817:

  animeo_ip: set uSD port devname to microsd (2013-09-20 13:31:06 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/animeo_ip_eth

for you to fetch changes up to 3233e9497b5a1a911b3556549d99106b66757a7c:

  animeo_ip: retrieve the mac from the macb and set private mac to asix (2013-09-20 13:31:14 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      introduce helper to generate mac address with OUI
      animeo_ip: ensure the phy is reset correctly
      animeo_ip: retrieve the mac from the macb and set private mac to asix

 arch/arm/boards/animeo_ip/init.c | 71 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/local_mac_address.h      | 40 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 110 insertions(+), 1 deletion(-)
 create mode 100644 include/local_mac_address.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
