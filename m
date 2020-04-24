Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3Y8-0007mD-9L
 for barebox@lists.infradead.org; Fri, 24 Apr 2020 18:59:45 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 25 Apr 2020 03:59:22 +0900
Message-Id: <20200424185924.705754-4-masahiroy@kernel.org>
In-Reply-To: <20200424185924.705754-1-masahiroy@kernel.org>
References: <20200424185924.705754-1-masahiroy@kernel.org>
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
Subject: [PATCH 4/6] kbuild: make DEFCONFIG_LIST work
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Most of the Kconfig commands (except defconfig and all*config) read
the .config file as a base set of CONFIG options.

When it does not exist, the files in DEFCONFIG_LIST are searched in
this order and loaded if found.

This is not working for barebox because ARCH_DEFCONFIG is not set by
anyone, nor arch/$(ARCH)/defconfig exists.

Fix this.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 common/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 400c0553c..893bdeaff 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1,8 +1,7 @@
 config DEFCONFIG_LIST
 	string
 	option defconfig_list
-	default ARCH_DEFCONFIG
-	default "arch/$(ARCH)/defconfig"
+	default "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)"
 
 config GREGORIAN_CALENDER
 	bool
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
