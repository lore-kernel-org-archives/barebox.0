Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBcQ-0008DE-OS
 for barebox@lists.infradead.org; Mon, 11 May 2020 16:49:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jYBcN-0004gc-Nc
 for barebox@lists.infradead.org; Mon, 11 May 2020 18:49:27 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 11 May 2020 18:49:27 +0200
Message-Id: <20200511164927.21864-2-l.stach@pengutronix.de>
In-Reply-To: <20200511164927.21864-1-l.stach@pengutronix.de>
References: <20200511164927.21864-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] image: add stm32 images to gitignore
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 images/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/images/.gitignore b/images/.gitignore
index 2f8b87dcbd5a..377c14ceb384 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -30,3 +30,4 @@ barebox.sum
 *.zynqimg
 *.image
 *.mvebu1img
+*.stm32
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
