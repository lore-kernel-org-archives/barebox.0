Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6mPl-0006a9-AR
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 18:23:09 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id CCAB6FFA5E1
 for <barebox@lists.infradead.org>; Sat, 16 Feb 2013 19:38:39 +0100 (CET)
Date: Sat, 16 Feb 2013 19:22:02 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130216182202.GI19322@game.jcrosoft.org>
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
Subject: [PATCH 0/2] highbank: add of fixup
To: barebox@lists.infradead.org

Hi,

	On highbank we need to disabled the sata or the mmc based on teh power
	domain and update the cpu informations

The following changes since commit 03df05df8265f287c142319553a7225b973714fb:

  of: add do_fixup_by_compatible with u32 and string version (2013-02-15 22:27:24 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/highbank

for you to fetch changes up to a289534ee9cd1e75ac67317a2e8693ea53c679de:

  highbank: add of fixup (2013-02-15 22:27:29 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      highbank: move register value to include/mach
      highbank: add of fixup

 arch/arm/boards/highbank/init.c                     |   48 +++++++++++++++++++++++++++++++++++++++++++++++-
 arch/arm/mach-highbank/core.c                       |    7 +++----
 arch/arm/mach-highbank/include/mach/hardware.h      |   14 ++++++++++++++
 arch/arm/mach-highbank/{ => include/mach}/sysregs.h |    5 +++++
 arch/arm/mach-highbank/reset.c                      |    3 +--
 5 files changed, 70 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/mach-highbank/include/mach/hardware.h
 rename arch/arm/mach-highbank/{ => include/mach}/sysregs.h (90%)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
