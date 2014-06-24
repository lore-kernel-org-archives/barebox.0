Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzKEp-0008Em-1P
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 06:29:51 +0000
Received: from tellur.localdomain (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id D757F18B425B
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 08:28:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 24 Jun 2014 08:33:16 +0200
Message-Id: <1403591596-13955-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1403591596-13955-1-git-send-email-dev@lynxeye.de>
References: <1403591596-13955-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/3] scripts: tegra: add gitignore
To: barebox@lists.infradead.org

Keep the git status area clean of generated binaries.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 scripts/tegra/.gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 scripts/tegra/.gitignore

diff --git a/scripts/tegra/.gitignore b/scripts/tegra/.gitignore
new file mode 100644
index 0000000..5d5891b
--- /dev/null
+++ b/scripts/tegra/.gitignore
@@ -0,0 +1 @@
+cbootimage
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
