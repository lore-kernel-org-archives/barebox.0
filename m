Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpDTW-0003eV-5C
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 14:05:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id b15-v6so14366026wrv.10
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2018 07:05:26 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 13 Aug 2018 17:05:09 +0300
Message-Id: <20180813140509.23839-1-pmamonov@gmail.com>
In-Reply-To: <20180809065420.6475-1-s.hauer@pengutronix.de>
References: <20180809065420.6475-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] scripts/dtc: add fdtget to .gitignore
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 scripts/dtc/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/dtc/.gitignore b/scripts/dtc/.gitignore
index cdabdc95a..80f6b50fd 100644
--- a/scripts/dtc/.gitignore
+++ b/scripts/dtc/.gitignore
@@ -2,3 +2,4 @@ dtc
 dtc-lexer.lex.c
 dtc-parser.tab.c
 dtc-parser.tab.h
+fdtget
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
