Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFT4b-0006OC-DR
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:33 +0000
Received: by lagx9 with SMTP id x9so31440816lag.1
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:16 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.15
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:50 +0300
Message-Id: <1436991230-14251-13-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
References: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 12/12] WIP: sandbox_defconfig: enable network testing-related
 stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/configs/sandbox_defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 909969a..1c42721 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -1,3 +1,4 @@
+CONFIG_MALLOC_SIZE=0x4000000
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -16,6 +17,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
@@ -30,6 +32,7 @@ CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OF_DISPLAY_TIMINGS=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_PICOTCP=y
 CONFIG_NET_NFS=y
@@ -45,3 +48,5 @@ CONFIG_DRIVER_NET_TAP=y
 # CONFIG_PINCTRL is not set
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_DIGEST_SHA1_GENERIC=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
