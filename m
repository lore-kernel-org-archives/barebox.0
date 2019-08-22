Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gjb-0005lY-MM
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:38:13 +0000
Received: from geraet.fritz.box (39-236-142-46.pool.kielnet.net
 [46.142.236.39]) (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 930E56000D
 for <barebox@lists.infradead.org>; Thu, 22 Aug 2019 06:38:08 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:38:02 +0200
Message-Id: <20190822063802.17510-1-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
References: <20190822055114.931-1-ahmad@a3f.at>
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
Subject: [PATCH] ARM: don't use -no-thumb-interwork if unavailable
To: barebox@lists.infradead.org

Clang doesn't support the option and even on GCC it's ignored whenver
-mabi=aapcs-linux is specified[1]:

  -mthumb-interwork

	[..]. In AAPCS configurations this option is meaningless.

We can't get rid of the option
altogether because that breaks old GCC builds[2], but for now we can
make -mno-thumb-interwork optional, which is what this patch does.

[1]: https://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html
[2]: https://patchwork.kernel.org/patch/10306823/

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
missed this one the first time, but here it is
---
 arch/arm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5cb46f661335..ef85f9d72823 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -52,7 +52,7 @@ ifeq ($(CONFIG_CPU_V8), y)
 CFLAGS_ABI	:=-mabi=lp64
 else
 ifeq ($(CONFIG_AEABI),y)
-CFLAGS_ABI	:=-mabi=aapcs-linux -mno-thumb-interwork
+CFLAGS_ABI	:=-mabi=aapcs-linux $(call cc-option,-mno-thumb-interwork)
 else
 CFLAGS_ABI	:=$(call cc-option,-mapcs-32,-mabi=apcs-gnu) $(call cc-option,-mno-thumb-interwork,)
 endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
