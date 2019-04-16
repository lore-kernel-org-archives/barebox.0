Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from chandra.tablix.org ([2a00:ee2:100:3a01::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hGKhC-000855-Sr
 for barebox@lists.infradead.org; Tue, 16 Apr 2019 09:48:08 +0000
Received: from 213.172.225.144.ipv4.telemach.net ([213.172.225.144]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1hGKgv-0006DS-Ak
 for barebox@lists.infradead.org; Tue, 16 Apr 2019 11:47:49 +0200
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Tue, 16 Apr 2019 11:47:48 +0200
Message-Id: <20190416094748.14548-1-tomaz.solc@tablix.org>
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
Subject: [PATCH] doc: variables: nv vars are saved automatically.
To: barebox@lists.infradead.org

In recent barebox versions, nv variables are saved automatically upon reset or
kernel start (console message "nv variable modified, will save nv variables on
shutdown" warns about that). There is no need to explicitly call saveenv.

This change was introduced in 3fadbdae.
---
 Documentation/user/variables.rst | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index ddfd48574..cb1296c06 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -46,9 +46,11 @@ currently running barebox, while changing a nv variable changes the
 behaviour persistently over reboots.
 
 nv variables can be created or removed with the :ref:`command_nv`
-command. The nv variables are made persistent using the environment
-facilities of barebox, so a :ref:`command_saveenv` must be issued to store the
-actual values.
+command.
+
+The nv variables are made persistent using the environment facilities of
+barebox. They are saved automatically to the storage medium whenever barebox
+shuts down (that is, a :ref:`command_reset` is issued or a kernel is started).
 
 examples:
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
