Delivery-date: Sat, 01 Mar 2025 17:37:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1toPqE-008YlM-0h
	for lore@lore.pengutronix.de;
	Sat, 01 Mar 2025 17:37:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1toPqD-0005FJ-1a
	for lore@pengutronix.de; Sat, 01 Mar 2025 17:37:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iO5gmDnQu0RNgghjitXxbgh09C51wY/EcmexD7FUmDs=; b=MMueC/6lXfhhs4ARTl6Y1aFTxi
	CjXk+Pow+MSPbDCKieY1OkQupr5uv0q6gjKapr9sKbNTfm+l5yipNNpg1PjF8UGt6WnpMcn35MqiE
	QfA3jWbjV5K0FDCtdjRxeEktd23jsdlsLNgzdVUbcjjN4ibtR+7rDcnCpogWfarsm+n9d+8iX1B9O
	GX/1nhbXIKRauj2+h+Qm6v12d4m/TwKRvBAhiIoGKnrrGs6PVHdqrXlerxE+BZ32UQDDVJY7bnwYi
	1PgONzs2sgp7+3Ka63MEXKn95Yh2TrOlqqh3sVmhQr1ioKI9C/Gn+KPZXxMaTyjQMYapBIlU6sbiL
	8sYb1xOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toPpU-0000000EdDv-21Vg;
	Sat, 01 Mar 2025 16:36:44 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toPpQ-0000000EdCG-3ouf
	for barebox@lists.infradead.org;
	Sat, 01 Mar 2025 16:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1740846997;
	bh=gSYse+bUQ5JV7NR5GyjCvQJmsRJ7lKLYk8w2kasjAUA=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Hd3zie4zuL6pc10ML6rdesJ7Rf+43i98RWNXwDfDzbjTtWfEYzxwsEhjUHiPbK5Rp
	 ee4+4PFf3Z7cIMwWREYHiCgzLzGgj3/gSGFIOTI50NnvVaiPg+PumbuVEnTQizaXHj
	 BRrrUwBH6jPei9xKe4kZ267KK0bFyrglPIZY63lYuS22Tx8u+jIWIUpyOjvj4e8BWN
	 6VyRwRpr2aGfLsDxYgUvAvNpdCLn3r3ZA5rDr4kx+TWfUfbOeuJztTLvC9nRlyr1k/
	 R1qJKGMuDMIUP/p0B45MKa+Y2vjFhb8QsVSR66L3sGPgbN6rMTEWvLkeyCkQoYTysL
	 84Y/Pwe1UGAAw==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 8E909FAD480; Sat,  1 Mar 2025 17:36:37 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Date: Sat,  1 Mar 2025 17:36:19 +0100
Message-ID: <7877998d2d34d00913ece6ef21d1fed8a6ea4771.1740846737.git.uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1740846737.git.uwe@kleine-koenig.org>
References: <cover.1740846737.git.uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1162; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=gSYse+bUQ5JV7NR5GyjCvQJmsRJ7lKLYk8w2kasjAUA=; b=owGbwMvMwMXY3/A7olbonx/jabUkhvTD5q1ya4X6qmQWffK3r9kl/vRSDJOzp+uz82zhzuqRI t2qi+w7GY1ZGBi5GGTFFFnsG9dkWlXJRXau/XcZZhArE8gUBi5OAZhI4xX2/8E5DIxLPTNvv91n lHFd1ubjutVvKkQnsc16fP29yaL5zDWvjujJ38tgenWiOkXkoZeQkIyW+p5LZwvV3mS1aXK/X3V h5uLYjnv/eqOmbDj06NK8FUq6byfGiMqzHeJ0fxh2qW7tEZ2ommXX/zA+Ccj/k7gyS/n5POsdi0 MtJZ7PuDTpnOyDH38Yr3g+EXWyL3dxEJu+0evAXc3jxSnJ7QbbbMUrGgXvcGYE1pQ1nNvELys5T 8mXYXFpW+bS8p5Hno413ukPTY26+v9uiPNg1hSSeRwiIbMwrDqI7/19aWVTnunx4pK8oga/Vqfk NpToLFqYtMF3W+OEHLbiVy/W9ZjETtJWmyX96Vu8+MtFAA==
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_083641_094737_08EE9D50 
X-CRM114-Status: UNSURE (   6.80  )
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
Subject: [PATCH 2/4] arm64: rockchip: Refresh rockchip_v8_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is just the result of

	make rockchip_v8_defconfig
	make savedefconfig
	cp defconfig arch/arm/configs/rockchip_v8_defconfig

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 arch/arm/configs/rockchip_v8_defconfig | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 83799ac492e7..941625394ccf 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -7,8 +7,6 @@ CONFIG_MACH_PROTONIC_MECSBC=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
-CONFIG_BOARD_GENERIC_DT=y
-CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_MMU=y
@@ -91,7 +89,6 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
-CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_AIODEV=y
 CONFIG_ROCKCHIP_SARADC=y
@@ -156,7 +153,6 @@ CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
 CONFIG_FS_BPKFS=y
 CONFIG_FS_UIMAGEFS=y
 CONFIG_LZO_DECOMPRESS=y
-- 
2.47.1



