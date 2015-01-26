Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFh5h-0001yI-Es
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 10:40:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007QL-Mn
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007Py-L1
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 26 Jan 2015 11:39:52 +0100
Message-Id: <1422268796-24782-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1422268796-24782-1-git-send-email-jbe@pengutronix.de>
References: <1422268796-24782-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/9] Docs: extend the mentioned commands with a link to their
 documentation
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/boards/mxs.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/mxs.rst b/Documentation/boards/mxs.rst
index 879663c..1c26826 100644
--- a/Documentation/boards/mxs.rst
+++ b/Documentation/boards/mxs.rst
@@ -115,5 +115,5 @@ mxsboot tool which changes this sector number in the image.
 Booting second stage
 --------------------
 
-The second stage images can be started with the barebox 'bootm' command or
-just jumped into using the 'go' command.
+The second stage images can be started with the barebox :ref:`command_bootm` command or
+just jumped into using the :ref:`command_go` command.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
