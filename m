Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 16 Dec 2009 15:49:16 +0100
Message-Id: <1260974958-21832-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 0/2] arm/lib: EABI fixes
To: u-boot-v2@lists.infradead.org
Cc: sha@pengutronix.de

Hey,

Since commit e2b4a792f8751d906d17b7ae343952f78dc41d67, we don't
undoncitionally link with OABI. If now EABI is selected there are a
number of missing helper functions, because they have new names now.

This series of pachtes adds the missing names and function.

These patches have been successfully tested on an MX35-PDK booting
from RAM and NAND.

Cheers, Marc

P.S.: If you want to pull these fixes:

---

The following changes since commit a5c776de1d8743e095cdd2f75a409e82148bd9c4:
  Sascha Hauer (1):
        Merge branch 'for-sha-collateral' of git://git.pengutronix.de/git/mkl/barebox

are available in the git repository at:

  git://git.pengutronix.de/git/mkl/barebox.git for-sha-eabi-fixes

Marc Kleine-Budde (2):
      arm/lib: add eabi names of helper functions
      arm/lib: add missing abi helper functions __aeabi_idivmod, __aeabi_uidivmod

 arch/arm/lib/Makefile           |    2 +
 arch/arm/lib/__aeabi_idivmod.S  |   50 ++++++++++++++++++++++++++++++++++++++
 arch/arm/lib/__aeabi_uidivmod.S |   51 +++++++++++++++++++++++++++++++++++++++
 arch/arm/lib/_ashldi3.S         |    2 +
 arch/arm/lib/_ashrdi3.S         |    2 +
 arch/arm/lib/_divsi3.S          |    2 +
 arch/arm/lib/_lshrdi3.S         |    2 +
 arch/arm/lib/_udivsi3.S         |    3 ++
 8 files changed, 114 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/lib/__aeabi_idivmod.S
 create mode 100644 arch/arm/lib/__aeabi_uidivmod.S


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
