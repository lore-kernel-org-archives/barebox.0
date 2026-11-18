Delivery-date: Wed, 18 Nov 2026 15:52:25 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh1M-000ndE-0a
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:52:24 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 40F9A205AF6
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:52:20 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NZZcVGW7;
	dkim=pass header.d=gmail.com header.s=20260707 header.b=FIjGvGMM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013540;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=SqYidlVJxChM3HTGyuaIyRCAHxqNJ2IExfTj1O+8grk=;
	b=OlM3WiandLRkRO86AAhmPP7i7ph9LWPk85w5k76ovRQgVHgIxvGYCP34dzl85NxzUWUwym
	gFS368qRDtgWxUpOsCfMdwS9HHuVNzA5khUiQbxu1U/OS33jtgNqGqQpzCePLLJGSBoTTC
	qKqBDk7Hb4s90/VhAF0QXASLnq1lRl73BaD8+GdS9vNq4ZFkMDF5+Zllhxs0y1ZKzBhM8C
	7lXjd+fw/wU1IKb4F/Y28f0IYDf8eJqr8Nyhjk+n+bagjCf4peQaTx+LqSchgXt0ebz0MZ
	1CjcxEHrQZpzgN+NwU9lY6JwQA7eE2OQzDFvEqObl0H1S+YCiDEDmVfHq6AvAg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013540; a=rsa-sha256;
	cv=none;
	b=e2L/agk/Jh23rIS/R/qPwE/gtmXiku6AjSAO+c9WRlvnWIqnNP9tj1eW4czYHTgepehe25
	NkEdqfmU8akMXhuEJRUoovUx+Ys7eRisWDrUzvbF3Cyhx/nsgQ0pfK/9oqnDmC3XF3KEvm
	8ZDukK7H6+Cn1cAUcC5kkDoIIZibmIvETPLRwD74j4IUMp0IAFkItfv6VSvtbItq8/q7Kg
	T2kVof/N7edcF+7xlmsa/BEmGAp/OQDpH5/BXlxhOV30bFpwTw30epwoeDMnzD9GwaKtMF
	ANICVdTscQ9bNt88PC5t31QqxazVquAwAAwgLWc/GJ6qNuu7/AlfwRqlS44gKA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NZZcVGW7;
	dkim=pass header.d=gmail.com header.s=20260707 header.b=FIjGvGMM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=SqYidlVJxChM3HTGyuaIyRCAHxqNJ2IExfTj1O+8grk=; b=NZZcVGW7Dp0pCebjJB6urFdxC1
	nCLd5xf3YoMxSxIEk9Y38UJzvOwRndEkb9kR7XxkNp/PMJzTfL21AE7XULZVj+d5/xyyyfkE288ch
	7iO1izKuv2G0PeMXCr6vbDuoG6LBNhNE5tXvP3sKSiYOVaUOfVU2IBf7mIo1EjQACYxEgJyKU7bEW
	PwiqC3fas6G10YPFc9KRCHKqi/zthx2YzBGZtYUM+FgwjA7wsc/k+J+agqQ9M6Gg3IE2m98iiHHzU
	7eyS9A88wP006lMdFfYpn43bes5CnFPeGMdsBmXAsr6FCZXO4uR1yF/r84KO/8h17kivhb2qASFrS
	jM0qoz0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh03-000000099NJ-3zXl;
	Wed, 18 Nov 2026 14:51:03 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh00-000000099Mp-3rD2
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:51:02 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-c506a231b88so148987366b.3
        for <barebox@lists.infradead.org>; Wed, 18 Nov 2026 06:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795013457; x=1795618257; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=SqYidlVJxChM3HTGyuaIyRCAHxqNJ2IExfTj1O+8grk=;
        b=FIjGvGMM24cTM08BcAuScLI7+XStvEV8m3AFVaBbfdLRXXcSJDEvGqTpfAY44WamsW
         rNOeuuAnOEE+Zv6rGe26uRORt5oESz8XcyFdy2qzd/w++NXPlsrhylMTwyUoeRpGsGdZ
         pORurvwqUpAZ/tZOuKurSgB6+tD+rPmCTKUkecUYHjWKcyJc8GoKVsoEW7KGMzywMHlj
         GXD8oo8P/LUClkX1RNBc80sgyStpbc684qSROD49Dbo7RBYT1hIdgWBYjh5N5Q9MFgnV
         URv4+bx6SxQfFsVI0ANjxUHpxznTH+H38Auq1rTlT1TYC5jYzDQN+7jP1SzmboIOvIZM
         7KIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795013457; x=1795618257;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SqYidlVJxChM3HTGyuaIyRCAHxqNJ2IExfTj1O+8grk=;
        b=CEOdKhq70o1F/curmkJxdhOamPKV3POAdH8IZVN4T8nedBr1lZAppyJo7c1uIaaWI8
         +oer6Mf92MWiAREkq95E2v7lIkktgMeaeKasWk4TYTp1YanHb4BLMkRlxEBSeKX5gftm
         0X4YVvyD8DYHUFhxVCXRe8CUgOULOoBs1oJQQj8Fi/J+HL7v+dumq6s+5LTvp6sAXFSm
         9H4FggDWfIhBFeGJyWF+J2o3+qi0NdF0Q49WhbFMdzhvNJIeR9xxJoIBSPxIjyffiLlr
         Kg16XVzruPMK4g2QGCQYatONehYTlpklDEHbdYIEaXi5KMbuBcUdPWYnrBzCX60XAiwN
         SRhA==
