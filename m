Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XPqum-0007vJ-3T
 for barebox@lists.infradead.org; Fri, 05 Sep 2014 10:38:48 +0000
Received: by mail-lb0-f175.google.com with SMTP id u10so13042987lbd.6
 for <barebox@lists.infradead.org>; Fri, 05 Sep 2014 03:38:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  5 Sep 2014 14:38:14 +0400
Message-Id: <1409913494-17780-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] Documentation: davinci.rst: fix code-block formatting
To: barebox@lists.infradead.org

Wrong formatting leads to this error message during 'make docs':

  davinci.rst:35: ERROR: Error in "code-block" directive:
                  maximum 1 argument(s) allowed, 4 supplied.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/davinci.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/boards/davinci.rst b/Documentation/boards/davinci.rst
index a2ddc3c..cf0c36e 100644
--- a/Documentation/boards/davinci.rst
+++ b/Documentation/boards/davinci.rst
@@ -33,12 +33,14 @@ Running barebox
   4. Upload ``barebox.bin`` via Ymodem
 
 .. code-block:: none
+
     virt2real ># loady
 ..
 
   5. Run barebox
 
 .. code-block:: none
+
     virt2real ># go 0x82000000
 ..
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
