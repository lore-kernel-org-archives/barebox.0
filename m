Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEu1i-0002lz-Iu
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 05:44:43 +0000
Received: by mail-lb0-f174.google.com with SMTP id c11so1508824lbj.19
 for <barebox@lists.infradead.org>; Tue, 05 Aug 2014 22:44:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  6 Aug 2014 09:44:06 +0400
Message-Id: <1407303846-15550-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1407303846-15550-1-git-send-email-antonynpavlov@gmail.com>
References: <1407303846-15550-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] fixup! dtc: compile fdtget
To: barebox@lists.infradead.org

---
 scripts/dtc/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/dtc/.gitignore b/scripts/dtc/.gitignore
index cdabdc9..80f6b50 100644
--- a/scripts/dtc/.gitignore
+++ b/scripts/dtc/.gitignore
@@ -2,3 +2,4 @@ dtc
 dtc-lexer.lex.c
 dtc-parser.tab.c
 dtc-parser.tab.h
+fdtget
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
