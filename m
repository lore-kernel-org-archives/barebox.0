Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gud20-0000X9-V1
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:55:55 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Fri, 15 Feb 2019 13:53:43 +0100
Message-Id: <20190215125348.12851-4-ejo@pengutronix.de>
In-Reply-To: <20190215125348.12851-1-ejo@pengutronix.de>
References: <20190215125348.12851-1-ejo@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/8] doc: bootchooser: be more explicit what
 bootchooser.state_prefix is for
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index f1251d0c2e..52aa595c74 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -113,8 +113,9 @@ options not specific to any boot target.
   Otherwise the ``boot`` command will return with an error after the first failed
   boot target.
 ``global.bootchooser.state_prefix``
-  Variable prefix when *bootchooser* is used with the *state* framework as backend
-  for storing run-time data, see below.
+  If set, this makes *bootchooser* use the *state* framework as backend for
+  storing run-time data and defines the name of the state instance to use, see
+  :ref:`below <bootchooser,state_framework>`.
 ``global.bootchooser.targets``
   Space-separated list of boot targets that are used. For each entry in the list
   a corresponding
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
