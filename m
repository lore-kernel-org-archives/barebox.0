Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvbn8-0000Td-03
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 05:16:19 +0000
Received: by mail-pf1-x430.google.com with SMTP id k21-v6so4935072pff.11
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2018 22:16:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 30 Aug 2018 22:15:48 -0700
Message-Id: <20180831051551.10662-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180831051551.10662-1-andrew.smirnov@gmail.com>
References: <20180831051551.10662-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/5] mfd: rave-sp: Add mapping for legacy EEPROM command
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This is needed to make rave-sp-eeprom driver work on "legacy"
firmware.

This is a backport of Linux kernel patch [1]

[1] https://lore.kernel.org/lkml/20180707024108.32373-5-andrew.smirnov@gmail.com/T/#mae2272763ae092b5b11ab128f5c22039d55557cb

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/rave-sp.c       | 2 ++
 include/linux/mfd/rave-sp.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index a711633a0..61152c491 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -592,6 +592,8 @@ static int rave_sp_default_cmd_translate(enum rave_sp_command command)
 		return 0x1F;
 	case RAVE_SP_CMD_BOOTLOADER:
 		return 0x2A;
+	case RAVE_SP_CMD_RMB_EEPROM:
+		return 0x20;
 	default:
 		return -EINVAL;
 	}
diff --git a/include/linux/mfd/rave-sp.h b/include/linux/mfd/rave-sp.h
index 6b6f90bf9..721b2095d 100644
--- a/include/linux/mfd/rave-sp.h
+++ b/include/linux/mfd/rave-sp.h
@@ -24,6 +24,7 @@ enum rave_sp_command {
 	RAVE_SP_CMD_STATUS			= 0xA0,
 	RAVE_SP_CMD_SW_WDT			= 0xA1,
 	RAVE_SP_CMD_PET_WDT			= 0xA2,
+	RAVE_SP_CMD_RMB_EEPROM			= 0xA4,
 	RAVE_SP_CMD_SET_BACKLIGHT		= 0xA6,
 	RAVE_SP_CMD_RESET			= 0xA7,
 	RAVE_SP_CMD_RESET_REASON		= 0xA8,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
