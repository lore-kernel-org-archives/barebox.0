Delivery-date: Mon, 04 Mar 2024 20:06:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDe2-008dKZ-1d
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:06:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDe1-0001mP-NF
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:06:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WS6yIXrYDWL3BZet5poq1kteiX/pbgOnIcPP1aTIV9g=; b=hvKlSJWdOhwH39h0hn1t9LQiLk
	IgwH50sitQB3HTaEXs/N9GtCUYcM9jpfmrtPMHT38eScGrk1LF6kqloWcriCHnJlu0dpPlrNZLehL
	11K9YbynMLjKFIhYka+PwW72GTwvJ9ZQKtODLNF05T8Y8ZLsyqr0Jqwvf24Jmgnwa2CFAkthIFsLT
	1J7n6C6qVX+iln4L4TiBOxoIIZXDa3rABKU6kMdRHTaLmsCujDTwEotL2hbRaGI+K2pV2TxcxouEQ
	LqT7kLnYHhoYzQ8X3awnx3pPb0c1qcYQTzDSLNweU4vOYXoQtjqYaOd1KalHAsa2k8KW0mfc4utXT
	g/1zyDbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDdU-0000000AKdW-2gwO;
	Mon, 04 Mar 2024 19:06:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaR-0000000AISq-2V1a
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WS6yIXrYDWL3BZet5poq1kteiX/pbgOnIcPP1aTIV9g=; b=F4Sj43Xy89e/Vi9XW/Hppt7r0T
	xhSo8yKDBRe+bbRLBW02knClz/o8S2mNb0z/xBtal6hOl4k29gLxoLSkNrMuFebKaRO14HsqjmnL/
	4N0LD2wtEoJymsilOKgaSn3qHWYFkFHvbvwSKjj0PNRLAdAdMicNLhazwV+wz9Ca0pNJ8XBCAunyf
	gNp7BN07bwFr/4nftX41f8YNzWvbaPndba4ZL+kFDNQ98Kiwl/ArQCfW9VNxeskEhrYOStv1E7u69
	NDx/zbKNS2Gpq4kNoYDdNDwjIXUTJrF7mWRS7zWWgpTwo7uayOzG0jYFeB/IopOaMQwAuzgcN4nvk
	M13JSGrg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaK-000000051vh-1zDE
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00061T-9m; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-004PHR-Rt; Mon, 04 Mar 2024 20:02:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-27;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:05 +0100
Message-Id: <20240304190038.3486881-81-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190248_632365_1E7E0F20 
X-CRM114-Status: UNSURE (   8.58  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 080/113] video: mark EFI_GOP driver x86-only for now
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver currently crashes when running barebox on ARM64 Virt under
Tianocore. Until that's resolved, mark it x86-only.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 571ce49ef616..9e176d3198de 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -32,6 +32,7 @@ config DRIVER_VIDEO_ATMEL_HLCD
 config DRIVER_VIDEO_EFI_GOP
 	bool "EFI Graphics Output Protocol (GOP)"
 	depends on EFI_PAYLOAD
+	depends on X86
 
 config DRIVER_VIDEO_IMX
 	bool "i.MX framebuffer driver"
-- 
2.39.2



