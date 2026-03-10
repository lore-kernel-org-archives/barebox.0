Delivery-date: Tue, 10 Mar 2026 16:25:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyxK-00A8Ox-2O
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 16:25:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyxK-0002V8-U7
	for lore@pengutronix.de; Tue, 10 Mar 2026 16:25:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnMGE02KWYr3YJQVospsH76CGQBvwpipKcr+a8Zq018=; b=M4vrTtNwEutjtk
	pt0cFjMmlLtZ0x8nrvx62ggGgSAWdC7Dh0KJwPemNQhvJBuGz62d6X3K5675Y3K2moIlj+GFDT9hK
	p7iakS9eFFsGYvv78lzttHJQz29jNVzdYbIpvywXoUgCA+GX0EAxX/zrmuutCeNDOQIq1UdHTjwRY
	XevdEaTyIC7/V9SN23yKAvFUjPxdEg7yAWT3XbhBzc7W1NEOXMZGWthlzAz2bN6xPd3zsGZJG82KV
	5Rady43JFcahSzI0EJbEv4EQdOrYABHWZJfttjVPm04iYRZK/3jtSp3WfQBfa/7a5yav+8GEt+uYS
	nNA6gnH0Vq5bFABFslCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzyww-00000009ndx-1lpU;
	Tue, 10 Mar 2026 15:24:46 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzywr-00000009nXE-0Muc
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 15:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=FnMGE02KWYr3YJQVospsH76CGQBvwpipKcr+a8Zq018=;
	b=J9fNybnTUWumv64GojPYtXC0F4rVVP2OI/ZHLE7kEsqTQLUk7+AztA1HsJeIJTGixYd2wvwigDmqs
	 OrlysZSdnmJMH11cVKgTavcHulfZGawBqXXmpwhRXJaNjIpwn/16F2VNXZ21cj9iZBZPyWLyq9Uucf
	 en4+4TeHp0aeilaXpMb62ImFaqTyAcUePgh03M5z4AvoqzvhBy/35aa163gBGjMV0iTsY73K62gexw
	 1YB+eiTQfK4Kt1gnNHJw7U9is6vO7hMFMqVubjGXFDw6lrGOY7rtbhCtVX7eXqZulqBNIMjlMs3ntA
	 VOB/BJiIy7BQV0qtwb2SgY9avEd4+PQ==
X-MSG-ID: 3fc97f67-1c95-11f1-bcce-00505681446f
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Tue, 10 Mar 2026 16:24:31 +0100
Message-ID: <20260310152433.786340-7-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
References: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_082441_262252_A686C5A9 
X-CRM114-Status: UNSURE (   8.90  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>, David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/8] ARM: boards: protonic-rk356x: Use rockchip_bbu_mmc_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This board code will support multiple rockchip SoCs in the rk356x series.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index 773bb37045..e8ec217dc6 100644
--- a/arch/arm/boards/protonic-rk356x/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -180,8 +180,8 @@ static int prt_rk356x_probe(struct device *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
-	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc1");
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc1");
 
 	prt_rk356x_process_adc(dev, &model->adc_channels);
 	prt_rk356x_of_fixup_hwrev(dev);
-- 
2.43.0



