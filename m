Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0Tnh-0004Uq-92
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:37 +0000
Received: by mail-wi0-f171.google.com with SMTP id n15so2625632wiw.16
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:15 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:21 +0200
Message-Id: <1403866821-4029-13-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 12/12] doc: link back from variables to device parameters
To: barebox@lists.infradead.org

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 Documentation/user/driver-model.rst |    2 ++
 Documentation/user/variables.rst    |    7 +++++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/driver-model.rst b/Documentation/user/driver-model.rst
index ab7d292..f4b3bb9 100644
--- a/Documentation/user/driver-model.rst
+++ b/Documentation/user/driver-model.rst
@@ -59,6 +59,8 @@ A particular device can be detected with ``detect <devname>``::
 
 For detecting all devices ``detect -a`` can be used.
 
+.. _device_parameters:
+
 Device parameters
 -----------------
 
diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index 13477a0..1aced28 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -1,5 +1,8 @@
-Configuration variables
-=======================
+Variables
+=========
+
+We already have seen some variables in :ref:`device_parameters`. But
+there is more to variables.
 
 .. _global_device:
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
