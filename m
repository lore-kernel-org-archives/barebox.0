Delivery-date: Wed, 03 Jan 2024 19:33:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63G-002Nel-0e
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL638-0003zl-FF
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jjfZCzF780qFoENpVXBX7nl58Rr0cdf0Tve/ZtM5vr8=; b=C97yqR7yp3n+2B5t/iHM20uhdD
	Y9wYN3AEfZpsNfVC80sEPwjlOmdh8krB6tJ9qyH/4nhhRj+MFg/1Dy55RnL2+Hg1fJCG4MAyY/5ZZ
	yt0PhvuMy+t4JvND6mv8bLUZQibulOKzZPkMD2jqRpDibTZRHB1/LZLtSjAdFX3qq0Ajo0AlNIhHF
	HPCGR8JV9G8Ojb1/wkl8LQIoS937gmF4vL82rH6THz6zNjWzAIWsihlX4dRDfx4/sLgF2AFVPhCGc
	jhjNLrTGrGM2tj3vEPa1t5eEWOYLU2fFipX6noFTCmVnnysyfHT8R9Yugkj5GtYimTKETn4IS8H58
	UiJWgfpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61n-00BhvJ-1s;
	Wed, 03 Jan 2024 18:31:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61B-00BhEa-0m
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=jjfZCzF780qFoENpVXBX7nl58Rr0cdf0Tve/ZtM5vr8=; b=oXNHmmV3YrGBdzoMzmU6k0xgvW
	sMLWEWGLGszNnRpcQW7Sjt1n+n76OT9c4F2zUvUhadIllI1bg3W/a4NCFENI4LaMKCQo8EKZM9JqX
	rNApzYmvuLXi4MTYe9iVEVRGDBkQSf/3jPfh28BKeag/QQL1NIrdJxYaza4xoG9XhEo4+AaXayyQy
	rcA79Mny9BfTOqOyzQfbEZ3DscP3MIG2XviTIBl2QRQd0t/8peyzMp1mrbao95aFDFUIaV8SxclP9
	Wa3J5XkC8yysIXNhINwL5wnZqd0Uh5wah1GTZHILBeEdEU7mTgSmjVtrO3o1FCcvJnxsCZipkyZuj
	P46C/4ow==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL611-005eC7-0Z
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001T4-4n; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000Atu-ON; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-24;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:13:04 +0100
Message-Id: <20240103181312.409668-105-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_488399_0C8D59CF 
X-CRM114-Status: UNSURE (   8.09  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 104/112] efi: devicepath: drop unused macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is used no where, so it can just be dropped.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/device-path.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/efi/device-path.h b/include/efi/device-path.h
index 433233f38c0d..39221ca369de 100644
--- a/include/efi/device-path.h
+++ b/include/efi/device-path.h
@@ -324,8 +324,6 @@ struct efi_device_path_file_path {
 	s16 path_name[];
 };
 
-#define SIZE_OF_FILEPATH_DEVICE_PATH offsetof(FILEPATH_DEVICE_PATH,path_name)
-
 #define DEVICE_PATH_SUB_TYPE_MEDIA_PROTOCOL               0x05
 struct efi_device_path_media_protocol {
 	struct efi_device_path header;
-- 
2.39.2



