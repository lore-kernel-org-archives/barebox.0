Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gud20-0000XF-Vm
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:55:57 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Fri, 15 Feb 2019 13:53:48 +0100
Message-Id: <20190215125348.12851-9-ejo@pengutronix.de>
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
Subject: [PATCH 8/8] doc: bootchooser: add retry handling to algorithm
 description
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index ad809751dd..1680ea78ed 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -96,6 +96,11 @@ list of space-separated flags. Possible values are:
   counters of all enabled targets are zero, the ``remaining_attempts``
   counters of all enabled targets are reset to their defaults.
 
+If ``global.bootchooser.retry`` is enabled (set to ``1``), the bootchooser
+algorithm will iterate through all valid boot targets (and decrease their
+counters) until one succeeds or none is left.
+If it is disabled only one attempt will be made for each bootchooser call.
+
 Marking a Boot as Successful
 ############################
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
