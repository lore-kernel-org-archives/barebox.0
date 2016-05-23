Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4oM5-0000ZK-DB
 for barebox@lists.infradead.org; Mon, 23 May 2016 11:49:06 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Mon, 23 May 2016 13:48:40 +0200
Message-Id: <1464004122-15815-1-git-send-email-u.oelmann@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 0/2] evaluate integrity of a barebox image
To: Barebox List <barebox@lists.infradead.org>

These two patches provide functionality to assess if a barebox image is
corrupted or not by embedding and checking a hash value. This can be of interest
if for example the image has been loaded from unreliable storage.

Jan Luebbe (2):
  images: write checksum into barebox header
  images: add function to verify checksum in barebox header

 common/Kconfig         |   9 ++
 common/Makefile        |   1 +
 common/barebox-image.c |  85 +++++++++++++++++++
 images/Makefile        |   3 +-
 include/common.h       |   9 ++
 include/filetype.h     |   2 +
 scripts/.gitignore     |   1 +
 scripts/Makefile       |   1 +
 scripts/bareboxcrc.c   | 219 +++++++++++++++++++++++++++++++++++++++++++++++++
 9 files changed, 329 insertions(+), 1 deletion(-)
 create mode 100644 common/barebox-image.c
 create mode 100644 scripts/bareboxcrc.c

-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
