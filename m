Delivery-date: Fri, 19 Dec 2025 10:07:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWSl-00D98r-3C
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 10:07:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWSl-0002yC-Eg
	for lore@pengutronix.de; Fri, 19 Dec 2025 10:07:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U+3zks4pdv8/FDfm/g1P9kx3fp5+WM9gn/y9aLITA90=; b=b5hKlWEu1PNACSlznmA70zrYlh
	bxF+1oTygUh0hTnk+/vUDTLXkdppsSy8iHvLGaNcHNPDpDTB1sVEP8OeTKYaMAP8Smmy4RWzAS64u
	CIFcXTd5ViHkIdbi3bTEreSy9l0ZjC4/16wsPzZGthXmq8spQv7rpp0rzA4hj+9+l5R5JVpdLIhjl
	RdKhkiuHfdGbV6aADboXaY1KJxsV3N2WYJ5RJeT8D0x+7z3R89IVsmFIjYc8zc+1pw6NhdOu1vChW
	8Y4XcgxoEK2Gf3eDMEBFz547AlTNmBJdCGLxDgzeFdbvZllsJpa0/EFd/3+Jz63eSN9BVP3dVLEYJ
	JtwIwvdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWS5-00000009uIa-3utr;
	Fri, 19 Dec 2025 09:07:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWS3-00000009uHj-1Q1j
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:07:09 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWWS1-0002hO-AV; Fri, 19 Dec 2025 10:07:05 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 19 Dec 2025 10:06:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-v2025-11-0-topic-imx6-field-return-v2-1-2696ac61ae2d@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de>
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_010707_403350_D3110DC4 
X-CRM114-Status: UNSURE (   7.20  )
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
Subject: [PATCH v2 1/4] arm: mach-imx6: use kconfig for field return
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is a Kconfig option for the field return, that is also documented,
so using it here instead of providing a headerfile to patch.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
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



