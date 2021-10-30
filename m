Delivery-date: Sat, 30 Oct 2021 16:21:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpEC-0002ck-HB
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 16:21:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpEB-0008P4-MX
	for lore@pengutronix.de; Sat, 30 Oct 2021 16:21:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JqSO3maUzi/4S5HawqYwaStaXnt6r8nIWrjdWYBu6+E=; b=ohC7TFOyTgXPzh
	gq46SgGeMy7kFlOdZ5JzITTixJ9BHC9XfZ1yEqpASP510BZt9jObuft9D3POcW+ZkCKyOd2wDmupI
	ibcXnIVkVEKBoTfIR9E37c9PSV+t6Mpkk1EnzF3gMjayHKnX4RX/i42gk0J5zJtcwJQNit4FXDusV
	MQ2NwjVq76Nk9V4zEKRUs/MaMYa/hUg/EnBd3uIEwygmHN1xPSVaWdD3GWf2R9L8JVd7hNXc6Hxhr
	j9MbVvbFTw63q+0aLe0ycaVRz1hveLhPyxqAK7J5mjRzaaFEVQnI43f5u6xDOsSTLbDbmxWy6Pl0Q
	rDmtVjIkLM8wCag9qH1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgpD0-00D9Yp-OI; Sat, 30 Oct 2021 14:19:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgpCv-00D9Xe-NG
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 14:19:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpCu-00087y-Gt; Sat, 30 Oct 2021 16:19:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpCu-009GKN-20; Sat, 30 Oct 2021 16:19:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 16:19:34 +0200
Message-Id: <20211030141934.2207659-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_071941_795103_872F334E 
X-CRM114-Status: GOOD (  13.15  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: i.MX8M: nxp-imx8mn-evk: use regular i2c read for
 device detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The barebox-nxp-imx8mn-evk image supports both DDR4 and LPDDR4 variants
by probing for the PMIC in use as the former uses a BD71847 and the
latter a PCA9450B.

The PCA9450B was observed to hang on the 0-byte (probe) reads.
This results in I/O errors during later PMIC writes and the image
would only boot on the EVKs with DDR4, which have the other PMIC.

Fix this by switching to a 1 byte read instead. Change tested on
i.MX8MN DDR4 EVK as well as another board with LPDDR4.

While at it, note the address of the PMIC in the error message, so it's
clear, what the result of the i2c probe was.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index bac632aa431b..de53213ebc77 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -56,7 +56,7 @@ static void pmic_reg_write(void *i2c, int addr, int reg, uint8_t val)
 
 	ret = i2c_fsl_xfer(i2c, msgs, ARRAY_SIZE(msgs));
 	if (ret != 1)
-		pr_err("Failed to write to pmic %d\n", ret);
+		pr_err("Failed to write to pmic@%x: %d\n", addr, ret);
 }
 
 static int power_init_board_pca9450(void *i2c, int addr)
@@ -66,7 +66,8 @@ static int power_init_board_pca9450(void *i2c, int addr)
 		{
 			.addr = addr,
 			.buf = buf,
-			.flags = I2C_M_RD
+			.flags = I2C_M_RD,
+			.len = 1,
 		},
 	};
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

