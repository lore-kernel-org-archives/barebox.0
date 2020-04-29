Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqbm-0000Vd-89
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 17:34:55 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 02:34:18 +0900
Message-Id: <20200429173419.681074-5-masahiroy@kernel.org>
In-Reply-To: <20200429173419.681074-1-masahiroy@kernel.org>
References: <20200429173419.681074-1-masahiroy@kernel.org>
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
Subject: [PATCH 4/5] image: support 'powerpc' for mkimage architecture
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Currently, the -A option of mkimage is determined based on $(SRCARCH).

I want to rename arch/ppc/ to arch/powerpc/.

Support 'powerpc' for the -A option of mkimage beforehand, otherwise
the barebox.uimage build would be broken.

common/image.c in U-Boot supports both 'powerpc' and 'ppc' for the
name of IH_ARCH_PPC. Let's do likewise in barebox.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 common/image.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/image.c b/common/image.c
index 39732c57d..8199e2df1 100644
--- a/common/image.c
+++ b/common/image.c
@@ -47,6 +47,7 @@ static table_entry_t arch_name[] = {
 	{ IH_ARCH_MIPS64,	"mips64",	"MIPS 64 Bit",	},
 	{ IH_ARCH_NIOS,		"nios",		"NIOS",		},
 	{ IH_ARCH_NIOS2,	"nios2",	"NIOS II",	},
+	{ IH_ARCH_PPC,		"powerpc",	"PowerPC",	},
 	{ IH_ARCH_PPC,		"ppc",		"PowerPC",	},
 	{ IH_ARCH_S390,		"s390",		"IBM S390",	},
 	{ IH_ARCH_SH,		"sh",		"SuperH",	},
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
