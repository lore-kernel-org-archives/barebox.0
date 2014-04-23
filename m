Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WctLQ-0003g3-4X
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 09:19:56 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1WctL1-00023V-Om
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 11:19:31 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <jbe@pengutronix.de>) id 1WctL3-0001ZR-0W
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 11:19:33 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 23 Apr 2014 11:19:24 +0200
Message-Id: <1398244766-5843-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1398244766-5843-1-git-send-email-jbe@pengutronix.de>
References: <1398244766-5843-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/3] net/ifup.c: don't fail silently
To: barebox@lists.infradead.org

Since commit a162dfe50345d3461010759f8a0e79f7e388c140 the ifup command is implemented in C and runs up to two external scripts.
If one of these scripts return with an error code, the command terminates silently. This can confuse a user because there is
no hint about the reason why it fails. Add error messages to avoid this case.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 net/ifup.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/net/ifup.c b/net/ifup.c
index 7b63136..c74120c 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -70,14 +70,18 @@ int ifup(const char *name, unsigned flags)
 	cmd_discover = asprintf("/env/network/%s-discover", name);
 
 	ret = run_command(cmd);
-	if (ret)
+	if (ret) {
+		pr_err("Running '%s' fails\n", cmd);
 		goto out;
+	}
 
 	ret = stat(cmd_discover, &s);
 	if (!ret) {
 		ret = run_command(cmd_discover);
-		if (ret)
+		if (ret) {
+			pr_err("Running '%s' fails\n", cmd);
 			goto out;
+		}
 	}
 
 	dev = get_device_by_name(name);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
