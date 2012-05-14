Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STqjO-0007bq-1t
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:34:15 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 14 May 2012 12:34:12 +0400
Message-Id: <1336984452-32194-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1336984452-32194-1-git-send-email-shc_work@mail.ru>
References: <1336984452-32194-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] Add compressed barebox_default_env to .gitignore
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 .gitignore |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/.gitignore b/.gitignore
index 8a5c583..8e208e0 100644
--- a/.gitignore
+++ b/.gitignore
@@ -36,7 +36,7 @@ barebox.netx
 barebox.map
 System.map
 Module.symvers
-barebox_default_env
+barebox_default_env*
 
 #
 # Generated include files
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
