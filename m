Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nv92Q-0003EQ-AB
	for barebox@lists.infradead.org; Fri, 26 Mar 2010 12:53:22 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Fri, 26 Mar 2010 13:52:24 +0100
Message-Id: <1269607949-5336-1-git-send-email-l.fu@pengutronix.de>
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
Subject: Environment handling fixes and support for multiple environment
	backends
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

Hi,
the following patch set fixes and changes the environment handling in barebox.
The main change is that we have now support for multiple environment backends in
backup. This option is configurable. Once activated, barebox will scan for all
environment backends during startup, load the environment from the first loadble
backend and than synchronize the content of all remaining (or previous)
backends. The commands savenenv and loadenv are also extended with the support
for this option.

diffstat:

commands/loadenv.c    |   51 +++++++++++++++++++++-----
commands/saveenv.c    |   94 ++++++++++++++++++++++++++---------------------
common/Kconfig        |   11 ++++++
common/environment.c  |   53 +++++++++++++++++++++++++--
common/startup.c      |   97 ++++++++++++++++++++++++++++++++++++++++++++-----
include/environment.h |    3 +-
scripts/bareboxenv.c  |    2 +-
7 files changed, 246 insertions(+), 65 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
