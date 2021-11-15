Delivery-date: Mon, 15 Nov 2021 14:04:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbeb-0000Av-Ea
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 14:04:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbea-00074i-GA
	for lore@pengutronix.de; Mon, 15 Nov 2021 14:04:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jiyAJ2qTOLgeiPHhUnu+qfUQzrKB4QQhfT9CGlFRHQ=; b=DXJ0wXpCd1uRFI
	LtSmq3KKYepiuUeA3rNjwfLdY4H8unWuJXqXf9xIFz3WX4kjAPMU0IKkJcRwqALWiCSaju/V0gnfo
	VebE/+Jydh2uFQ4zivolBE9hL2bIqctYjB1cg40BhQrvJLaINUKgp2HBj8pSTKUVPNTGwtFoZt4CB
	8ul+CyDy50mw6O6SiuGAMnmU0epH0n6etBZ0x/dT/au4ob+9qz7ufPdBPaKw5stFjq0TKG8n/pUHd
	EY6vCt4SGyG7UICI/I9A38jkK38wN6BRMieGNo4yOa27F4tqNQJFOY2LHQCH+neylXd1tmBaVa2JI
	p8zgHXXhyeelZuvI/Q/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmbd6-00FZEJ-UH; Mon, 15 Nov 2021 13:02:37 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmbct-00FZA7-9y
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 13:02:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6uChhM3CGvQt6+K64cbjZDN1ACaMGREgMuHCoKt57r8=; b=g0UJ4rVw4ABMX+ApD/KQcasqTW
 4Fa3cx70vtvo/cvqNKp9/dZBxfUnV2c6YptYdQEdKDj3FouzHG8Z8TfhXjpTwwMIvHZwaPwWW5S5v
 IMRyJOY9FAxqH/CN56AWQvo/XUYMx7+dL3qF6utyz4NvDNKK1NvDt5soKvuxLewQtceiBNiOP0K2l
 PdBGcUg8m2SabcyPd/qVCEG0JZ+ss82Md/n2zxcB79OZhiyCYLZz+wRlhRPhocUl988ZkSJxIT0+r
 7EAkLUEpa+RrcYZFG7QfB7QRq5xAUz/+A/LbBfSXF22TqFBwC1opoKH63yjiNlGWefv+OP0ZMU3v8
 mGs/CAkQ==;
Received: from [89.212.21.243] (port=42168 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1mmbci-00B8Ey-Kw; Mon, 15 Nov 2021 14:02:12 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Cc: Y.Bas@phytec.de,
	s.riedmueller@phytec.de
Date: Mon, 15 Nov 2021 14:02:05 +0100
Message-Id: <20211115130208.619443-3-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211115130208.619443-1-andrej.picej@norik.com>
References: <20211115130208.619443-1-andrej.picej@norik.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_050223_755573_A4D40EB9 
X-CRM114-Status: UNSURE (   6.62  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] ARM: configs: phytec-som-imx6.config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Create PHYTEC specific i.MX6 SoM config fragment, which is intended to
be merged with the default imx_v7_defconfig. This way, one can clearly
outline the differences between standard defconfig and changes PHYTEC
makes for i.MX6 SoMs in their BSP. Nonetheless, at the same time, this
minimizes efforts required to port patches to defconfig with each new
PHYTEC BSP release.

For now:
     - disable BLSPEC,
     - disable IPU driver,
     - enable of_fixup_status command,
     - enable of_overlay command,
     - enable of_display_timings command and
     - enable OCOTP fuse writing ability.

To manually configure PHYTEC i.MX6 board, config merge can be triggered
with:
$ ./scripts/kconfig/merge_config.sh -m arch/arm/config /imx_v7_defconfig
arch/arm/configs/phytec-som-imx6.config && make olddefconfig

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 arch/arm/configs/phytec-som-imx6.config | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 arch/arm/configs/phytec-som-imx6.config

diff --git a/arch/arm/configs/phytec-som-imx6.config b/arch/arm/configs/phytec-som-imx6.config
new file mode 100644
index 000000000..a7d5bae59
--- /dev/null
+++ b/arch/arm/configs/phytec-som-imx6.config
@@ -0,0 +1,10 @@
+# CONFIG_BLSPEC is not set
+CONFIG_CMD_OF_OVERLAY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+# CONFIG_DRIVER_VIDEO_IMX_IPUV3 is not set
+# CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS is not set
+# CONFIG_DRIVER_VIDEO_IMX_IPUV3_HDMI is not set
+# CONFIG_DRIVER_VIDEO_SIMPLEFB is not set
+# CONFIG_DRIVER_VIDEO_EDID is not set
+CONFIG_IMX_OCOTP_WRITE=y
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

