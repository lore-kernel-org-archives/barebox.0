Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtU59-0005yI-Em
 for barebox@lists.infradead.org; Tue, 03 Nov 2015 05:24:33 +0000
Received: by lfbf136 with SMTP id f136so5499269lfb.0
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 21:24:09 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-39-184.pppoe.mtu-net.ru.
 [91.79.39.184])
 by smtp.gmail.com with ESMTPSA id dz9sm4494605lbc.40.2015.11.02.21.24.08
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 02 Nov 2015 21:24:09 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  3 Nov 2015 08:23:56 +0300
Message-Id: <1446528236-30236-10-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1446528236-30236-1-git-send-email-antonynpavlov@gmail.com>
References: <1446528236-30236-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 9/9] MIPS: tplink-mr3020_defconfig: enable pbl;
 make image shorter
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/tplink-mr3020_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/configs/tplink-mr3020_defconfig b/arch/mips/configs/tplink-mr3020_defconfig
index b675993..f2ba2da 100644
--- a/arch/mips/configs/tplink-mr3020_defconfig
+++ b/arch/mips/configs/tplink-mr3020_defconfig
@@ -1,6 +1,9 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="tplink-mr3020"
 CONFIG_MACH_MIPS_ATH79=y
+CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MALLOC_TLSF=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_LONGHELP=y
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
