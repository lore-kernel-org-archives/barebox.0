Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZPGZ-00080I-IE
 for barebox@lists.infradead.org; Wed, 01 Oct 2014 19:08:48 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  1 Oct 2014 21:14:13 +0200
Message-Id: <1412190855-14289-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 0/2] Increamental fixes for the PCI series
To: barebox@lists.infradead.org

Those two patches fix the remaining issues with my previous
PCI series. It fixes the regression on malta reported by
Antony and another potential issue where function
dependencies weren't exactly right.

Lucas Stach (2):
  fixup! of: import pci range parser from linux
  MIPS: malta: fix pci IO resource assignment

 arch/mips/mach-malta/pci.c |  4 ++--
 drivers/of/Kconfig         |  1 +
 drivers/of/address.c       |  4 ++--
 include/of_address.h       | 22 +++++++++++++++-------
 4 files changed, 20 insertions(+), 11 deletions(-)

-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
