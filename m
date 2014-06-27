Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0TnU-0004RI-3d
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:24 +0000
Received: by mail-wg0-f41.google.com with SMTP id a1so4990144wgh.12
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:02 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:10 +0200
Message-Id: <1403866821-4029-2-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
References: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 01/12] doc: .gitignore generated files
To: barebox@lists.infradead.org

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 .gitignore |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/.gitignore b/.gitignore
index 28f319a..135fdeb 100644
--- a/.gitignore
+++ b/.gitignore
@@ -67,6 +67,8 @@ include/generated
 
 # Generated files
 Doxyfile.version
+Documentation/commands/*.rst
+doctrees/
 
 # stgit generated dirs
 patches-*
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
