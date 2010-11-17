Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PIZdP-0005f1-Cx
	for barebox@lists.infradead.org; Wed, 17 Nov 2010 04:28:40 +0000
Date: Wed, 17 Nov 2010 05:25:01 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101117042501.GE12959@game.jcrosoft.org>
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
Subject: x86 fix Pull request
To: barebox@lists.infradead.org

Hi,

	those patches was end some times ago to fix the x86 build

	please pull
The following changes since commit 6d2fd508d1a2f1479202a8eb80ffc71143f29874:

  mini2440: Fix compilation error. (2010-11-15 09:20:34 +0100)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git x86

Jean-Christophe PLAGNIOL-VILLARD (3):
      linux16: fix cmd_tbl_t as struct command
      x86: add 64bit host build support
      x86: fix out of tree build support

 arch/x86/Makefile           |    3 ++-
 commands/linux16.c          |    2 +-
 scripts/setupmbr/setupmbr.c |    4 ++--
 3 files changed, 5 insertions(+), 4 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
