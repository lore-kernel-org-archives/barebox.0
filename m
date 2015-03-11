Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo6.mail-out.ovh.net ([46.105.76.65])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVgui-0000dh-9O
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 13:43:09 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 35A10FFA0A5
 for <barebox@lists.infradead.org>; Wed, 11 Mar 2015 14:42:41 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Mar 2015 14:41:54 +0100
Message-Id: <1426081316-14657-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426081316-14657-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150311132634.GN30554@ns203013.ovh.net>
 <1426081316-14657-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/8] password: add support for sha512
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig    | 4 ++++
 common/password.c | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 8a8912a..68b20b7 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -449,6 +449,10 @@ config PASSWD_SUM_SHA256
 	bool "SHA256"
 	select SHA256
 
+config PASSWD_SUM_SHA512
+	bool "SHA512"
+	select SHA512
+
 endchoice
 
 endif
diff --git a/common/password.c b/common/password.c
index 4c33152..6ecf717 100644
--- a/common/password.c
+++ b/common/password.c
@@ -33,6 +33,8 @@
 #define PASSWD_SUM "sha1"
 #elif defined(CONFIG_PASSWD_SUM_SHA256)
 #define PASSWD_SUM "sha256"
+#elif defined(CONFIG_PASSWD_SUM_SHA512)
+#define PASSWD_SUM "sha512"
 #endif
 
 int password(unsigned char *passwd, size_t length, int flags, int timeout)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
