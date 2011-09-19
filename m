Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R5XBC-000417-SK
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 06:18:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 8C80FBF0C9
	for <barebox@lists.infradead.org>;
	Mon, 19 Sep 2011 08:22:15 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 19 Sep 2011 08:18:00 +0200
Message-Id: <1316413080-31026-1-git-send-email-j.weitzel@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] add option LOCALVERSION to common/Kconfig
To: barebox@lists.infradead.org

Add Kconfig option LOCALVERSION so you can set a customizable suffix
to the barebox version string.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 common/Kconfig |    9 +++++++++
 1 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 422d185..82e43aa 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -42,6 +42,15 @@ config HAVE_NOSHELL
 
 menu "General Settings              "
 
+config LOCALVERSION
+	string "Local version - append to the version string"
+	help
+	  Append an extra string to the end of your version string.
+	  The string you set here will be appended after the contents of
+	  any files with a filename matching localversion* in your
+	  object and source tree, in that order.  Your total string can
+	  be a maximum of 64 characters.
+
 config LOCALVERSION_AUTO
 	bool "Automatically append version information to the version string"
 	default y
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
