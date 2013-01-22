Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Txf7w-0007zR-3j
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 14:47:04 +0000
Received: from mail170.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9871FDC1840
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2013 15:56:44 +0100 (CET)
Date: Tue, 22 Jan 2013 15:45:40 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130122144540.GN26329@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] ohci: fixes
To: barebox@lists.infradead.org

Hi,

	the current divers is bugged on the mmu support so until it's fixed do
	not allow it wih mmu

	make ohci driver depends on OHCI enabled

The following changes since commit 3de3b677ee3adc4e10235b623a8e0aa45be48893:

  Makefile: move cmd_check_file_size to Makefile.lib (2013-01-20 12:51:28 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/ohci_fixes

for you to fetch changes up to 2e5068d9b3bd9457fde68665b42dc2251f12f925:

  ohci: only enable drivers if ohci is enabled (2013-01-18 17:24:45 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      ohci: make it depends on !MMU
      ohci: only enable drivers if ohci is enabled

 drivers/usb/host/Kconfig |    5 +++++
 1 file changed, 5 insertions(+)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
