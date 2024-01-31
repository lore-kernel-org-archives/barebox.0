Delivery-date: Wed, 31 Jan 2024 11:47:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rV87i-00Daun-1o
	for lore@lore.pengutronix.de;
	Wed, 31 Jan 2024 11:47:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rV87j-000850-7J
	for lore@pengutronix.de; Wed, 31 Jan 2024 11:47:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JDfG85bdeO6WNyaxXQDZwRIMLmVPev1Kedvqwe6NEQg=; b=qV5uzo8ID2Up89C6ZXT64FrS40
	6kd0ry6Kg0OBs1um16iGF5dqOVRCoTqtD955tmJ94uzDO9p1PidCKz4nGYRmyqYOe/PzSdD2oM8+Z
	i4saqF2DWW9OSiEC/VW/6CguHJCI0n4wUlhfGi3mjuzwQdsCU8Q6VeY/bDe5xLMNry/vWhsZY+oIF
	0JUSbDxgJ0P+3rGb/PCScUKuVLm8IDg4q+RL5Bs8jWSiqdcU8Bi3Er0bbCZZpUQJVDOPxCb/VJPkg
	g77kQXAb4LaR6UsdAuccI0F75oDzdrZtyxXb2BCpARR3mqa3yhzb1wdtYTKNqLptBDAMBTIAzDfeV
	LMNqnkYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV874-00000002rkE-3KcP;
	Wed, 31 Jan 2024 10:46:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV63a-0000000292c-25Eo
	for barebox@bombadil.infradead.org;
	Wed, 31 Jan 2024 08:34:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=JDfG85bdeO6WNyaxXQDZwRIMLmVPev1Kedvqwe6NEQg=; b=pKsniAGjEvUBSB/j3EG2M6+KuY
	r0/+tDaoz3Y4ZXWZGKrrjvvtvyMJPCprN4hIYIGAfBwygz9IdWe9sO0+1VT3CrLcylRoc6oklalbe
	KfMXe/0zB80AFlAGs3RpdylGmz9WFUAr94AB9v4F59TdDCZjkz7q8Krlio8gOh416F5AY8M2Zl2O7
	1dEm6DYQKtFmWTx6DfdtfO/DiBhGIVwFQk1R3ey5OnZVO1rl/4M/5V34hmeXnWqNyxZ3fxoFt7K5t
	GpEk8T4sSCCQqrSPgspx8EwwAF85+clWmxC/N4VjYFZIz2ftX+9YgmR08rHMz9/P93TMXchRCJv5p
	yYRFIn1A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV63X-00000008pRq-1Qsi
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 08:34:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rV63U-0006w4-Kf; Wed, 31 Jan 2024 09:34:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rV63U-003ar1-80; Wed, 31 Jan 2024 09:34:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rV63U-002pEA-0S;
	Wed, 31 Jan 2024 09:34:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 31 Jan 2024 09:34:46 +0100
Message-Id: <20240131083446.673104-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_083451_514937_95198861 
X-CRM114-Status: UNSURE (   9.43  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX defconfigs: Enable ELE nvmem support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ELE nvmem support is needed on i.MX9 for reading fuses, especially
for reading MAC addresses from the fuses. Enable it in the relevant
defconfigs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/imx_v8_defconfig   | 1 +
 arch/arm/configs/multi_v8_defconfig | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 731156e4fe..486ef30671 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -139,6 +139,7 @@ CONFIG_WATCHDOG_IMX=y
 CONFIG_WATCHDOG_IMXULP=y
 CONFIG_RAVE_SP_WATCHDOG=y
 CONFIG_GPIO_PCA953X=y
+CONFIG_IMX_OCOTP_ELE=y
 CONFIG_RAVE_SP_EEPROM=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 677395b1f9..bc3b6e25cb 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -233,6 +233,7 @@ CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_ZYNQ=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_NVMEM_RMEM=y
+CONFIG_IMX_OCOTP_ELE=y
 CONFIG_RAVE_SP_EEPROM=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
-- 
2.39.2



