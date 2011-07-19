Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD7T-0003sv-SJ
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:26:07 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id D083BFFA5E5
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:26:31 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 18:08:57 +0200
Message-Id: <1311091752-9114-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110719160758.GK5727@game.jcrosoft.org>
References: <20110719160758.GK5727@game.jcrosoft.org>
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
Subject: [PATCH 01/16] register_device: Add IORESOURCE_MEM flag
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/driver.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/lib/driver.c b/lib/driver.c
index 7b381ab..95e42d5 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -116,6 +116,7 @@ int register_device(struct device_d *new_device)
 		new_device->resource = xzalloc(sizeof(struct resource));
 		new_device->resource[0].start = new_device->map_base;
 		new_device->resource[0].size = new_device->size;
+		new_device->resource[0].flags = IORESOURCE_MEM;
 		new_device->num_resources = 1;
 	} else if (new_device->resource) {
 		new_device->map_base = new_device->resource[0].start;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
