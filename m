Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dKm0a-0000wA-Pq
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 13:37:29 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 24077A0014F
 for <barebox@lists.infradead.org>; Tue, 13 Jun 2017 15:38:04 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Tue, 13 Jun 2017 15:37:00 +0200
Message-Id: <1497361020-33828-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH] defaultenv: bin: init: Add sourcing of config-expansions
To: barebox@lists.infradead.org

This patch adds a further layer to the config hierarchy. It allows a
dynamic configuration of expansions.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 defaultenv/defaultenv-2-base/bin/init | 1 +
 1 file changed, 1 insertion(+)

diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
index 7af3c7d..a93ea58 100644
--- a/defaultenv/defaultenv-2-base/bin/init
+++ b/defaultenv/defaultenv-2-base/bin/init
@@ -25,6 +25,7 @@ magicvar -a global.allow_color "Allow color on the console (boolean)"
 [ -z "${global.editcmd}" ] && global.editcmd=sedit
 
 [ -e /env/config-board ] && /env/config-board
+[ -e /env/config-expansions ] && /env/config-expansions
 /env/config
 
 # allow to stop the boot before execute the /env/init/*
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
