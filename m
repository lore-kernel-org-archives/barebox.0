Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFe-0004xf-4w
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:12 +0000
Received: by mail-lb0-x22a.google.com with SMTP id bc4so129873579lbc.2
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:49 -0800 (PST)
Received: from localhost.localdomain ([31.173.84.173])
 by smtp.gmail.com with ESMTPSA id vq10sm2751728lbb.14.2016.03.07.05.30.47
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Mar 2016 05:30:47 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:21 +0300
Message-Id: <1457357426-9868-11-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 10/15] MIPS: black-swift_defconfig: use cached memory region
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/black-swift_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/configs/black-swift_defconfig b/arch/mips/configs/black-swift_defconfig
index 7444968..dda863d 100644
--- a/arch/mips/configs/black-swift_defconfig
+++ b/arch/mips/configs/black-swift_defconfig
@@ -9,6 +9,8 @@ CONFIG_NMON_USER_START_DELAY=0x5
 CONFIG_NMON_HELP=y
 CONFIG_PBL_IMAGE=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x82000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
