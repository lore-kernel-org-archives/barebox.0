Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKUJU-0002Ly-3t
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 12:48:51 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7F8A8FF90CC
 for <barebox@lists.infradead.org>; Wed, 18 Apr 2012 14:50:07 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Apr 2012 14:30:03 +0200
Message-Id: <1334752204-11841-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120418120834.GD1980@game.jcrosoft.org>
References: <20120418120834.GD1980@game.jcrosoft.org>
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
Subject: [PATCH 2/3] dhcp: fix typo introduce during rebase of hostname patch
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 1d01d05..0c882fb 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -681,7 +681,7 @@ BAREBOX_CMD_HELP_START(dhcp)
 BAREBOX_CMD_HELP_USAGE("dhcp [OPTIONS]\n")
 BAREBOX_CMD_HELP_SHORT("Invoke dhcp client to obtain ip/boot params.\n")
 BAREBOX_CMD_HELP_OPT  ("-H <hostname>",
-"Hostname to send to the DHCP server\n");
+"Hostname to send to the DHCP server\n")
 BAREBOX_CMD_HELP_OPT  ("-v <vendor_id>",
 "DHCP Vendor ID (code 60) submitted in DHCP requests. It can\n"
 "be used in the DHCP server's configuration to select options\n"
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
