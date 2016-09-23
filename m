Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-08.arcor-online.net ([151.189.21.48])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bnMSt-000711-1C
 for barebox@lists.infradead.org; Fri, 23 Sep 2016 09:08:16 +0000
Received: from mail-in-03-z2.arcor-online.net (mail-in-03-z2.arcor-online.net
 [151.189.8.15])
 by mx.arcor.de (Postfix) with ESMTP id 3sgSF26C72zwSb4
 for <barebox@lists.infradead.org>; Fri, 23 Sep 2016 11:07:50 +0200 (CEST)
From: Giorgio Dal Molin <iw3gtf@arcor.de>
Date: Fri, 23 Sep 2016 11:07:37 +0200
Message-Id: <20160923090739.25517-1-iw3gtf@arcor.de>
In-Reply-To: <20160922080408.rpqeithibjfga2rm@pengutronix.de>
References: <20160922080408.rpqeithibjfga2rm@pengutronix.de>
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
Subject: [PATCH 0/2] mtd: ubi: implement the new command 'ubirename'
To: barebox@lists.infradead.org
Cc: Giorgio Dal Molin <iw3gtf@arcor.de>

Here a new set of patches implementing the command 'ubirename'.

They are based on a patch serie from Sascha that restructures a bit
the barebox UBI APIs. In particular it is now easier to find the ubi
volume ids from the command code. Moreover the command code uses now
api functions to do the rename.

Giorgio Dal Molin (2):
  mtd: ubi: add API call to rename volumes.
  mtd: ubi: commands: added the new command 'ubirename'.

 commands/ubi.c            |  71 +++++++++++++++++++++
 drivers/mtd/ubi/barebox.c | 156 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/vmt.c     |   3 +
 include/linux/mtd/ubi.h   |   1 +
 4 files changed, 231 insertions(+)

-- 
2.10.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
