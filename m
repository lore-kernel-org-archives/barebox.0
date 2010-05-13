Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([212.27.42.3])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OCXes-0006zE-5B
	for barebox@lists.infradead.org; Thu, 13 May 2010 12:36:58 +0000
Received: from smtp3-g21.free.fr (localhost [127.0.0.1])
	by smtp3-g21.free.fr (Postfix) with ESMTP id 7D70D818183
	for <barebox@lists.infradead.org>;
	Thu, 13 May 2010 14:36:55 +0200 (CEST)
Received: from localhost.localdomain (tal33-3-82-233-81-124.fbx.proxad.net
	[82.233.81.124]) by smtp3-g21.free.fr (Postfix) with ESMTP
	for <barebox@lists.infradead.org>;
	Thu, 13 May 2010 14:36:53 +0200 (CEST)
From: Eric Benard <eric@eukrea.com>
Date: Thu, 13 May 2010 14:36:47 +0200
Message-Id: <1273754207-7763-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1273754207-7763-2-git-send-email-eric@eukrea.com>
References: <1273754207-7763-1-git-send-email-eric@eukrea.com>
	<1273754207-7763-2-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 3/3] freescale-mx*5-3-stack : fix __flash_header_start
To: barebox@lists.infradead.org

_start is now exception_vectors since it was rewritten in C
(not tested on these boards but compile should fail without
this patch)

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 board/freescale-mx25-3-stack/3stack.c       |    2 +-
 board/freescale-mx35-3-stack/flash_header.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/board/freescale-mx25-3-stack/3stack.c b/board/freescale-mx25-3-stack/3stack.c
index 5b802ad..f5316bf 100644
--- a/board/freescale-mx25-3-stack/3stack.c
+++ b/board/freescale-mx25-3-stack/3stack.c
@@ -41,7 +41,7 @@ extern unsigned long _stext;
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b _start\n");
+	__asm__ __volatile__("b exception_vectors\n");
 }
 
 struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
diff --git a/board/freescale-mx35-3-stack/flash_header.c b/board/freescale-mx35-3-stack/flash_header.c
index 968a948..171c499 100644
--- a/board/freescale-mx35-3-stack/flash_header.c
+++ b/board/freescale-mx35-3-stack/flash_header.c
@@ -5,7 +5,7 @@ extern unsigned long _stext;
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b _start\n");
+	__asm__ __volatile__("b exception_vectors\n");
 }
 
 struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
