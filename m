Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCvh2-0001yZ-RW
 for barebox@lists.infradead.org; Sun, 18 Jan 2015 19:39:29 +0000
Received: from antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A
 (p4FD7DEA0.dip0.t-ipconnect.de [79.215.222.160])
 by lynxeye.de (Postfix) with ESMTPA id 2CB6326C2002
 for <barebox@lists.infradead.org>; Sun, 18 Jan 2015 20:38:30 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 18 Jan 2015 20:38:24 +0100
Message-Id: <1421609904-14161-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1421609904-14161-1-git-send-email-dev@lynxeye.de>
References: <1421609904-14161-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/2] docs: fix broken reference
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 Documentation/user/variables.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index 974ab8822195..ea99eb61137e 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -43,8 +43,8 @@ behaviour persistently over reboots.
 
 nv variables can be created or removed with the :ref:`command_nv`
 command. The nv variables are made persistent using the environment
-facilities of barebox, so a :ref:`saveenv` must be issued to store the actual
-values.
+facilities of barebox, so a :ref:`command_saveenv` must be issued to store the
+actual values.
 
 examples:
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
