Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x22e.google.com ([2607:f8b0:400e:c05::22e])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQdRP-0000Sp-Pn
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 18:45:52 +0000
Received: by mail-pg0-x22e.google.com with SMTP id r21-v6so3107734pgv.4
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 11:45:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jun 2018 11:44:28 -0700
Message-Id: <20180606184431.10348-36-andrew.smirnov@gmail.com>
In-Reply-To: <20180606184431.10348-1-andrew.smirnov@gmail.com>
References: <20180606184431.10348-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 35/38] Kbuild: Add $(quote)
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Kbuild.include | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index f3771902b..512d21732 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -3,6 +3,7 @@
 
 # Convenient variables
 comma   := ,
+quote   := "
 squote  := '
 empty   :=
 space   := $(empty) $(empty)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
