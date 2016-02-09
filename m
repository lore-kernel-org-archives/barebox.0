Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTAji-0000sv-9v
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 16:01:55 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  9 Feb 2016 17:01:20 +0100
Message-Id: <1455033684-21067-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 1/5] Documentation: booting linux: improve wording
To: barebox@lists.infradead.org

'bootm' is the lowlevel boot command, in contrast to 'boot', which is
more highlevel.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 5b021f0..98628fa 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -6,7 +6,7 @@ Booting Linux
 Introduction
 ------------
 
-The basic boot command in barebox is :ref:`command_bootm`. This command
+The lowlevel boot command in barebox is :ref:`command_bootm`. This command
 can be used directly, but there is also a :ref:`command_boot` command
 which offers additional features like a boot sequence which tries to
 boot different entries until one succeeds.
@@ -14,7 +14,7 @@ boot different entries until one succeeds.
 The bootm command
 -----------------
 
-The :ref:`command_bootm` command is the basic boot command. Depending on the
+The :ref:`command_bootm` command is the lowlevel boot command. Depending on the
 architecture the bootm command handles different image types. On ARM the
 following images are supported:
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
