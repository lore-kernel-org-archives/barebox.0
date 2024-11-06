Delivery-date: Wed, 06 Nov 2024 17:35:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8j0U-005axy-2k
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 17:35:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8j0V-0000Te-Do
	for lore@pengutronix.de; Wed, 06 Nov 2024 17:35:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D5j4ShTg0WtiL35iRhDj2xdO6bH81uRMBE9khn7sBTU=; b=u8bl59PNT/zJSaAHXwOPcva8yV
	ymCXigzWalG3unBasdl2Z+/bEN1GeSTM6Yw9oTp7kegI7gJp4sJaVJo5alxN1AhCphy7olDBUaGgi
	sVDiCtoS1ETr2C5ZMpZ0F7VpChdm0rfmhvHATri8oUu+gbV6aVq2Zy1O89WgT83Ytp8S9MEL/5c7d
	MSjxXbew/88aH7GvJdV0kO3hXv4qyFe8rqyf49JkggERv1eUQiqGmwd8Sj88PwntJ4iPfx1SimQeE
	OIWpsD5297Dm8rOfMtD598smWp1hk+l6k3Ak5ne0OYR12OwXcWfRnWFpqkCo1L+PbHZkMQ6f4x+Kp
	5SV9P1nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8izy-000000042qG-2YNe;
	Wed, 06 Nov 2024 16:35:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8izv-000000042pL-1qWt
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 16:35:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-0000EM-Nn; Wed, 06 Nov 2024 17:35:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-002KX6-1I;
	Wed, 06 Nov 2024 17:35:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-00HO2D-0y;
	Wed, 06 Nov 2024 17:35:08 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 06 Nov 2024 17:35:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241106-fix-sha256-assembly-v1-3-ad1ac961f15f@pengutronix.de>
References: <20241106-fix-sha256-assembly-v1-0-ad1ac961f15f@pengutronix.de>
In-Reply-To: <20241106-fix-sha256-assembly-v1-0-ad1ac961f15f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_083511_519968_7DA906C7 
X-CRM114-Status: UNSURE (   8.97  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] arm: configs: multi_v5_v6_defconfig: enable arm
 optimized sha1/sha256 digest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a common configuration used in production systems as it provides
a faster implementation of the digest.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/configs/multi_v5_v6_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
index d6bfa90529a05b57ca58f7b50314549094134c02..d668ad6a8c22db36819b6ea93f81a5d4a461a96f 100644
--- a/arch/arm/configs/multi_v5_v6_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -117,3 +117,5 @@ CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_DIGEST_SHA1_ARM=y
+CONFIG_DIGEST_SHA256_ARM=y

-- 
2.39.5



