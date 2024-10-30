Delivery-date: Wed, 30 Oct 2024 16:00:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6ABq-002jUc-2K
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 16:00:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6ABr-0004JD-68
	for lore@pengutronix.de; Wed, 30 Oct 2024 16:00:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3V4Jd6kH9gqTc2A2Xlou5v62cIl1OAmMpZnqpHN1QrY=; b=Ikm6weAvixeNo/K2snpHk4R+iq
	fgTW3zwfwNwTRN71a1+GZjfswjO7A7g51FrFb5fa8ikqukh+cETR/s7WQ0KhlUQv/3bumuflqCMyT
	7IUSpdOwRUp2XGFQQIguU/0TkOYs/QHlK1H9HskqoXcyLPcyP1/hgI/wIcD0p2fSvRqoAbAfnuB5m
	l5pMDQYCZ51mR03n+y0DcNzx2+4RFqDpF7PUl47KYFEWby2e0V2RRr7Htp6LX2/MM9zlczMeP4nHT
	TDKxpAeDYbGhQM+Zi2erkwkiSoiQn5RMqSAZWUDHdaU646esQ7zRZS2VmYEIw3dwdvS3VnnQPWD6+
	tjqLl7SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6ABC-00000000kk1-3XVS;
	Wed, 30 Oct 2024 15:00:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6AB2-00000000kcf-0QSt
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 15:00:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6AAy-0003sS-QS; Wed, 30 Oct 2024 16:00:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6AAy-001DMV-1r;
	Wed, 30 Oct 2024 16:00:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6AAy-003w8y-1g;
	Wed, 30 Oct 2024 16:00:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Oct 2024 16:00:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241030-imx-flash-header-v3-v1-1-1ae28b3b8947@pengutronix.de>
References: <20241030-imx-flash-header-v3-v1-0-1ae28b3b8947@pengutronix.de>
In-Reply-To: <20241030-imx-flash-header-v3-v1-0-1ae28b3b8947@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730300400; l=1507;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9Jb70rnsHSqq/3mzCJ6lr/KeokwVj3iikj4yHN4+7WM=;
 b=obiZgYGm4e3DmP3neqqDd5AEj3iZ/ZQcwnA34VEEIqt09yy4fGVvYZIHe/NAX2knbWhMgoQlW
 XcIiWHuN8tHAWvAQhS4jlQuosSLQ7IhNwh+Sz9BAaIqb9jxmy9CrDWO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_080004_341329_F19F501D 
X-CRM114-Status: GOOD (  11.34  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] filetype: detect i.MX flash header v3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 67ae4916d1..73ea17e19b 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -70,6 +70,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_elf] = { "ELF", "elf" },
 	[filetype_imx_image_v1] = { "i.MX image (v1)", "imx-image-v1" },
 	[filetype_imx_image_v2] = { "i.MX image (v2)", "imx-image-v2" },
+	[filetype_imx_image_v3] = { "i.MX image (v3)", "imx-image-v3" },
 	[filetype_layerscape_image] = { "Layerscape image", "layerscape-PBL" },
 	[filetype_layerscape_qspi_image] = { "Layerscape QSPI image", "layerscape-qspi-PBL" },
 	[filetype_nxp_fspi_image] = { "NXP FlexSPI image", "nxp-fspi-image" },
@@ -432,6 +433,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf[8] == 0xAA995566 && buf[9] == 0x584C4E58)
 		return filetype_zynq_image;
 
+	if (buf8[0] == 0x0 && buf8[3] == 0x87)
+		return filetype_imx_image_v3;
+
 	return filetype_unknown;
 }
 
diff --git a/include/filetype.h b/include/filetype.h
index 6425c9c8c5..c24d061e8f 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -51,6 +51,7 @@ enum filetype {
 	filetype_elf,
 	filetype_imx_image_v1,
 	filetype_imx_image_v2,
+	filetype_imx_image_v3,
 	filetype_layerscape_image,
 	filetype_layerscape_qspi_image,
 	filetype_ubootvar,

-- 
2.39.5



