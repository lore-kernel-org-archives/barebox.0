Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y1FLA-0006Bg-9M
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 14:12:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Dec 2014 15:12:11 +0100
Message-Id: <1418825531-29433-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418825531-29433-1-git-send-email-s.hauer@pengutronix.de>
References: <1418825531-29433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] netconsole: fix Documentation
To: barebox@lists.infradead.org

From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

since
commit 8eacfa71abcba857ab9aa1dcad49e2ba7d83406b
Refs: v2014.07.0-156-g8eacfa7
Author:     Sascha Hauer <s.hauer@pengutronix.de>

the netconsole device have a static device name 'netconsole'

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Documentation/user/networking.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 6802138..6eeb93d 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -61,15 +61,15 @@ Network console
 barebox has a UDP-based network console. If enabled in the config, you will see
 something like this during startup::
 
-  registered netconsole as cs1
+  registered netconsole as netconsole
 
 By default the network console is disabled during runtime to prevent security
 risks. It can be enabled using:
 
 .. code-block:: sh
 
-  cs1.ip=192.168.23.2
-  cs1.active=ioe
+  netconsole.ip=192.168.23.2
+  netconsole.active=ioe
 
 This will send UDP packets to 192.168.23.2 on port 6666. On 192.168.23.2 the
 scripts/netconsole script can be used to control barebox:
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
