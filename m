Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWH2-0000tu-9L
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:37:21 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 09:36:36 +0200
Message-Id: <1368603396-27887-11-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCHv2 10/10] arm: mvebu: remove useless lines in kwbimage.cfg for
 CuBox
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Thanks to the improvements brought into the kwbimage tool, it is no
longer necessary to have dummy DEST_ADDR and EXEC_ADDR lines in the
kwbimage.cfg file if those values are passed on the command line to
the kwbimage tool, which is what the Barebox build process does.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/boards/solidrun-cubox/kwbimage.cfg |    2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/solidrun-cubox/kwbimage.cfg b/arch/arm/boards/solidrun-cubox/kwbimage.cfg
index cb0c360..db35aca 100644
--- a/arch/arm/boards/solidrun-cubox/kwbimage.cfg
+++ b/arch/arm/boards/solidrun-cubox/kwbimage.cfg
@@ -1,7 +1,5 @@
 VERSION 0
 BOOT_FROM spi
-DESTADDR ffffffff # overwritten by kwbimage -c
-EXECADDR ffffffff # overwritten by kwbimage -c
 DATA d0020104 00000000
 DATA d0800020 00022430
 DATA d0800030 00022430
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
