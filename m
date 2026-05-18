Delivery-date: Mon, 18 May 2026 12:29:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvE3-0016HB-04
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 12:29:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvE2-0005lR-DR
	for lore@pengutronix.de; Mon, 18 May 2026 12:29:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PaQhmjpBYC2jKPg5Y5JNw/vDdOlrNdIvwV9TgE1NvOo=; b=DqGMlJgxtVPnfBrbJ+eUhfXVro
	kqMq1fKqSfSTKilz3hfFXY6HhBy2YVJ3Sime374Qwf7yXe+8nhMuvN0D2jqjaU/2DpNUy5oqBUUCd
	2qfwuRZTae30vK4ItCN6OD7aUtX9vd5sJi3X6jJruyYpOp7wareU4NNeP2m3RpJKqMZpO69/soVVN
	o2ljRXXSa4obwRHIi1yQdoOuSG2MbnZ3yWVrEE2SrIdoqnmgQXKJapBL5EjO3lKHO2iUoHn4STmfo
	LmFvs0O+SjxcSrHrx4trr5w+U0NSobW83otGKJMSiDTs15+i275+6XgvYl7/haihtITzGnNd/C8h+
	Y7PDKJVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFO-0000000F0eU-3DFd;
	Mon, 18 May 2026 09:26:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFI-0000000F0co-16rl
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 09:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=PaQhmjpBYC2jKPg5Y5JNw/vDdOlrNdIvwV9TgE1NvOo=; b=Ai9P2QQfXgGea3JncBJgvj1hEu
	a3m6e95WcO/E8PJukkWfZNXrtDCiY/G6c1EokTunMpoZxs3B0cLcNy5EvSKd7dgvCB9MWY4abTNnS
	qaeWb5a1ggY/VY5UyMmvBzv8Q1s5nMc1cNGUnsdJ/PtStAE7R5bO3FSvqrVX7EzhECpAXhYxUgAwh
	06sN3FwVHZEJXlqtbpuf0EJa+S65TfwfjhB8N9bhqijOIGop1+M8o//T2pYD8F/KqQHr8E/QgFkjZ
	au3hvWlR79PP+1MYY04c+59ooO2S4CmfB16/T23rtfVzsrkGBkoZQyDggfGKFK9ne2lLMFdyhAZS6
	GNo7VKTQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOuFE-0000000AZNH-1omF
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 09:26:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFD-0005KM-L4; Mon, 18 May 2026 11:26:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFD-000ZJm-04;
	Mon, 18 May 2026 11:26:39 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOuFD-0000000CUMc-25a5;
	Mon, 18 May 2026 11:26:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 May 2026 11:26:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-k3-am62x-image-size-fixes-v1-3-ab723d79922d@pengutronix.de>
References: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
In-Reply-To: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779096399; l=823;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Raa/PIVT8nXRKRx6QJC0gc1iDncjBXHgA0KzY+vYuWo=;
 b=c/ueRVr3UN2q5Ganv5T+JcYZ/IdjVTQ2EGpXGJO5LqdP8Q3IL7vx6m6c2kWewmv/2tRzrBxrd
 XU/LH/XiA5RA3NrhInYy55aY4rYCgvtl4Hop4DOnAgSgKqUumSODhcm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_102641_066070_7CCB1375 
X-CRM114-Status: UNSURE (   9.77  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: k3: k3-r5_defconfig: limit image size to maximum
 available space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On the AM62x we have 0x3e000 bytes available for SBL usage. The upper
0x1000 bytes are used by the DMDATA, so set maximum image size to
0x3d000.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/k3-r5_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/k3-r5_defconfig b/arch/arm/configs/k3-r5_defconfig
index ece3d00947..6d8391c55e 100644
--- a/arch/arm/configs/k3-r5_defconfig
+++ b/arch/arm/configs/k3-r5_defconfig
@@ -8,7 +8,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="k3-r5_defconfig"
 CONFIG_ENVIRONMENT_VARIABLES=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x10000000
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x3d000
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y

-- 
2.47.3



