Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKj6o-0000mS-D1
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:03:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:03:24 +0100
Message-Id: <20171201110326.31598-6-s.hauer@pengutronix.de>
In-Reply-To: <20171201110326.31598-1-s.hauer@pengutronix.de>
References: <20171201110326.31598-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] Documentation: defaultenv-2: Change highlight to make
To: Barebox List <barebox@lists.infradead.org>

It's a make snippet, so change highlighting accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/defaultenv-2.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index faeeb81fbd..db74176b03 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -30,7 +30,9 @@ same file exists in a later overlay, it will overwrite the preceding one.
 Note that not all of the above directories will necessarily be
 included in your default environment, it depends on your barebox
 configuration settings. You can see the configuration variables
-and their respective included directories in ``defaultenv/Makefile``::
+and their respective included directories in ``defaultenv/Makefile``:
+
+.. code-block:: make
 
   bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW) += defaultenv-2-base
   bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
