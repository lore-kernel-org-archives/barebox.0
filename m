Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0Tnc-0004Ts-Gi
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:33 +0000
Received: by mail-wi0-f169.google.com with SMTP id hi2so2519654wib.2
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:10 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:17 +0200
Message-Id: <1403866821-4029-9-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
References: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 08/12] doc: add hint on how to calculate in hush
To: barebox@lists.infradead.org

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 Documentation/user/hush.rst |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/user/hush.rst b/Documentation/user/hush.rst
index 2a0e630..ba4f062 100644
--- a/Documentation/user/hush.rst
+++ b/Documentation/user/hush.rst
@@ -50,3 +50,11 @@ example the :ref:`command_echo` command has the ``-a FILE`` option for appending
 a file and the ``-o FILE`` option for overwriting a file. The readline
 command requires a variable name as argument in which the line will be
 stored.
+
+**NOTE:** hust feels like a normal Unix shell, but it cannot calculate by
+itself, i.e. $(($A/2)) won't work. Calculation can however be done
+with :ref:`command_let`::
+
+  A=10
+  let B=$A/2
+  echo $B
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
