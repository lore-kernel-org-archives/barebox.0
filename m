Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x236.google.com ([2a00:1450:4013:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wx-0000gS-4S
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:52 +0000
Received: by mail-ea0-f182.google.com with SMTP id o10so1718817eaj.13
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:29 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:18 +0100
Message-Id: <1384003461-21039-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/5] ARM: lib: add BAREBOX_CLK_TABLE to linker script
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds an .oftables section right before .dtb section with
BAREBOX_CLK_TABLE to ARM linker script.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/lib/barebox.lds.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index 10c63bf..d958873 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -92,6 +92,8 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
+	.oftables : { BAREBOX_CLK_TABLE() }
+
 	.dtb : { BAREBOX_DTB() }
 
 	.rel.dyn : {
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
