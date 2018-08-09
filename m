Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fntni-000691-Ri
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 22:53:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id l9-v6so3529570pff.9
 for <barebox@lists.infradead.org>; Thu, 09 Aug 2018 15:52:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  9 Aug 2018 15:52:29 -0700
Message-Id: <20180809225230.21989-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] ARM: VFxxx: zii-vf610-dev: Add newline before error banner
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add a cosmetic newline to the beginning of the error banner printed
when we encounter unidentified board type. This way we'd avoid
artifacts like:

barebox@ZII RDU1 Board:/ >*********************************
* Unknown system type: 00000004

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index f3d67501a..d2f30d7ab 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -111,7 +111,7 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 		if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 			relocate_to_current_adr();
 			setup_c();
-			puts_ll("*********************************\n");
+			puts_ll("\n*********************************\n");
 			puts_ll("* Unknown system type: ");
 			puthex_ll(system_type);
 			puts_ll("\n* Assuming devboard revision B\n");
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
