Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P06vX-00073r-Ry
	for barebox@lists.infradead.org; Mon, 27 Sep 2010 06:11:06 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 27 Sep 2010 08:09:26 +0200
Message-Id: <1285567767-938-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285567767-938-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285567767-938-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] x86: add 64bit host build support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/Makefile |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 57c5dbc..8ab40b6 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -5,7 +5,8 @@ machine-y := i386
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
-CPPFLAGS += -march=i386 -DTEXT_BASE=$(TEXT_BASE) -P
+CPPFLAGS += -march=i386 -m32 -DTEXT_BASE=$(TEXT_BASE) -P
+LDFLAGS += -m elf_i386
 
 ifndef CONFIG_MODULES
 # Add cleanup flags
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
