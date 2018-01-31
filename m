Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egqIc-0005bK-II
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 11:11:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 12:11:08 +0100
Message-Id: <20180131111116.9638-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/8] FIT: Add support for opening images without a
 /configuration/
To: Barebox List <barebox@lists.infradead.org>

The images in FIT images can be opened in two different ways. Since now
we only support opening images as part of a configuration. The other way
is to open an image standalone, without an configuration. This series
adds support for it (though this functionality currently remains
unused). Users could be software updates inside FIT images.

Sascha

Sascha Hauer (8):
  bootm: FIT: do not depend on FIT pre-opened images
  FIT: Do not pre-open images
  FIT: Let user specify the configuration to use
  FIT: store device_nodes in fit_handle
  FIT: move handle->verify check to fit_verify_hash()
  FIT: factor out some helper functions
  FIT: Implement opening images with no configuration
  FIT: Allow to open buffer as FIT image

 common/bootm.c      |  53 +++++--
 common/image-fit.c  | 411 +++++++++++++++++++++++++++++++++++-----------------
 include/bootm.h     |   4 +
 include/image-fit.h |  25 ++--
 4 files changed, 330 insertions(+), 163 deletions(-)

-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