X-Gm-Message-State: APuU4Z8vmtm0ptHWckAA0A+/A5r8PdpXd4bc/IJE4g8HXfPymHI1DFfM
	R/3jSpKFy0kLMIPqIgm/EyzioGTqnFz8jh9D0p6JyhjTVOCc69OqCnvIxQYbEtbV5YE=
X-Gm-Gg: AYBFou08JtWdwbiaMAhFL8+RBESaUGgJZOAhOD4BJ2LZneJYuriG5xD8TGw3ag8u2E/
	9KO4hK5W+Y2XPFwm1QoO5hlAvh0VrWlIH1hfYYFDMG0KCAAOXh6q6smKiC5PT+ifKXokaABfcif
	BpLvw1zx0d4RHG5nPNAZvYcUj44z4iIA0Sh1UxnyuKWj14De7oDziqwD3GktmvV+WUV6egGvdwQ
	DgAYAUhdMEW7kX5Tv0Vi4l4W7ZKj6SwVJ6mJPzMpbCPhFT+xDT252DSnQTZgnbC+Xd8YihW+cIr
	zxWlR6yHllTjHenDGbwPQjEDDma782v1rguF4Sl30PHK3Jd6UK6Pk7ryqBpwCvqPRyrig62uhIH
	adstlnkI+aLZDbXezyauuLYG7blXuqsVV88Au7rccItFfgtVZST64dgIUuT5INLfVyyRSexpiyV
	DbyC6HYrspUc3A0Fzsd4miiMTixB1R7/7mt43USKf1isvqbbpR7ILmIY/50iO4TY3skufJJykn0
	6MPiQ9DYN40fsGgJk4ApUYWYpuKD/Kt+gaYWAtteLG/gnRtOGrimw1wtDEqGBvfDwqWRz2l9sAI
	Ud1Bwf0QnOhcRmpIdtrSWdtkxppQ91vXmA==
X-Received: by 2002:a17:907:3da5:b0:c26:22ae:b66b with SMTP id a640c23a62f3a-c510e16a0f1mr275089466b.15.1795013457203;
        Wed, 18 Nov 2026 06:50:57 -0800 (PST)
