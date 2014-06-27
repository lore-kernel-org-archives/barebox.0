Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x231.google.com ([2a00:1450:400c:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0TnZ-0004TO-2u
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:29 +0000
Received: by mail-wg0-f49.google.com with SMTP id y10so5010373wgg.8
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:08 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:15 +0200
Message-Id: <1403866821-4029-7-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 06/12] doc: mention "make xconfig"
To: barebox@lists.infradead.org

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 Documentation/user/barebox.rst |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index bab0260..70bdedc 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -100,6 +100,9 @@ with the most popular being ``menuconfig``::
 
   make menuconfig
 
+barebox used the same configuration system as Linux, so you can use
+all the things you know, e.g. ``make xconfig``, ``make allyesconfig`` etc.
+
 Compilation
 -----------
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
