Delivery-date: Wed, 07 Jan 2026 15:57:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdUyH-002HeV-1R
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 15:57:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdUyG-0002tS-UI
	for lore@pengutronix.de; Wed, 07 Jan 2026 15:57:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QsCIQjnC15pxDCAjnreDPR4cuLpBXw+8VLf8p4wa4lc=; b=fk8zMDvmciJv4JYjdXyoRmMusW
	gGXYxI7LrCQ5inZNuRD01AfjjMWYPE3xCRhg4NqpPD/mSEc9rStNwsmiF7Zzv6Ey6Hn3+41hOUxqP
	9UdpZQlDfv32U/QoEZXWs0CCrN/SyzwX/U+oTU8eR3kUyMMW8+wazJZl1MU9zG5BYNpeX9V4rJNb+
	niUm4xKdnNQgBBe0QR9BBy+wA9GN1XR290xkpooUYk6PDE411Q+lPH1Ob1jBZE+tPY9puB1IbImzz
	oxxwbhyxMFT+5X0nJ/yp+TRgg7ir3UF4d2hkibgvSRu8mKtaouar//Sxc0XsnzAXykLWmkn7CL6Ov
	QeZqJLJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdUxi-0000000F8Va-1Vt9;
	Wed, 07 Jan 2026 14:56:38 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdUxg-0000000F8V4-2oYQ
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 14:56:37 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
	id DEC06106628; Wed,  7 Jan 2026 15:56:33 +0100 (CET)
Received: from localhost (unknown [IPv6:2001:9e8:6958:fd01:2662:6854:ff68:2958])
	by magratgarlick.emantor.de (Postfix) with ESMTPSA id 83822106617;
	Wed,  7 Jan 2026 15:56:33 +0100 (CET)
From: Rouven Czerwinski <rouven.czerwinski@linaro.org>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <rouven.czerwinski@linaro.org>
Date: Wed,  7 Jan 2026 15:56:28 +0100
Message-ID: <20260107145628.3825096-1-rouven.czerwinski@linaro.org>
X-Mailer: git-send-email 2.51.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_065636_860916_886EDFE9 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: imx8mq-evk: warn for EVKB variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is another EVKB variant of the MCIMX8M-EVK, which is currently not
compatible with barebox. Add a warning to the documentation.

Signed-off-by: Rouven Czerwinski <rouven.czerwinski@linaro.org>
---
 Documentation/boards/imx/nxp-imx8mq-evk.rst | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
index d98f94ac61..a15c535593 100644
--- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
@@ -8,6 +8,9 @@ Board comes with:
 
 Not including booting via serial, the device can boot from either SD or eMMC.
 
+.. warning:: Barebox is currently not compatible with the MCIMX8M-EVK**B**
+   variant with 4GiB of RAM.
+
 Downloading DDR PHY and HDMI/eDP Firmware
 -----------------------------------------
 
-- 
2.51.2



