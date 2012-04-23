Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMDb0-0006iS-Hu
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 07:22:11 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CCD05FFA640
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 09:23:33 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Apr 2012 09:02:18 +0200
Message-Id: <1335164539-2188-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120423065650.GM20601@game.jcrosoft.org>
References: <20120423065650.GM20601@game.jcrosoft.org>
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
Subject: [PATCH 09/10] nslu2: NPE-B firmware + boot script
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/nslu2/env/NPE-B          |  Bin 0 -> 11964 bytes
 arch/arm/boards/nslu2/env/bin/init_board |    4 ++++
 2 files changed, 4 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/nslu2/env/NPE-B
 create mode 100644 arch/arm/boards/nslu2/env/bin/init_board

diff --git a/arch/arm/boards/nslu2/env/NPE-B b/arch/arm/boards/nslu2/env/NPE-B
new file mode 100644
index 0000000000000000000000000000000000000000..e62a944d267d429961eb1433b30e0ecdedc251f6
GIT binary patch
literal 11964
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

literal 0
HcmV?d00001

diff --git a/arch/arm/boards/nslu2/env/bin/init_board b/arch/arm/boards/nslu2/env/bin/init_board
new file mode 100644
index 0000000..96ece8d
--- /dev/null
+++ b/arch/arm/boards/nslu2/env/bin/init_board
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+mkdir /firmware
+cp /env/NPE-B /firmware
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
