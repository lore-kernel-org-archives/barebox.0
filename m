Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:4065::2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAJa4-000385-OI
 for barebox@lists.infradead.org; Mon, 15 May 2017 17:14:52 +0000
Received: from port-92-204-74-254.dynamic.qsc.de ([92.204.74.254]
 helo=localhost.localdomain)
 by stcim.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_CBC_SHA256:128)
 (Exim 4.84_2) (envelope-from <contact@stefanchrist.eu>)
 id 1dAJZg-0004hT-4P
 for barebox@lists.infradead.org; Mon, 15 May 2017 19:14:24 +0200
From: Stefan Lengfeld <contact@stefanchrist.eu>
Date: Mon, 15 May 2017 19:14:20 +0200
Message-Id: <20170515171422.1648-3-contact@stefanchrist.eu>
In-Reply-To: <20170515171422.1648-1-contact@stefanchrist.eu>
References: <20170515171422.1648-1-contact@stefanchrist.eu>
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
Subject: [PATCH 3/5] docs: fix hiding of chapter from imx.rst
To: barebox@lists.infradead.org

The files 'mxs.rst' and 'imx.rst' used the same chapter headline:

    Freescale i.MXs

This confuses sphinx. It does not support having the same headline at
the same level twice and hides the other chapter. Just rename the
chapter heading to avoid that.

And rename the subchapter headline to 'MXS boards' for clarity.

Signed-off-by: Stefan Lengfeld <contact@stefanchrist.eu>
---
 Documentation/boards/mxs.rst | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/mxs.rst b/Documentation/boards/mxs.rst
index ad10b87..82f2321 100644
--- a/Documentation/boards/mxs.rst
+++ b/Documentation/boards/mxs.rst
@@ -1,5 +1,5 @@
-Freescale i.MXs
-===============
+Freescale MXS
+=============
 
 Freescale i.MXs or MXS are a SoC family which consists of the i.MX23
 and the i.MX28. These are quite different from the regular i.MX SoCs
@@ -118,8 +118,8 @@ Booting second stage
 The second stage images can be started with the barebox :ref:`command_bootm` command or
 just jumped into using the :ref:`command_go` command.
 
-i.MXs boards
-------------
+MXS boards
+----------
 
 Not all supported boards have a description here.
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
