Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYm6e-00065R-OE
 for barebox@lists.infradead.org; Thu, 06 Jun 2019 06:42:38 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu,  6 Jun 2019 08:42:12 +0200
Message-Id: <20190606064212.23238-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20190606064212.23238-1-r.czerwinski@pengutronix.de>
References: <20190606064212.23238-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/2] firmware: add gitignore file for *.bin
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

There is no intention to commit static firmware to this directory.
If there is a use case, gitignore can be overridden explicitly.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 firmware/.gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 firmware/.gitignore

diff --git a/firmware/.gitignore b/firmware/.gitignore
new file mode 100644
index 0000000000..a8a0dcec44
--- /dev/null
+++ b/firmware/.gitignore
@@ -0,0 +1 @@
+*.bin
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
