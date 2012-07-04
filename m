Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SmPJR-0008RM-3T
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 13:08:10 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Wed,  4 Jul 2012 15:07:52 +0200
Message-Id: <1341407274-11848-2-git-send-email-maxime.ripard@free-electrons.com>
In-Reply-To: <1341407274-11848-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1341407274-11848-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH 1/2] Add bootargs script to boot on ext filesystems
To: barebox@lists.infradead.org
Cc: brian@crystalfontz.com

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: Brian Lilly <brian@crystalfontz.com>
---
 defaultenv-2/base/bin/bootargs-root-ext |   12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 defaultenv-2/base/bin/bootargs-root-ext

diff --git a/defaultenv-2/base/bin/bootargs-root-ext b/defaultenv-2/base/bin/bootargs-root-ext
new file mode 100644
index 0000000..45fcd5a
--- /dev/null
+++ b/defaultenv-2/base/bin/bootargs-root-ext
@@ -0,0 +1,12 @@
+#!/bin/sh
+
+while getopt "m:r:" opt; do
+	if [ ${opt} = m ]; then
+		part=${OPTARG}
+	fi
+	if [ ${opt} = r ]; then
+		type=${OPTARG}
+	fi
+done
+
+global.linux.bootargs.root="root=/dev/$part rootfstype=ext$type rootwait"
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
