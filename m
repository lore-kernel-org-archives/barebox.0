Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yav0Y-0004G8-8u
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 23:46:47 +0000
Received: from antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A
 (p4FD7DA20.dip0.t-ipconnect.de [79.215.218.32])
 by lynxeye.de (Postfix) with ESMTPA id D8F2F26C2001
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2015 00:45:49 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 26 Mar 2015 00:45:46 +0100
Message-Id: <1427327146-5029-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] docs: correct link to microcom repo
To: barebox@lists.infradead.org

It's not nice to land on a 404 page and having to
search for the right location manually.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 Documentation/user/system-setup.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/system-setup.rst b/Documentation/user/system-setup.rst
index 683da9e6b584..7e4a7669a8fe 100644
--- a/Documentation/user/system-setup.rst
+++ b/Documentation/user/system-setup.rst
@@ -29,7 +29,7 @@ A good alternative terminal program is microcom. On Debian it can be installed
 with ``apt-get install microcom``, on other distributions it can be installed
 from source:
 
-http://git.pengutronix.de/?p=tools/microcom;a=summary
+http://git.pengutronix.de/?p=tools/microcom.git;a=summary
 
 Usage is simple::
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
