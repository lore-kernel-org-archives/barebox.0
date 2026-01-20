Delivery-date: Tue, 20 Jan 2026 13:23:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAlV-003NpP-1d
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 13:23:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAlU-0005Qq-HQ
	for lore@pengutronix.de; Tue, 20 Jan 2026 13:23:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R6H5X53V4qDPzNduZny/oj4cK9OVA10nnhfZ202I0A4=; b=icy5UVgOqgExgipblbn21cqTBZ
	dXxdyyX6WoYh6P8gVJSyGA9Ao5gV9DBJIRUOanqlC2nc8BT3f/MkodZ+uRBkCpdYwjZitKJDxHfgG
	rrW3PUP2dD6N6v7iCuX0IgGuLs/qJFiArDzPwBvzDKH1NmE219hvVgyMh4itOzPT3ygbbglVHgNew
	Badmg2JO5ScwdccpaKxTP1WCYLmZoejbLYv9zA0YF1R5LRGmcKTEe/OPtGGjib+GyU0HdsFRf4Z61
	N3VbJE9NIStICfG0l399YN3zP5pIpvr3gIzqhsvoT88g1X72zZNmCueaxblmxZNyt2xdInM1aoWsF
	wO8fwxcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAkx-00000003p92-3mAO;
	Tue, 20 Jan 2026 12:22:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAkv-00000003p6s-34od
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 12:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=R6H5X53V4qDPzNduZny/oj4cK9OVA10nnhfZ202I0A4=; b=kM3lfkTo7D9T1FUs8opfd0etZY
	3GeqnS66OMN5u403bPk6at5Yy1+nRY8nlaZaQnUKd7F9AAWu1/3buOsLr0mERb/QLGvmplCGv8XpI
	J/e+W0311hhWv2oaGpENLCRVOc1y6SoZWEaH7kBwWBBPlbRsvQUnNpH9uIjf6fDIVFBw+kdsxcLtx
	lBpC03JA0hoolixVGpwhOOupN1fKC/1isLGzi99XCRVnakBcaHy/jZOck6e627zX9DgRj9BWcEi03
	uaS7da4WOukPVVJ2yUpFkBNIeKXOpZ3MZcGbndc7yIEY2w5XI76UdqR2hu8aaq/FiKLqmEsC+CQc7
	IOn5bYdA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAks-0000000E0iK-2lAV
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 12:22:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAkr-0005J2-BA; Tue, 20 Jan 2026 13:22:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAkr-001aA3-2f;
	Tue, 20 Jan 2026 13:22:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAkr-00000002cDY-377f;
	Tue, 20 Jan 2026 13:22:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 20 Jan 2026 13:22:36 +0100
Message-ID: <20260120122240.623440-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_122242_788278_CFBB31B1 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: configs: multi: enable CONFIG_BOOT_OVERRIDE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The override mechanism is becoming an increasingly useful development
aid, so enable it in the multi defconfigs.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 arch/arm/configs/multi_v8_defconfig | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 688fd1c7c19e..5db25fd1a74b 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -103,6 +103,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
+CONFIG_BOOT_OVERRIDE=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 73a2d5feef37..2ceeec4a3180 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -55,6 +55,7 @@ CONFIG_PROMPT="barebox> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOT_OVERRIDE=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-- 
2.47.3



