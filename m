Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x232.google.com ([2a00:1450:4013:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgL2h-000332-9i
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 20:58:36 +0000
Received: by mail-ea0-f178.google.com with SMTP id a10so3078032eae.23
 for <barebox@lists.infradead.org>; Tue, 12 Nov 2013 12:58:12 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 12 Nov 2013 21:58:03 +0100
Message-Id: <1384289884-8832-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] scripts: kwboot: fix missing soh initialization
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Xmodem blocks should start with SOH but kwboot never sets the first
block byte. This fixes kwboot's Xmodem block initialization and sets
first block byte to SOH.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 scripts/kwboot.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/kwboot.c b/scripts/kwboot.c
index 33c94b3..81da3e8 100644
--- a/scripts/kwboot.c
+++ b/scripts/kwboot.c
@@ -334,6 +334,7 @@ kwboot_xm_makeblock(struct kwboot_block *block, const void *data,
 	size_t n;
 	int i;
 
+	block->soh = SOH;
 	block->pnum = pnum;
 	block->_pnum = ~block->pnum;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
