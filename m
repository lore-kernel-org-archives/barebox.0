Delivery-date: Tue, 10 Jun 2025 20:49:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP42W-005tLT-2I
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 20:49:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP42W-0002pc-6a
	for lore@pengutronix.de; Tue, 10 Jun 2025 20:49:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kJ/+xwOkizMH2QTasrLpWk9Z0VfdcUCUbOytnm3hR74=; b=2YAHOXs3Zm/AFm
	qbXc+BbhMviwyqSWHPkcXQ+RhewDfYxPIUICQAr0argWD5wAZJBLUKEZ5VFv/QLlwxwa5m9obGp6N
	EexgjXgWMQ0WDriK/EqBjY49ZSPPTdmgpLlifGeCdMZGfl2l3Ebc6f34II6iaG9b2cBRqPJrSa9wA
	IX2NH5h24OKCeoOE2JpRpXAz/2ZnBCGN1IH27lr66X7T1EUylDJYKCukvEKF4N19S9T6yWnlNzYGv
	Qm4fLxzb4UYb1RnhPFDyihQn2WE54DgluGkITibm4xcKpPYuhKD+kymg/x4bHuEQ49znZPMcJacf8
	I5TFr/EdwYMmVyHsiF6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP427-00000007qSD-2idW;
	Tue, 10 Jun 2025 18:49:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP0wV-00000007K67-3FKm
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 15:31:16 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1uP0wU-0005tF-Hn; Tue, 10 Jun 2025 17:31:14 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 10 Jun 2025 17:30:54 +0200
Message-Id: <20250610-imx8mp_ecspi-v1-0-d14d1e9d65f3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK5PSGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDM0MD3czcCovcgvjU5OKCTF0D82TzpLQ0S3PL1EQloJaCotS0zAqwcdG
 xtbUAs38J9F4AAAA=
X-Change-ID: 20250610-imx8mp_ecspi-07c7bff979ea
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=815; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=BP0UBKzJS7hoJMfSpeJR+pTlsozwgon2SsqM5IMv+gA=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYsjw8D/oczLqbyHPXadit9eL/a6f/+RcZitcqSmgt+lwq
 lWmWxZDRykLgxgHg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCKnghgZTrNYy6axcnxfe8E8
 eo78Ob9vJvGmF5eHakh9/frTvFRhBiPDKb6F2Y/uf3Hi3pVZc2dKsb7SS+WVUUfnKx75vazyv70
 yKwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_083115_814877_4AA15182 
X-CRM114-Status: UNSURE (   7.00  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] Add support for eCSPI boot on i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for atf loading of barebox proper from eCSPI NOR, similar to
existing eCSPI support for imx6, add
imx8m_bbu_internal_spi_i2c_register_handler.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Jonas Rebmann (2):
      ARM: i.MX8M: Add support for eCSPI boot
      ARM: i.MX8M: Add bbu support for eCSPI boot

 arch/arm/mach-imx/atf.c              |  4 ++++
 arch/arm/mach-imx/imx-bbu-internal.c |  9 +++++++++
 arch/arm/mach-imx/xload-spi.c        | 38 ++++++++++++++++++++++++++++++++++++
 include/mach/imx/bbu.h               |  3 +++
 include/mach/imx/xload.h             |  1 +
 5 files changed, 55 insertions(+)
---
base-commit: 95aeb8d47d1050b0f767bc48679f5295b229b8d7
change-id: 20250610-imx8mp_ecspi-07c7bff979ea

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>



