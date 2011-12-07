Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYGzu-0005eV-9F
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 12:53:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Dec 2011 13:53:01 +0100
Message-Id: <1323262387-8012-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] console_simple: fix compiler warning
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_simple.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/console_simple.c b/common/console_simple.c
index 73e4752..49c5b33 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -167,4 +167,5 @@ int console_register(struct console_device *newcdev)
 
 int console_unregister(struct console_device *cdev)
 {
+	return -EBUSY;
 }
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
