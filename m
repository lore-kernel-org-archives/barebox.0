Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WctLQ-0003g6-4Y
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 09:19:56 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1WctL1-00023Y-QG
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 11:19:31 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <jbe@pengutronix.de>) id 1WctL3-0001Zb-1T
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 11:19:33 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 23 Apr 2014 11:19:26 +0200
Message-Id: <1398244766-5843-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/3] default environment: force a specific return value
To: barebox@lists.infradead.org

Since commit a162dfe50345d3461010759f8a0e79f7e388c140 the ifup command runs
this file as a script. Due to a hush misbehave it could happen it returns
an error code by accident.

For example if the last instructions in this file are:

 if [ false ]; then
    echo "friesel"
 fi

the hush returns 1 after running this script instead of 0 and in this case
the ifup command fails.

I know, the correct fix would be to fix the hush, because it is a generic
issue...but how?

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 defaultenv/defaultenv-2-base/network/eth0 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/defaultenv/defaultenv-2-base/network/eth0 b/defaultenv/defaultenv-2-base/network/eth0
index 7e731ca..33fe7c1 100644
--- a/defaultenv/defaultenv-2-base/network/eth0
+++ b/defaultenv/defaultenv-2-base/network/eth0
@@ -14,3 +14,5 @@ serverip=
 #ethaddr=xx:xx:xx:xx:xx:xx
 
 # put code to discover eth0 (i.e. 'usb') to /env/network/eth0-discover
+
+exit 0
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
