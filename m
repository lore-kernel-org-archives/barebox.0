Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oo04b-0001vA-0S
	for barebox@lists.infradead.org; Tue, 24 Aug 2010 20:26:21 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Aug 2010 22:26:09 +0200
Message-Id: <1282681572-20846-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] fix defaultenv
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Hello,

this series of patches fixes some problems with the defaultenv.

Please review and consider to apply.

cheer, Marc

---

The following changes since commit 3762bb24856e70a9947847cd5b3f124aaa8a8a3a:

  pcm043: remove unused defines (2010-08-16 10:29:36 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/mkl/barebox.git for-sha

Marc Kleine-Budde (3):
      defaultenv: fix physmap-flash device name
      defaultenv: fix adding of nand_parts
      defaultenv: create /dev/ram0.kernel at offset 8M

 defaultenv/bin/boot |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
