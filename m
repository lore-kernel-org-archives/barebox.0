Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2h3A-0002Mt-RE
 for barebox@lists.infradead.org; Mon, 24 Apr 2017 16:41:24 +0000
Received: by mail-lf0-x243.google.com with SMTP id 75so17319790lfs.3
 for <barebox@lists.infradead.org>; Mon, 24 Apr 2017 09:41:00 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 24 Apr 2017 19:40:54 +0300
Message-Id: <20170424164054.22574-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands: add spd_decode to the 'hardware manipulation' group
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/spd_decode.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/spd_decode.c b/commands/spd_decode.c
index 2bedcf05c5..08b9589622 100644
--- a/commands/spd_decode.c
+++ b/commands/spd_decode.c
@@ -59,5 +59,6 @@ BAREBOX_CMD_START(spd_decode)
 	.cmd	= do_spd_decode,
 	BAREBOX_CMD_DESC("Decode SPD EEPROM")
 	BAREBOX_CMD_OPTS("FILE")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_spd_decode_help)
 BAREBOX_CMD_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
