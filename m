Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPCJC-0004RC-35
 for barebox@lists.infradead.org; Wed, 03 Sep 2014 15:17:18 +0000
Received: by mail-la0-f49.google.com with SMTP id b17so9955734lan.22
 for <barebox@lists.infradead.org>; Wed, 03 Sep 2014 08:16:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Sep 2014 19:16:39 +0400
Message-Id: <1409757399-32489-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] Documentation: .gitignore: ignore 'commands/' generated
 directory
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/.gitignore b/Documentation/.gitignore
index 1454566..5c36dc3 100644
--- a/Documentation/.gitignore
+++ b/Documentation/.gitignore
@@ -1,2 +1,3 @@
 build
+commands
 html
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
