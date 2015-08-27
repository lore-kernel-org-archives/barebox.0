Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUz4a-00080x-Ef
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 15:26:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Aug 2015 17:26:14 +0200
Message-Id: <1440689174-731-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440689174-731-1-git-send-email-s.hauer@pengutronix.de>
References: <1440689174-731-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] login: explain PASSWORD_DEFAULT option
To: Barebox List <barebox@lists.infradead.org>

This option looks like it takes the default password, but instead
it takes a filename of a file which contains the password encoded
with the selected password digest.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 03a0dc9..877d385 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -450,8 +450,14 @@ config PASSWORD
 
 config PASSWORD_DEFAULT
 	string
-	prompt "Password default"
+	prompt "Password default file"
 	depends on PASSWORD
+	help
+	  Set this to a file which is used as default password file. This file
+	  has to contain the passwd encoded with the selected password digest.
+	  i.e.:
+	  echo -ne "MyPassword" | md5sum | while read a b; do echo $a > passwdfile; done
+
 
 if PASSWORD
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
