Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wa09c-0001ru-Ov
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 09:59:49 +0000
Received: by mail-lb0-f177.google.com with SMTP id z11so6562596lbi.22
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 02:59:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 13:59:18 +0400
Message-Id: <1397555958-28666-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands: loady: fix Y-Modem/G option name in help message
To: barebox@lists.infradead.org

Actually loady command uses '-g' option for Y-Modem/G mode
selection; see loady() function:

    while ((opt = getopt(argc, argv, "b:t:g")) > 0) {
        switch (opt) {
    ...
        case 'g':
            is_ymodemg = 1;
            break;

By mistake help message show '-y' option for Y-Modem/G mode
selection.

This patch fixes the problem.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/loadxy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index 7a91286..93a423c 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -241,7 +241,7 @@ BAREBOX_CMD_END
 
 static const __maybe_unused char cmd_loady_help[] =
 	"[OPTIONS]\n"
-	"  -y        - use Y-Modem/G (only for lossless tty as USB)\n"
+	"  -g        - use Y-Modem/G (only for lossless tty as USB)\n"
 	"  -t name   - console device name to use - defaults to current console\n"
 	"  -b baud   - baudrate at which to download - defaults to console baudrate\n";
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
