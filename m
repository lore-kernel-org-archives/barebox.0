Delivery-date: Mon, 04 Mar 2024 21:20:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEnw-008inD-0I
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 21:20:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhEnv-0003pW-EU
	for lore@pengutronix.de; Mon, 04 Mar 2024 21:20:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cjqzUS1xROooqIcctG75eJr0/M16ABc1kuIsBCxWPJw=; b=jPs7DwinQXgRdBYfkvJJgF6jBZ
	PVEPop2VHZrljRe05TWuuHLOH58JTMr7hLeno+oqGWNOjDEM1DMCY4lPUf5Q/cHFdtFWhtFG2UzEx
	AV2oHBeV8MFqqyIsonjOQ3s2Tc+mJ0so9rrz2ghDxfqn8yG7YHmeOJqicqphlnCu4NgrvbbcvNlWY
	r8whsDkpJ4BHObAEyP5P6mxs79UEU2ecNRlHTy0v0MMey7nF1Sctww+wIPOIA9DErtTkw+exo41UU
	3U4xWbaaEAA/D90NRKW6FM3Z5bQ3KJX0OSnmJZeMFslHrDzLHoJA2T4JRGfGp6n3fde9rFFkc+pMx
	4liO8dyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhEnS-0000000AZRz-12O9;
	Mon, 04 Mar 2024 20:20:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaU-0000000AIVY-3hKQ
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cjqzUS1xROooqIcctG75eJr0/M16ABc1kuIsBCxWPJw=; b=mJ9WivRRB8jQHE/0b9UarEisAh
	jMrBoun/dhW9mL/Czwh5+1sq/ee1U/AmHdhVz8TJlg6xpoR9Cpq5cRp02d/oroxJ478xg+FdU9Rpy
	8VZMSK4c59HHVG/UUJaYmqLp6DkIqAItuViZv7K9ye4yMHNcSnj7lqn34RoASda15l46A/oKNiMFc
	36uumEnSWqvX2QP9pAIu7gp8fLlN3PM7PoaKaDcoZJCXIZlvogXK8QHLEaUuKmERh5GYKtMgDHxaN
	605I85/Eo0dVcTYvUqsgEcHohmOisTg2FnTbpDgNmZYcftLZp+IwiH89vF422bE/jtkjPg0uf87E6
	w8e7+d1w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaN-000000051w3-1sWI
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00062p-Lv; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PHq-7I; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-22;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:27 +0100
Message-Id: <20240304190038.3486881-103-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190251_569040_8E232EAB 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 102/113] efi: devicepath: drop underscores in hex constants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The macros couldn't be used before as they would fail to parse, but we
will start using BBS_TYPE_UNKNOWN.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/device-path.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/efi/device-path.h b/include/efi/device-path.h
index b7dc518859ac..91c8ce57c69c 100644
--- a/include/efi/device-path.h
+++ b/include/efi/device-path.h
@@ -177,7 +177,7 @@ struct device_logical_unit_device_path {
 	u8 Lun;			/* Logical Unit Number */
 };
 
-#define MSG_USB_CLASS_DP                0x0_f
+#define MSG_USB_CLASS_DP                0x0f
 struct usb_class_device_path {
 	struct efi_device_path header;
 	u16 vendor_id;
@@ -385,7 +385,7 @@ struct bbs_bbs_device_path {
 #define BBS_TYPE_USB                    0x05
 #define BBS_TYPE_EMBEDDED_NETWORK       0x06
 #define BBS_TYPE_DEV                    0x80
-#define BBS_TYPE_UNKNOWN                0x_fF
+#define BBS_TYPE_UNKNOWN                0xff
 
 
 #define EFI_DP_TYPE_MASK			0x7f
-- 
2.39.2



