Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og109.obsmtp.com ([64.18.0.188])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCDQM-0000OC-0N
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 17:41:58 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Sep 2012 18:41:49 +0100
Message-Id: <1347558111-1633-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/2] P2020RDB eTSEC2
To: barebox@lists.infradead.org

This patch set updates the gianfar driver and enables the port eTSEC2
of the P2020RDB. Both eTSEC2 and eTSEC3 can be used.
Also it has been noticed that dev_request_mem_region returns NULL when
a region is already mapped. Some of the registers set may be the same between
or within driver instances. This patch sorts out the conflict in region
request.

Renaud Barbier (2):
  gianfar: region request returns NULL on already mapped region
  P2020rdb: eTSEC2 support

 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   24 ++++++++++++++++++-
 drivers/net/gianfar.c                         |   30 ++++++++++++++++++++++++-
 2 files changed, 51 insertions(+), 3 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
