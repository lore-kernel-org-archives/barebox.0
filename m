Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QqXUG-00039p-S2
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 21:35:54 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id C3A76FFB22E
	for <barebox@lists.infradead.org>;
	Mon,  8 Aug 2011 23:35:57 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  8 Aug 2011 23:17:13 +0200
Message-Id: <1312838236-646-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1312838236-646-1-git-send-email-plagnioj@jcrosoft.com>
References: <1312838236-646-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] arm_dcc: fix missing switch to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/arm_dcc.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index 0199da3..e1066ab 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -157,7 +157,6 @@ static struct driver_d arm_dcc_driver = {
 static struct device_d arm_dcc_device = {
 	.id	= -1,
 	.name	= "arm_dcc",
-	.size	= 4096,
 };
 
 static int arm_dcc_init(void)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
