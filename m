Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uf3sF-0001Xg-59
 for barebox@lists.infradead.org; Wed, 22 May 2013 07:54:15 +0000
Received: from mailout-de.gmx.net ([10.1.76.29]) by mrigmx.server.lan
 (mrigmx002) with ESMTP (Nemesis) id 0LdKAB-1UF2WS1LQ9-00iXiQ for
 <barebox@lists.infradead.org>; Wed, 22 May 2013 09:53:49 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 22 May 2013 09:53:38 +0200
Message-Id: <1369209220-14529-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 0/2] cfi fixes
To: barebox@lists.infradead.org

this patch set will fix autodetection of cfi flash devicese
with extra LSB bit.

Oleksij Rempel (2):
  cfi_flash: add shift option for some cfi memory chips
  cfi_flash: size_ratio should not be 0

 drivers/mtd/nor/cfi_flash.c | 26 +++++++++++++++++++++-----
 drivers/mtd/nor/cfi_flash.h |  4 +++-
 2 files changed, 24 insertions(+), 6 deletions(-)

-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
