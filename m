Delivery-date: Mon, 30 Jun 2025 09:47:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9EE-00CYCx-1d
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 09:47:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9ED-0005kH-Kg
	for lore@pengutronix.de; Mon, 30 Jun 2025 09:47:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VYCMB3JpRDhhFg5RoCzKrfoFb3gRowLowFCI0ryLzVM=; b=RQFgh0h5PgVQkb5ofpHN+YlzVi
	waS8A11SRJ8/MlMjKgyzmFmCarDzKX1SDHeP//snLxTI2Nss5yhpu9IMOdVOEGGPP2axwwK8Q2L8t
	rzTypYg9/YD2Z9n8G5eh+6RVetrAnGQwNxamizsjdDHwB7PRzawEV47zcVOK1Jw/VomA73zF6e4WP
	0MpeO0mMgrGx8/KcdwjIGN38P6senoO/6jjJ//z8lj1JVBq9VSqb4ParRgirk2MkCKYk6OkFv8JZd
	V7N8B1jDSjhj5Q7rOlcXpFGsWxvNprdgexbfcW9PYDaWDwT3HsUe2dgSIplLhw3LlbOzKb4EsmMCl
	djjNzE4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9Di-00000001UfT-0NuV;
	Mon, 30 Jun 2025 07:46:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9D3-00000001UQt-3joO
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 07:45:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-0004O8-KQ; Mon, 30 Jun 2025 09:45:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-00648J-0n;
	Mon, 30 Jun 2025 09:45:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0P;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-4-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269547; l=1027;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Vtl6qZwRi5DiZ/55twfT8RW3vWveCPRV0uJAxBpXiTM=;
 b=mh5vlance90XylplD2N4Ogo0Z9yXJiAqqDDXt9ZXO5uhNEIFK4xk/TIE3PewCXPY9nOVbxbc5
 9CbV6S92fCGAvjPVbMfHdu1n/wpgGV3MTj5VZx6Cs71GeU1w9Q8UTgT
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_004549_964740_C7B2E6C0 
X-CRM114-Status: GOOD (  11.93  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/14] ARM: i.MX6QDL: add imxcfg helper to configure the
 TZASC1/2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

On i.MX6 platforms we need to set the bypass mode within the DCD unlike
the i.MX8M platforms which uses the PBL lowlevel code
(imx8m_tzc380_init()).

Add a helper for this to make the integration easier.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/imx/imx6q-tzasc.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/mach/imx/imx6q-tzasc.h b/include/mach/imx/imx6q-tzasc.h
new file mode 100644
index 0000000000000000000000000000000000000000..968b17d5ec3f74674d3a2049423d71a978e675e9
--- /dev/null
+++ b/include/mach/imx/imx6q-tzasc.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Per default all clocks are on, except for TZASC1/2 CG11/2, so enable them
+ * before activate the modules (disable the bypass mode).
+ */
+wm 32 0x020c4070 0xffffffff
+/* Disable TZASC1/2 bypass */
+wm 32 0x020E0024 0x00000003

-- 
2.39.5



