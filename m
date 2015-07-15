Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFTaW-0007Er-Fv
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:47:32 +0000
Received: by laem6 with SMTP id m6so31912350lae.0
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:47:10 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id y3sm1417340laj.8.2015.07.15.13.47.09
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:47:09 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:47:03 +0300
Message-Id: <1436993223-14627-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] sandbox_defconfig: enable 'echo -e' support as defenv uses it
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/configs/sandbox_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index ec045f7..2ee1fa8 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -17,6 +17,7 @@ CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
