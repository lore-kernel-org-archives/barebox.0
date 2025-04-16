Delivery-date: Wed, 16 Apr 2025 12:32:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u504W-001QHP-1R
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 12:32:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u504V-00022z-TE
	for lore@pengutronix.de; Wed, 16 Apr 2025 12:32:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fQ9Fn5jWcajeBVND6ifTjrur+0JxOJ8PpOq9YMgsHrw=; b=0WXIua+1Vg6WGV/D0Jj0/EOCZT
	Doht6HrzCLvpBHdWIM+4y3eFtNwanX+ilZQbTFNZqcx7gS572E3bYUl6cXc3uBnv8CcZQYuVE85tZ
	HH2F72mhavlsfsnLv8PjlD2DW9G3ji6ucgmmsBtPE5CveCxBPC/gJzMTP6L34jhgaaq7X+8FZ9kff
	ZYcNdHYuZUqivdl8bJh+5JfQXEUrwReHcQ83ee7opBUgMUiYCeUvcBchVBZqSZs95K1Cv4poTvKwT
	c5z0NTRHCr6/MjqnKKSg6Yc1nYNYCpX0sIbwm3+qykT9Dv6y8w2SiCBeYTcwSB+QJvPGJ2coENMa4
	HNze8t4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5041-00000009Atp-1XFT;
	Wed, 16 Apr 2025 10:32:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4zB3-00000008zfh-1r4Y
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 09:35:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4zB1-0008KG-JI; Wed, 16 Apr 2025 11:35:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4zB1-000Ywh-1J;
	Wed, 16 Apr 2025 11:35:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4zB1-000OPk-10;
	Wed, 16 Apr 2025 11:35:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Apr 2025 11:35:26 +0200
Message-Id: <20250416093526.93723-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250416093526.93723-1-a.fatoum@pengutronix.de>
References: <20250416093526.93723-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_023529_481485_D0AC3CF5 
X-CRM114-Status: UNSURE (   9.36  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] Documentation: devicetree: add of_diff hint for visualizing fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_diff - + is a very nifty tool, so make sure to mention it in the
documentation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/index.rst | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index 2ca8b72be1ac..94e8d04f63c3 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -174,3 +174,12 @@ In the ``chosen``-node, barebox fixes up
 
 These values can be read from the booted linux system in ``/proc/device-tree/``
 or ``/sys/firmware/devicetree/base``.
+
+To see a dry run of what barebox would fixup, the ``of_diff`` command can be
+used::
+
+  # Diff before and after applying fixups on barebox DT
+  of_diff - +
+
+  # Diff kernel device tree before and after fixups
+  of_diff /mnt/mmc2.0/boot/imx6q-tx6q.dtb +
-- 
2.39.5



