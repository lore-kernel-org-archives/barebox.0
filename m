Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYRa7-00024B-JQ
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 07:43:11 +0000
Received: by mail-lf0-x242.google.com with SMTP id q11-v6so3458708lfc.7
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2018 00:42:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2018 10:39:49 +0300
Message-Id: <20180628073953.15384-9-antonynpavlov@gmail.com>
In-Reply-To: <20180628073953.15384-1-antonynpavlov@gmail.com>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 08/12] RISC-V: erizo: enable nmon
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index f754aef05e..ff0d584761 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -22,6 +22,7 @@ choice
 config MACH_ERIZO
 	bool "erizo family"
 	select HAS_DEBUG_LL
+	select HAS_NMON
 
 endchoice
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
