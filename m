Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RERoQ-0002Gy-Sh
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 20:23:31 +0000
Received: by bkbc12 with SMTP id c12so2477964bkb.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 13:23:28 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 13 Oct 2011 22:23:09 +0200
Message-Id: <1318537394-8555-3-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
References: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 3/8] mci:s3c: Fix sparse warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

warning:
drivers/mci/s3c.c:157:18: warning: dubious bitfield without explicit `signed' or `unsigned'

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/mci/s3c.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index f97e13a..15defe7 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -154,7 +154,7 @@
 
 struct s3c_mci_host {
 	void __iomem	*base;
-	int		bus_width:2; /* 0 = 1 bit, 1 = 4 bit, 2 = 8 bit */
+	unsigned int	bus_width:2; /* 0 = 1 bit, 1 = 4 bit, 2 = 8 bit */
 	unsigned	clock;	/* current clock in Hz */
 	unsigned	data_size;	/* data transfer in bytes */
 };
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
