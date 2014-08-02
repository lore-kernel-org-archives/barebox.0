Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f46.google.com ([209.85.215.46])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDS6q-0003gW-4X
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 05:44:00 +0000
Received: by mail-la0-f46.google.com with SMTP id b8so3817181lan.5
 for <barebox@lists.infradead.org>; Fri, 01 Aug 2014 22:43:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  2 Aug 2014 09:43:22 +0400
Message-Id: <1406958203-11984-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406958203-11984-1-git-send-email-antonynpavlov@gmail.com>
References: <1406958203-11984-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] MIPS: add support for metadata in barebox images
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/barebox.lds.S  | 2 ++
 arch/mips/pbl/zbarebox.lds.S | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 4ee4252..c690e71 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -49,6 +49,8 @@ SECTIONS
 	. = ALIGN(4);
 	.data : { *(.data*) }
 
+	.barebox_imd : { BAREBOX_IMD }
+
 	. = ALIGN(4);
 	.got : { *(.got*) }
 
diff --git a/arch/mips/pbl/zbarebox.lds.S b/arch/mips/pbl/zbarebox.lds.S
index 3a26942..a883fdb 100644
--- a/arch/mips/pbl/zbarebox.lds.S
+++ b/arch/mips/pbl/zbarebox.lds.S
@@ -44,6 +44,8 @@ SECTIONS
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
 
+	.barebox_imd : { BAREBOX_IMD }
+
 	_etext = .;			/* End of text and rodata section */
 
 	. = ALIGN(4);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
