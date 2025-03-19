Delivery-date: Wed, 19 Mar 2025 18:36:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuxLa-001XuW-2y
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 18:36:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuxLZ-0008Iy-RY
	for lore@pengutronix.de; Wed, 19 Mar 2025 18:36:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WxqvZPRyuGqzVHrw2u8Xyb/lhlQatctvPWqZtMtS47k=; b=zgL+mY6DRWwcM0iuiNuvFULj96
	3uxJqa1TRDkWLx8blQWEi/4HHevyD8R8GQCvJSFuw6fbD4tkP9b4HopddwP79FcrJkIH87pe9V4EQ
	IuUAct7jURufN0mSQ2SWkFRnceUfmEu1L8QCaqIHrUV2+E40HuEVmaAcSTMG3WyMLk+Hv4jFZBZVN
	MzGnOWWxugBRAVr9sJIj3DxKMzNTUD0BGY2NvlCtR7nGPvRMheNwjniT4Njt7RQRvPvv6l/S3M9CC
	HETl74z9T3lx6FJtJ5vPMbCgJK4v+pun/7o4M27N/VQA09/u0ptPHMtkss6GXbppbib72MRBJJ6yW
	8ayOBJTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuxKt-00000009j3Z-3qGl;
	Wed, 19 Mar 2025 17:36:11 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuxHf-00000009iVr-3d36
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 17:32:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742405569;
	bh=Pqn/SHAgbrKIaAUGmLBK5+h0UJoKp9ltBgqC02eXPgg=;
	h=From:To:Subject:Date:From;
	b=jbni+f5qg8nuPijTPJTbXsQ4iOInzukv1HporWwzd6M0lUr8zuHYlhoKFEKggljCy
	 LqR4GT7uWQzaLmhOHii0VHiLYfRD/Jkd8iD/ZiVBizTbXBd2KX3bgwWtGo1ZSEMUgE
	 oCvxk26zjKxV2uF+l2kc32nDwbTwCz00R+9ArDhKxVugjMkoznjUB20cKdAm70rwAP
	 PP0hLY/gojgxpeFE7u7VgITgt8tHp1g6aH7A13qr5V0uQ47uWR1neGKSulvpB5WGxs
	 yhO4SBHus2hSTWQyBYM60rKvcwKzF8qn0hVnC2Z80AhvjlD/tPddWHz+5A5VPd1Yb7
	 NIL5K8+1xPaRg==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id D32C9FC69B5; Wed, 19 Mar 2025 18:32:49 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Date: Wed, 19 Mar 2025 18:32:37 +0100
Message-ID: <cover.1742405341.git.uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=605; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=Pqn/SHAgbrKIaAUGmLBK5+h0UJoKp9ltBgqC02eXPgg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2v+0hh4zyKaNcFiY5oziQ0h9/HQyl6fWdxnmh FuJ4PG4TbWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9r/tAAKCRCPgPtYfRL+ TmO5CACByO6G64GxKohhXntWr5MnTUM8FZkhIXoDc7CCJhvwjgXvsAyQuSi6xZx8J5rCOYPYGKr UflV+7a0hj+1Ka99mBUcoiBeAP77ioM5fFIoTawLgWbzER4GUNk2NobR4XrnZ48tt/ySWclIm3a 0oJAP+ZJxRjN92FE8bMyN9YzdV7eOgDLTWigN9+UGw8zoKZJb3xrBm4bNHM6pFxj/7f9Grx4ZB7 mxLC3Ip/g6lKH4fJueHF9Hi9vtxAfNYezMzGems7kcjKSXFRYnhnZ5oh8Kc4v/0zFdVLT890gKX c8YgTHTBug4w2Q/JkhTgpNPNaPwsy1CAu+hbMcQmOtuRvv6i
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_103252_044757_55D6983C 
X-CRM114-Status: UNSURE (   5.58  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] arm64: rockchip: Two more additions to rockchip_v8_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

while working to support the Qnap TS-433 NAS I found the config items
enabled here quite useful. I'm not entirely sure that enabling generic
fit image is useful in general (also because it comes with a build
dependency on python3-libfdt), still here comes a suggestion to enable
it.

Best regards
Uwe

Uwe Kleine-König (2):
  arm64: rockchip: Enable rockchip otp driver in defconfig
  arm64: rockchip: Enable generic fit image

 arch/arm/configs/rockchip_v8_defconfig | 3 +++
 1 file changed, 3 insertions(+)

base-commit: 9ecf814ff511c6dd6dcbbb2642d1ae9b11a20f8c
-- 
2.47.1



