Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NYL5o-0008NT-KQ
	for barebox@lists.infradead.org; Fri, 22 Jan 2010 15:06:39 +0000
Date: Fri, 22 Jan 2010 16:06:28 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100122150628.GA12856@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] arm cache fixes
To: barebox@lists.infradead.org

Hi,

while digging around in Linux' early boot code for ARM I noticed that
the mmu hasn't been disabled on iMX27 when giving control to Linux.

The other patch mostly cosmetic to print out when barebox.bin (and
barebox.S) are updated.

I send the patches as reply to this mail.  Shortlog and diffstat are
below.

Best regards
Uwe

The following changes since commit 0dde20da20411bf4dcd5593601d2f36e9ba04f66:
  Peter Korsgaard (1):
        documentation: It's U-Boot that doesn't have getopt, not Barebox

are available in the git repository at:

  git://git.pengutronix.de/git/ukl/barebox.git master

Uwe Kleine-K=F6nig (2):
      give nice output when generating barebox.bin and barebox.S
      arm: make disabling the cache actually work

 Makefile           |   15 ++++++++++++---
 arch/arm/cpu/mmu.c |   29 ++++++++++++++++++++++++++++-
 2 files changed, 40 insertions(+), 4 deletions(-)

-- =

Pengutronix e.K.                              | Uwe Kleine-K=F6nig         =
   |
Industrial Linux Solutions                    | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
