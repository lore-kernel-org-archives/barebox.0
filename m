Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zu6MT-0005X5-DK
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 22:16:58 +0000
Received: by lbbwb3 with SMTP id wb3so22754864lbb.1
 for <barebox@lists.infradead.org>; Wed, 04 Nov 2015 14:16:35 -0800 (PST)
From: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Date: Wed,  4 Nov 2015 23:16:31 +0100
Message-Id: <1446675393-402-1-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: [PATCH v2 0/2] Embedsky E9 changes
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

Compared to V1:
* Removed defconfig as suggested since imx_v7_defconfig is used.
* Removed DTS cleanup patch since it's applied, and no changes in it.
* Reworked barebox_update command to use IMX6 specific handler for MMC/SD.
* Renamed image to follow generic naming pattern for IMX boards.

Anton Bondarenko (2):
  embedsky-e9: enable barebox_update command for booter update
  images: Embedsky E9: use image name like the rest of boards

 arch/arm/boards/embedsky-e9/board.c | 8 ++++++++
 images/Makefile.imx                 | 4 ++--
 2 files changed, 10 insertions(+), 2 deletions(-)

-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
