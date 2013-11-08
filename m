Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp41.i.mail.ru ([94.100.177.101])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VesGs-0004R8-44
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 20:03:11 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat,  9 Nov 2013 00:02:35 +0400
Message-Id: <1383940956-30602-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] scripts: Add fix_size & kernel-install to .gitignore
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 scripts/.gitignore | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/.gitignore b/scripts/.gitignore
index b88f8d8..24f6cd9 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -1,7 +1,9 @@
 bareboxenv
 bin2c
+fix_size
 gen_netx_image
 kallsyms
+kernel-install
 kwbimage
 kwboot
 mk-am35xx-spi-image
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
