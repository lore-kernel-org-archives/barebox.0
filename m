Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRfgO-0005Yy-UA
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 09:58:57 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0A00CDC250B
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 11:58:32 +0200 (CEST)
Date: Thu, 3 Oct 2013 11:59:57 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131003095957.GQ32444@ns203013.ovh.net>
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
Subject: [PATCH 0/2 v2] add bpkfs support
To: barebox@lists.infradead.org

Hi,

	v2 update comment and fix comment typo
	and rebase next

The following changes since commit 705dbd7c795bbdfb448e1d0ace89d98cbceaaec1:

  Merge branch 'for-next/tegra' into next (2013-10-02 11:07:14 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/bpkfs

for you to fetch changes up to 6edfa631c4aafd71d0508b94c7cdea87695dd492:

  fs: add BPKFS support (2013-10-03 17:54:27 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      filetype: add Binary PacKage BPK type
      fs: add BPKFS support

 common/filetype.c  |   3 +
 fs/Kconfig         |   5 ++
 fs/Makefile        |   1 +
 fs/bpkfs.c         | 514 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/bpkfs.h    |  68 +++++++++++++++
 include/filetype.h |   1 +
 6 files changed, 592 insertions(+)
 create mode 100644 fs/bpkfs.c
 create mode 100644 include/bpkfs.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
