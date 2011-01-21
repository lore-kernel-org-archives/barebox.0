Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PgFJf-0003ES-9i
	for barebox@lists.infradead.org; Fri, 21 Jan 2011 11:38:10 +0000
Message-ID: <4D396FF7.3040807@free-electrons.com>
Date: Fri, 21 Jan 2011 12:37:27 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
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
Subject: [PATCH v2 0/1]  fb i.MX23/28: Add the reset control of LCD
To: barebox <barebox@lists.infradead.org>

Changelog:
* Change from v1 to v2:
  - Rebase on barebox/next (after bd56e41d1912dced)
  - Add a flags field, and use a flag inside this u32 instead having a
    u32 for a single flag.

Gregory CLEMENT (1):
  fb i.MX23/28: Add the reset control of LCD

 arch/arm/mach-mxs/include/mach/fb.h |    3 +++
 drivers/video/stm.c                 |   11 +++++++++++
 2 files changed, 14 insertions(+), 0 deletions(-)



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
