Delivery-date: Fri, 31 Mar 2023 16:34:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1piFpm-004JmU-U5
	for lore@lore.pengutronix.de; Fri, 31 Mar 2023 16:34:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1piFpm-0004we-QQ
	for lore@pengutronix.de; Fri, 31 Mar 2023 16:34:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2BpNdP+8CN23dgUgRxSf/nJ0DIFPElTBZUp923Qj11I=; b=klDuTiceLEe/Hh79X03q0s0u2c
	02emQbKpT+EAC+WZ/yMQxDcCse4XoVPtXWi/uNqO+vuZ07RDKUka7DvWWgb5KqVszJ2ICCBdjwkdw
	JrgPS38uaPKSWQvqvO8IJBOZvNErUr9moz2AIDDau8F9p9j2rDtzo9ATNUGMo96AYLYJgPesHcVq8
	8LPzQiRgFqCP71mrxr6M1R3q4L3fkr3E2l42CgX9De+5SpLvA+uHqOaRiWAtGEbzYWZ2v80Hg3Bjp
	XeIWIPg7ZD0gKDeWcgYAHqiE7Qks22p1d2iwqcl6SSexmIDwzg9k6Rlzcd1ha89OiDUWItF9SwUi3
	WjQfrjcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piFo2-007jie-2e;
	Fri, 31 Mar 2023 14:32:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piFn0-007jIs-20
	for barebox@lists.infradead.org;
	Fri, 31 Mar 2023 14:31:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1piFmu-0004iW-KB; Fri, 31 Mar 2023 16:31:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1piFmu-0081B9-0D; Fri, 31 Mar 2023 16:31:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1piFmt-007zCW-53; Fri, 31 Mar 2023 16:31:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 31 Mar 2023 16:31:30 +0200
Message-Id: <20230331143130.1903540-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_073138_660221_FF6BDFD3 
X-CRM114-Status: UNSURE (   9.58  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: state: make barebox-state enabling in Kconfig easier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_STATE only enables the framework, but practically all users
interact with the framework via the device tree binding, which has a
separate symbol. Make barebox state enabling easier by automatically
enabling STATE_DRV and CMD_STATE if possible when STATE itself is
enabled. They can still be disabled for configurations that don't
need them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 57fe5f7886de..d951947463a2 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1016,6 +1016,8 @@ config STATE
 	select ENVIRONMENT_VARIABLES
 	select OFTREE
 	select PARAMETER
+	imply STATE_DRV
+	imply CMD_STATE
 	help
 	  barebox state is a generic framework for atomic power fail-safe
 	  variable storage and retrieval. It can be used to safely maintain
-- 
2.39.2



