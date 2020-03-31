Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKbN-0004pJ-EV
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 17:23:02 +0000
Received: by mail-pg1-x544.google.com with SMTP id k191so10610188pgc.13
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 10:23:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 10:22:52 -0700
Message-Id: <20200331172252.9703-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] mfd: rave-sp: Fix rave_sp_emulated_get_status()
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Original code in rave_sp_emulated_get_status() got the meaning of
RAVE_SP_STATUS_GS_FIRMWARE_MODE wrong. Invert it to correctly detect
if RAVE SP device is in bootloader mode or not.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/rave-sp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index 67f7d4c65..c6ad57d51 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -661,7 +661,7 @@ static int rave_sp_emulated_get_status(struct rave_sp *sp,
 		return ret;

 	status->general_status =
-		firmware_mode ? RAVE_SP_STATUS_GS_FIRMWARE_MODE : 0;
+		firmware_mode ? 0 : RAVE_SP_STATUS_GS_FIRMWARE_MODE;

 	return 0;
 }
--
2.21.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
