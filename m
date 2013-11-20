Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vj722-00063B-1Z
 for barebox@lists.infradead.org; Wed, 20 Nov 2013 12:37:22 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 651E4FFA111
 for <barebox@lists.infradead.org>; Wed, 20 Nov 2013 13:36:55 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 20 Nov 2013 13:39:11 +0100
Message-Id: <1384951152-2902-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20131120122603.GD7965@ns203013.ovh.net>
References: <20131120122603.GD7965@ns203013.ovh.net>
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
Subject: [PATCH 1/2] console: add is_ready callbback support
To: barebox@lists.infradead.org

Some console such as net console need some parameter to work (IP & Port).
So we can not enable them if not present.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console.c  | 3 +++
 include/console.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/console.c b/common/console.c
index 56bc864..32c5d38 100644
--- a/common/console.c
+++ b/common/console.c
@@ -62,6 +62,9 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 	char active[4];
 	unsigned int flag = 0, i = 0;
 
+	if (cdev->is_ready && !cdev->is_ready(cdev))
+		return -EIO;
+
 	if (val) {
 		if (strchr(val, 'i') && cdev->getc) {
 			active[i++] = 'i';
diff --git a/include/console.h b/include/console.h
index 550b440..b4caf55 100644
--- a/include/console.h
+++ b/include/console.h
@@ -37,6 +37,7 @@ struct console_device {
 	struct device_d *dev;
 	struct device_d class_dev;
 
+	int (*is_ready)(struct console_device *cdev);
 	int (*tstc)(struct console_device *cdev);
 	void (*putc)(struct console_device *cdev, char c);
 	int  (*getc)(struct console_device *cdev);
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
