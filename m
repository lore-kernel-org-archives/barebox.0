Delivery-date: Wed, 19 Mar 2025 18:38:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuxMz-001Xvj-3A
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 18:38:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuxMy-00009f-Sg
	for lore@pengutronix.de; Wed, 19 Mar 2025 18:38:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t1kKTtzFrJLoP+Mbyr/0aDbv89cIfFtREbytvhzUG3o=; b=p8vrnq6a5jDTm0FWqGVMzF6rHx
	JaYOtobABHNQgUoGIptpGh4wjbBcCjWO1zpWjjFYJmx4UZmLN4kl7RAgp5dMyKRvclrJjnIAWiGh/
	O+os1lefu29R4A0LcSF+/FMg4L4MnSdIKhpR0wjBULZOXT8CB5eqaRehEO/pabxUND/ONJ7uAVVTR
	etIHFm/85iO+dIID+ZRYnhFBODuMQuC9pmNhGZyuOus6sWqukqEfQdiL4lTr95RAK0MiQvE58IxKE
	7FOBIHt5/nrdnVbwQAFz64x5JZC3hQCaFdCD585lEv+BGX10y1cCsh+FSG9TLZpfb8RIa9v3sYyl9
	/PZ01HMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuxMZ-00000009jKa-0he7;
	Wed, 19 Mar 2025 17:37:55 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuxHh-00000009iWd-1ym4
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 17:32:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742405571;
	bh=1xzwm27I1osrXwSM+1TCV1FwVN+f2Jv9B4wE6ot9rTc=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=TIpO2V3nJGBV10C4BL25J88rijO0L3Cz5nspc0oKFLv7hp432hnzsILq7UOMyoYbB
	 unQubnUCJOsKcXFJGz1IaUH6AYcAdFhHa8KpsAJc6/xI6Z5+U60N2iH4SPVL0yU0sJ
	 nz8qqzl8Cev4r7mNLKP18NsZU1BB2LT+8y7Qwq1ReEfGh4W8ASLNPe35G9ADre6HKI
	 0QduTS2QM2CTUNqK9F7BwXDYXGiHcku8+HoL7YzvwsJgnaxC39BsyoxW6j2h+a3hmp
	 OSGC84FHVppvOkviDg3Jsk/Hqy4N3R4T+HrD9Bkpx5a3ru6jdvNR2NtnNoXEG2lk5I
	 bLTYM3GN7Fdzw==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id C11DFFC69B7; Wed, 19 Mar 2025 18:32:51 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Date: Wed, 19 Mar 2025 18:32:38 +0100
Message-ID: <1fb9c1cf650ba020511788388fdfdfe995b25117.1742405341.git.uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1742405341.git.uwe@kleine-koenig.org>
References: <cover.1742405341.git.uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=716; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=1xzwm27I1osrXwSM+1TCV1FwVN+f2Jv9B4wE6ot9rTc=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2v+3BRVO3gjvqXixqV8FzZkqNS/PG4epIEyfc pKcJIjqupiJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9r/twAKCRCPgPtYfRL+ ThcEB/9GJL9jBhnWVgRy9gc5B8zvplnxKrUm6aJQX9lMXllU7CKYnzGyYVUjyM9Sme95up0LANB n48qZqQy63qRNGVyxFOOI7NvmUzLZE+/9n6OcNzmC/hhFbWWnGCKbgQKU9R3T0gM1bw5rleTXjD Kstw7NyL+wKnzXSOvevRZxZWy801z7TR+LrYyrfCfl0WMk1sy8GI5M3x0CrzukK2dW3lKOztrr/ 7L9kgvFExL+i9zyhJhefNIyfXV3BEsQzrfoIMzt6i99k35592VwSecBWghiBzfGniUPCOMzxEnQ BSlfE/nR7Tpq4CKco1fYIzeg0KbbSSrXLyp05D4Zh37B5wyg
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_103253_662265_4203750D 
X-CRM114-Status: UNSURE (   7.79  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] arm64: rockchip: Enable rockchip otp driver in defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This driver is useful on rk3308, rk3568 and rk3588. Enable it in
rockchip_v8_defconfig.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 arch/arm/configs/rockchip_v8_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index cbd33d1b042d..95900368cc02 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -135,6 +135,8 @@ CONFIG_LED_GPIO_OF=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_POLLER=y
 CONFIG_WATCHDOG_DW=y
+CONFIG_NVMEM=y
+CONFIG_NVMEM_ROCKCHIP_OTP=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
 CONFIG_REGULATOR_ARM_SCMI=y
-- 
2.47.1



