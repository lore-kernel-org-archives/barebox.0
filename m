Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFf-00050s-Sm
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:16 +0000
Received: by mail-lb0-x232.google.com with SMTP id k15so130114442lbg.0
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:55 -0800 (PST)
Received: from localhost.localdomain ([31.173.84.173])
 by smtp.gmail.com with ESMTPSA id vq10sm2751728lbb.14.2016.03.07.05.30.52
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Mar 2016 05:30:53 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:26 +0300
Message-Id: <1457357426-9868-16-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 15/15] MIPS: tplink-mr3020: fix "WPS" and "3G" LEDs
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
index 2400015..ef0d36d 100644
--- a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
+++ b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
@@ -46,6 +46,12 @@ skip_pll_ram_config:
 	debug_ll_ar9331_init
 	mips_nmon
 
+	/*
+	 * It is amazing but we have to enable MDIO on GPIO
+	 * to use GPIO26 for the "WPS" LED and GPIO27 for the "3G" LED.
+	 */
+	pbl_ar9331_mdio_gpio_enable
+
 	copy_to_link_location	pbl_start
 
 	.set	pop
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
