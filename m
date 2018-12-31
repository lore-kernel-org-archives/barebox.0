Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdsbr-00009s-7M
 for barebox@lists.infradead.org; Mon, 31 Dec 2018 08:07:40 +0000
Received: by mail-lf1-x141.google.com with SMTP id u18so17937627lff.10
 for <barebox@lists.infradead.org>; Mon, 31 Dec 2018 00:07:39 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 31 Dec 2018 09:07:24 +0100
Message-Id: <20181231080725.2141-5-sam@ravnborg.org>
In-Reply-To: <20181231080725.2141-1-sam@ravnborg.org>
References: <20181231080725.2141-1-sam@ravnborg.org>
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
Subject: [PATCH v1 4/5] at91sam9263ek: fix build of of_init
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Fix mistake in Makefile that prevented build of
of_init.o

With this fix smc shows up in iomem like this:

  0xffffe400 - 0xffffe5ff (size 0x00000200) at91sam9-smc0
  0xffffea00 - 0xffffebff (size 0x00000200) at91sam9-smc1

And we get access to the files from defaultenv provided by the board

Fixes: b467c262b5a7 (at91sam9263ek: enable DT support)
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9263ek/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index 66083a239..d4d5e7639 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1,7 +1,7 @@
 ifeq ($(CONFIG_OFDEVICE),)
 obj-y += init.o
 endif
-obj-$(CONFIG_OF_DEVICE) += of_init.o
+obj-$(CONFIG_OFDEVICE) += of_init.o
 
 lwl-y += lowlevel_init.o
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
