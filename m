Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x236.google.com ([2607:f8b0:400e:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqJ2-0001pU-AJ
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:44 +0000
Received: by mail-pf0-x236.google.com with SMTP id c22-v6so159827pfi.2
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:51 -0700
Message-Id: <20180612205310.25745-36-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 35/54] Kbuild: Add $(quote)
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