Received: from gentoo ([95.161.223.236])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c51234cd7a3sm5006966b.74.2026.11.18.06.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 06:50:56 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH] mfd: rk808: Add support for rk806 on i2c bus
Date: Wed, 18 Nov 2026 17:50:51 +0300
Message-ID: <20261118145051.306697-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.56.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065100_987523_171B237A 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Some boards connects the rk806 PMIC on an i2c bus. Lets add
    support for these boards. --- barebox 2026.10.0-00870-g99874936478b-dirty
    #214 Wed Nov 18 17:35:19 MSK 2026 Board: Diasom DS-RK3588-SMARC-EVB rockchip-dmc
    memory-controller.of: Detected memory size: 0x400000000 netconsole: registered
    as netconsole-1 fan53555-regulator rk86020: FAN53555 Option[10] Rev[1] Det
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [eagle.alexander923(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:631 listed in]
                             [list.dnswl.org]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20260707];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::631:received];
	RECEIVED_SPAMHAUS_PBL(0.00)[95.161.223.236:received];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 40F9A205AF6
X-Rspamd-Server: mx1
X-Stat-Signature: n3qiisck3jkepwh5hscscjk66w34c13x

Some boards connects the rk806 PMIC on an i2c bus.
Lets add support for these boards.
---
barebox 2026.10.0-00870-g99874936478b-dirty #214 Wed Nov 18 17:35:19 MSK 2026

Board: Diasom DS-RK3588-SMARC-EVB
rockchip-dmc memory-controller.of: Detected memory size: 0x400000000
netconsole: registered as netconsole-1
fan53555-regulator rk86020: FAN53555 Option[10] Rev[1] Detected!
rk808 rk8060: chip id: 0x8060
...

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mfd/rk808.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index aa01485143..f96c8c1d1c 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -42,6 +42,12 @@ static const struct regmap_config rk805_regmap_config = {
 	.max_register = RK805_OFF_SOURCE_REG,
 };
 
+static const struct regmap_config rk806_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = RK806_BUCK_RSERVE_REG5,
+};
+
 static const struct regmap_config rk808_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
@@ -234,6 +240,10 @@ static void rk808_poweroff(struct poweroff_handler *handler,
 		reg = RK805_DEV_CTRL_REG;
 		bit = DEV_OFF;
 		break;
+	case RK806_ID:
+		reg = RK806_SYS_CFG3;
+		bit = DEV_OFF;
+		break;
 	case RK808_ID:
 		reg = RK808_DEVCTRL_REG,
 		bit = DEV_OFF_RST;
@@ -368,6 +378,9 @@ static int rk808_probe(struct device *dev)
 	    of_device_is_compatible(np, "rockchip,rk809")) {
 		pmic_id_msb = RK817_ID_MSB;
 		pmic_id_lsb = RK817_ID_LSB;
+	} else if (of_device_is_compatible(np, "rockchip,rk806")) {
+		pmic_id_msb = RK806_CHIP_NAME;
+		pmic_id_lsb = RK806_CHIP_VER;
 	} else {
 		pmic_id_msb = RK808_ID_MSB;
 		pmic_id_lsb = RK808_ID_LSB;
@@ -377,14 +390,14 @@ static int rk808_probe(struct device *dev)
 	msb = i2c_smbus_read_byte_data(client, pmic_id_msb);
 	if (msb < 0) {
 		dev_err(dev, "failed to read the chip id at 0x%x\n",
-			RK808_ID_MSB);
+			pmic_id_msb);
 		return msb;
 	}
 
 	lsb = i2c_smbus_read_byte_data(client, pmic_id_lsb);
 	if (lsb < 0) {
 		dev_err(dev, "failed to read the chip id at 0x%x\n",
-			RK808_ID_LSB);
+			pmic_id_lsb);
 		return lsb;
 	}
 
@@ -395,6 +408,9 @@ static int rk808_probe(struct device *dev)
 	case RK805_ID:
 		regmap_cfg = &rk805_regmap_config;
 		break;
+	case RK806_ID:
+		regmap_cfg = &rk806_regmap_config;
+		break;
 	case RK808_ID:
 		regmap_cfg = &rk808_regmap_config;
 		break;
@@ -490,6 +506,7 @@ static int rk808_probe_spi(struct device *dev)
 
 static const struct of_device_id rk808_of_match[] = {
 	{ .compatible = "rockchip,rk805" },
+	{ .compatible = "rockchip,rk806" },
 	{ .compatible = "rockchip,rk808" },
 	{ .compatible = "rockchip,rk809" },
 	{ .compatible = "rockchip,rk817" },
-- 
2.56.1



