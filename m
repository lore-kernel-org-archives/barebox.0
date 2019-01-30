Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gos6m-0003Jl-WE
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 15:49:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gos6f-0004KV-Va
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 16:48:54 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Jan 2019 16:48:51 +0100
Message-Id: <20190130154853.31574-5-l.stach@pengutronix.de>
In-Reply-To: <20190130154853.31574-1-l.stach@pengutronix.de>
References: <20190130154853.31574-1-l.stach@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/6] firmware: add a note about license implications
To: barebox@lists.infradead.org

Building additional firmware into the boot image has some license
implications, which should be considered by the user, so add a short
note about this.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 firmware/README | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 firmware/README

diff --git a/firmware/README b/firmware/README
new file mode 100644
index 000000000000..1150a5cb0b7c
--- /dev/null
+++ b/firmware/README
@@ -0,0 +1,7 @@
+This is where you need to place any firmware files that need to be built
+into the boot image.
+
+Note that if you need to place any files here, the resulting boot image
+is not completely governed by the GPLv2, as used for the Barebox binary,
+but will be subject to additional terms of use imposed by the various
+licenses that apply to the firmware files.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
