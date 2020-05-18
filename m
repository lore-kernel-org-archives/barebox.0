Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajzN-0007D3-Dx
 for barebox@lists.infradead.org; Mon, 18 May 2020 17:55:47 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 02:54:57 +0900
Message-Id: <20200518175458.178943-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/2] kconfig: add 'option modules' to allow tristate options
 to become m
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Since commit 18895514dc5e ("kconfig: update to v3.18-rc6"), tristate
symbols cannot become 'm'.

In old days of Linux, CONFIG_MODULES was the special hard-coded in
Kconfig.

The current Kconfig does not know which option is it. You need to
specify 'option modules' to teach Kconfig that it is the module
support switch.

Add 'option modules' to revive the module builds.

Fixes: 18895514dc5e ("kconfig: update to v3.18-rc6")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

The module feature has been broken for 8 years,
and nobody has pointed it out...

 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 460ac487c..7a99d20bf 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -316,6 +316,7 @@ config MODULES
 	depends on HAS_MODULES
 	depends on EXPERIMENTAL
 	bool "module support"
+	option modules
 	help
 	  This option enables support for loadable modules via insmod. Module
 	  support is quite experimental at the moment. There is no convenient
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
