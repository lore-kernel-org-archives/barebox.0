Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6bVo-0005RK-WC
 for barebox@lists.infradead.org; Fri, 05 May 2017 11:35:08 +0000
Received: by mail-lf0-x241.google.com with SMTP id 99so310772lfu.2
 for <barebox@lists.infradead.org>; Fri, 05 May 2017 04:34:44 -0700 (PDT)
Received: from localhost.localdomain (t109.niisi.ras.ru. [193.232.173.109])
 by smtp.gmail.com with ESMTPSA id h14sm981892ljb.46.2017.05.05.04.34.41
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 May 2017 04:34:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  5 May 2017 14:34:33 +0300
Message-Id: <20170505113435.19928-4-antonynpavlov@gmail.com>
In-Reply-To: <20170505113435.19928-1-antonynpavlov@gmail.com>
References: <20170505113435.19928-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/5] MIPS: barebox.lds.S: remove unused got
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/barebox.lds.S | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index ffe846728f..cc214920e3 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -50,9 +50,6 @@ SECTIONS
 
 	.barebox_imd : { BAREBOX_IMD }
 
-	. = ALIGN(4);
-	.got : { *(.got*) }
-
 	. = .;
 	__barebox_cmd_start = .;
 	.barebox_cmd : { BAREBOX_CMDS }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
