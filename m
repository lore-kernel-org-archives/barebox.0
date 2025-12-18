Delivery-date: Thu, 18 Dec 2025 18:37:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWHwI-00Culx-3D
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 18:37:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWHwI-0007lk-FO
	for lore@pengutronix.de; Thu, 18 Dec 2025 18:37:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4R9XSLhfAz7WkcAvzy3D9RMhrwm28lRTO8MHKHS9xZM=; b=V68Wuf6E0muBrZqRTcMCRVrBX+
	K+32UhWtw08B57uM7gsWb5fTnLUuv4t3VSnyJcnKGMi8Y/erl5SY7Bwfg5EulZQnNpu0WGtaTFT/J
	De7UoPwEKTlYgSquB2POij4eT4zDN5ATa8cY1I+9R5cCl8ZGjVfr7c6cokrnrJxGD+xuTyfajXD8P
	Rhk9vUnKTQOn6E7SVxGi8e0WCX1IXuu6yYCos4gtpUxX4Pg4GfH7dXjiignKUDF0A3W4RyobC618q
	cVqv+d1dDVWBHI8yT7PcjAofKjugy1v6VfJnXZpfb5JUrONZAYOPb2ftmopWRyKDv4syFXtP8iYAF
	mPl2ON/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWHvj-00000008vwA-2SOz;
	Thu, 18 Dec 2025 17:36:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWHvj-00000008vvs-0dwp
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 17:36:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=4R9XSLhfAz7WkcAvzy3D9RMhrwm28lRTO8MHKHS9xZM=; b=QCnuQLoa/Az5FTFBoNVya7HESm
	/D9dJVFkju93AKq6jSzYz32l+z+lf8bEawKHswf8T0Wl0OjkxfCekcQuJLKUVea4APdbZEy3wFz4a
	FA19sN7z9rwp+t9k3vwOo5FJdmV0o2MEQPkoYgkg3iCDM1EC9dUjOB+6oG+oL/kOPJX74C5+WEgl3
	wIZhaGuxU+oi6qD17Jek6mBguii2tAPrkALg29UnQcwKUJe9uS3pS+MRKxIA9ymFuKxT7a94j6IIa
	z2nH/s3SUKae7yn2cL/Plr/8+kTp397Zisi4WO3Iq/86eDL7PdwBACct3F9b66HDtheqv937kXkYd
	e1LJAhfA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWH4D-00000009IdA-3A6O
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 16:41:31 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWHvd-0007Si-VX; Thu, 18 Dec 2025 18:36:41 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 18 Dec 2025 18:36:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-v2025-11-0-topic-imx6-field-return-v1-1-3781143198d6@pengutronix.de>
References: <20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de>
In-Reply-To: <20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_164129_907337_99632CD9 
X-CRM114-Status: UNSURE (   6.98  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] arm: mach-imx6: use kconfig for field return
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is a kConfig option for the field return, that is also documented,
so using it here instead of providing a headerfile to patch.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 include/mach/imx/habv4-imx6-gencsf-template.h | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/include/mach/imx/habv4-imx6-gencsf-template.h b/include/mach/imx/habv4-imx6-gencsf-template.h
index 45da2981cb..c24bf84b85 100644
--- a/include/mach/imx/habv4-imx6-gencsf-template.h
+++ b/include/mach/imx/habv4-imx6-gencsf-template.h
@@ -39,17 +39,12 @@ hab Engine = SETUP_HABV4_ENGINE
 hab Features = SETUP_HABV4_FEATURES
 #endif
 
-/*
-// allow fusing FIELD_RETURN
-// # ocotp0.permanent_write_enable=1
-// # mw -l -d /dev/imx-ocotp 0xb8 0x1
+#if defined(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN)
 hab [Unlock]
 hab Engine = OCOTP
 hab Features = FIELD RETURN
-// device-specific UID:
-// $ dd if=/sys/bus/nvmem/devices/imx-ocotp0/nvmem bs=4 skip=1 count=2 status=none | hexdump -ve '1/1 "0x%.2x, "' | sed 's/, $//'
-hab UID = 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
-*/
+hab UID = HABV4_CSF_UNLOCK_UID
+#endif
 
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */

-- 
2.47.3



