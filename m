Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V5tzV-0005l9-Be
 for barebox@lists.infradead.org; Sun, 04 Aug 2013 08:48:42 +0000
Received: by mail-la0-f52.google.com with SMTP id fq13so1370111lab.39
 for <barebox@lists.infradead.org>; Sun, 04 Aug 2013 01:48:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  4 Aug 2013 12:46:01 +0400
Message-Id: <1375605962-4683-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1375605962-4683-1-git-send-email-antonynpavlov@gmail.com>
References: <1375605962-4683-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] resurrect CONFIG_PANIC_HANG option
To: barebox@lists.infradead.org

The CONFIG_PANIC_HANG a part of the U-Boot heritage.
It is used in the barebox code, but there is no mention
of this option in Kconfig files.

Sometimes this option is very helpful, so
let's resurrect it.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/Kconfig | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 88bc677..6322d9d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -256,6 +256,17 @@ config RELOCATABLE
 	  allowing it to relocate to the end of the available RAM. This
 	  way you have the whole memory in a single piece.
 
+config PANIC_HANG
+	bool "hang the system in case of a fatal error"
+	help
+	  This option enables stop of the system in case of a
+	  fatal error, so that you have to reset it manually.
+	  This is probably NOT a good idea for an embedded
+	  system where you want the system to reboot
+	  automatically as fast as possible, but it may be
+	  useful during development since you can try to debug
+	  the conditions that lead to the situation.
+
 config PROMPT
 	string
 	prompt "barebox command prompt"
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
