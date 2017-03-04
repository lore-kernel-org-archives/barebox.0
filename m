Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo173.mail-out.ovh.net ([178.33.251.49])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ck3mP-0000GQ-C4
 for barebox@lists.infradead.org; Sat, 04 Mar 2017 07:07:03 +0000
Received: from player791.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 2A8BC26185
 for <barebox@lists.infradead.org>; Sat,  4 Mar 2017 08:06:37 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player791.ha.ovh.net (Postfix) with ESMTPA id 144C4420071
 for <barebox@lists.infradead.org>; Sat,  4 Mar 2017 08:06:35 +0100 (CET)
Date: Sat, 4 Mar 2017 08:12:41 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170304071241.GG4120@mail.ovh.net>
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
Subject: [RFC PATCH 0/2] use gnuhash to speed up device/driver match
To: barebox@lists.infradead.org

Hi,

	The following patch series use the gnu hash to speedup device/driver
	matching.

	String compare is slow so we will calculate at runtime a hash that we
	can compare quickly to speed up the match

	in a second step we could speed up this more by calculating the hash
	at compile time

The following changes since commit d92ed454107b4d6f0d30fa0271da191ae5911d18:

  Merge branch 'for-next/video' into next (2017-02-27 08:51:08 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/gnuhash

for you to fetch changes up to 5ede85afc958bdf488a3c5e56061e7f27c26cbc6:

  driver: generate hash at runtime to speed up device/driver matching (2017-03-01 03:49:34 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      driver: remove the const of struct platform_device_id *id_table
      driver: generate hash at runtime to speed up device/driver matching

 drivers/base/bus.c    | 16 ++++++++++------
 drivers/base/driver.c | 27 ++++++++++++++++++++++++++-
 include/driver.h      |  7 ++++++-
 3 files changed, 42 insertions(+), 8 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
