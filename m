Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwmYF-00006N-SW
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 10:57:50 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 12:57:15 +0200
Message-Id: <20180903105715.24263-6-m.niestroj@grinn-global.com>
In-Reply-To: <20180903105715.24263-1-m.niestroj@grinn-global.com>
References: <20180903105715.24263-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 5/5] scripts: imx: Do not include autoconf.h
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

All required defines are passed with command line -D options, so there
is no need to include full autoconf.h header. Additionally there were
compile time warnings printed when passed variables (CONFIG_HABV*) had
embedded environment variables, because macros in autoconf.h were
redefining these passed as command line arguments (-include is
processed later than -D option).

Remove including autoconf.h header, so CONFIG_HABV* macros are only
defined with command line arguments, properly expanding embedded
variables.

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
Changes rfc -> v1: new patch

 scripts/Makefile.lib | 1 -
 1 file changed, 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 3b1308605..c254b5b79 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -433,7 +433,6 @@ cmd_imximage_S_dcd=						\
 
 imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       -I $(srctree)/include -I $(srctree)/arch/arm/mach-imx/include \
-      -include include/generated/autoconf.h \
       -DCONFIG_HABV3_SRK_PEM=\"$(CONFIG_HABV3_SRK_PEM)\" \
       -DCONFIG_HABV3_CSF_CRT_DER=\"$(CONFIG_HABV3_CSF_CRT_DER)\" \
       -DCONFIG_HABV3_IMG_CRT_DER=\"$(CONFIG_HABV3_IMG_CRT_DER)\" \
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
