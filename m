Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyX5h-0006fG-5d
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 08:28:22 +0000
Received: from geraet.fritz.box (unknown [46.183.103.8])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 202721BF209
 for <barebox@lists.infradead.org>; Mon,  3 Feb 2020 08:28:08 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  3 Feb 2020 09:27:58 +0100
Message-Id: <20200203082759.7014-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] sandbox: fix signed integer overflow
To: barebox@lists.infradead.org

On a 32-bit host system, UBSan reports:

===============================================================
UBSAN: Undefined behaviour in ./arch/sandbox/os/common.c:115:32
signed integer overflow:
83598 * 1000000000 cannot be represented in type 'long int'
===============================================================

Fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/os/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 3ad12b4a30cd..3f9cc70770f6 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -112,7 +112,7 @@ uint64_t linux_get_time(void)
 
 	clock_gettime(CLOCK_MONOTONIC, &ts);
 
-	now = ts.tv_sec * 1000 * 1000 * 1000 + ts.tv_nsec;
+	now = ts.tv_sec * 1000ULL * 1000 * 1000 + ts.tv_nsec;
 
 	return now;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
