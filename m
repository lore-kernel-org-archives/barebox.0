Delivery-date: Tue, 15 Oct 2024 10:25:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0crq-004ah9-0M
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 10:25:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0crp-00018c-H5
	for lore@pengutronix.de; Tue, 15 Oct 2024 10:25:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EYZa9G8ZGcUfrb1NNLv3WIKDqbOs5FZ0pg7700OAvSA=; b=ucEffm8Mr+U90BT5PAcuev8szB
	TW55e9iPJPnP+LaOfIL/HJyNmdw5VcgKDiipNVnSINWujMPecBRroJxdO3gSJk6zt4L0LVlQr/jAH
	fYBOjc+BAdMM14tDWUhLv7RJT7OCXW3YyGkSwgYw8tBuQ2gKue3QdsevnmNes7jSS+8ssUf6T6mCX
	tve+qZ+iE0BW5E5+L23F6RQNFMsGBq0pW/PpdARXSgx64OOe++1o6Vj+P/1Q3hq3uptTuhD+nALV5
	7tqzmAIqwWLoGXzLxSyiC1XENhDBLIroazm4HNzKUEIyhkOrFvdB9qbpRIO7ddC95rsgLpMLuytI+
	C0v9r2kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0crL-00000007VX7-3TxF;
	Tue, 15 Oct 2024 08:24:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0crJ-00000007VWG-3UMS
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 08:24:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0crI-00013y-77; Tue, 15 Oct 2024 10:24:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0crH-001zCK-Qb; Tue, 15 Oct 2024 10:24:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0crH-0071Gr-2O;
	Tue, 15 Oct 2024 10:24:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 15 Oct 2024 10:24:45 +0200
Message-Id: <20241015082445.1670430-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_012449_889982_4B50ABB2 
X-CRM114-Status: UNSURE (   7.68  )
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
Subject: [PATCH] test: enable JSON web token support in full.config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

full.config is meant to be a snippet that enables as much as possible to
increase coverage beyond what's in the defconfig, e.g. to enable
selftests for a wider range of functionality.

We have no configs enabling CONFIG_JWT, so this is currently not tested.
Enable it in full.config to increase test coverage.

Next step would be enabling this for CI. This will have to wait until a
bthread related failure for x86 is fixed, which will be tackled
separately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/configs/full.config | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/common/boards/configs/full.config b/common/boards/configs/full.config
index 547100bacc39..8c42b431f970 100644
--- a/common/boards/configs/full.config
+++ b/common/boards/configs/full.config
@@ -1,3 +1,9 @@
+CONFIG_COMPILE_TEST=y
 CONFIG_BTHREAD=y
 CONFIG_CMD_BTHREAD=y
 CONFIG_PROGRESS_NOTIFIER=y
+CONFIG_JWT=y
+CONFIG_DIGEST=y
+CONFIG_DIGEST_SHA256_GENERIC=y
+CONFIG_DIGEST_SHA384_GENERIC=y
+CONFIG_DIGEST_SHA512_GENERIC=y
-- 
2.39.5



