Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oys7I-00031V-Fw
	for barebox@lists.infradead.org; Thu, 23 Sep 2010 20:10:05 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 23 Sep 2010 22:08:35 +0200
Message-Id: <1285272515-26680-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285272515-26680-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285272515-26680-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] console: set device_d id at -1
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/console.c b/common/console.c
index 889c262..204a08c 100644
--- a/common/console.c
+++ b/common/console.c
@@ -135,6 +135,7 @@ int console_register(struct console_device *newcdev)
 	int first = 0;
 	char ch;
 
+	dev->id = -1;
 	strcpy(dev->name, "cs");
 	dev->type_data = newcdev;
 	register_device(dev);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
