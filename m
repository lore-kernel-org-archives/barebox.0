Delivery-date: Tue, 20 Jan 2026 13:25:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAnV-003NrF-1f
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 13:25:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAnU-0005qj-6H
	for lore@pengutronix.de; Tue, 20 Jan 2026 13:25:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AVzx6+VIiNaKiGDVlMbHh6OdEN63JCYMzxSwiOII10c=; b=a0+esplKeiKVVuT1YuzU+IWbFu
	4GgP+BdVOn/MqudhXQ503/V1QoVTdewVJ/yvSKDXrSnR1//L9Xgm239yP6Kk/NSRzjBTrKvnrc/wL
	rqCfBf/RmHigidH5nXLhz71LOzSXKN2mqL28XdG7oEzfF7HzRNFmsBQVUSfXJNPaO7YeoIwXo+v5R
	DSBxwg0oxxjM5eGX226OBeXSckAbX84hqd2krgqqSaxsrxzvL+dbqmRXD88RG19++1JnWegv8gr/O
	dsP5l97KCOXFvLAcM1WM9Suh3mAL6mO0WNOfw8vBbhqTI1x4kEoV5wueQ89eEcUKVbmlGrWmYpEEQ
	meGz0k8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn6-00000003pa9-1Xgn;
	Tue, 20 Jan 2026 12:25:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn4-00000003pZV-3HhA
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 12:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=AVzx6+VIiNaKiGDVlMbHh6OdEN63JCYMzxSwiOII10c=; b=CLfIl2oO+sBH6VbfNnVETfKbfN
	lddYuG35GLnIEodU/qyEUhPionbEKEkDkSF63evwz6OCcp7effedwzqZ+RpJMbdoebi7k4KKa1pG+
	s8BSFzB7O7JHtzoqslj6OEppmYbEn0a7pZFZyLe27KMWTO76Nm1baNgKWh32yJwb+J5L4qIXYrBDW
	Odj8ly1CGRS7W0/d90uEIurvaqvN+19ZhyAQadkC7kUer/UnM9mi6tHmklASjYcApo5wNV+E/wp8T
	j4VuJbHjUk5+DKgoBNhqNy27Gmj4O49jzx46OI3974ZEBnw542Epquww8Gzs/kUBbijBc1oSjfLqK
	M0mwZtuA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn0-0000000E0xs-2r8w
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 12:24:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-0005eS-3r; Tue, 20 Jan 2026 13:24:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-001aAC-1u;
	Tue, 20 Jan 2026 13:24:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-00000002dE4-29Sw;
	Tue, 20 Jan 2026 13:24:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Jan 2026 13:24:43 +0100
Message-ID: <20260120122453.627239-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_122454_912003_7E67E3F4 
X-CRM114-Status: UNSURE (   7.54  )
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
Subject: [PATCH 0/3] ARM: socfpga: shrink socfpga-xload configs in size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Just shaves off 1 kilobyte (out of 60K), but it gets CI green again for
now.

Ahmad Fatoum (3):
  include: asm-generic/bug.h: allow disabling CONFIG_DEBUG_BUGVERBOSE
  ARMv7: hyp: allow disabling support for invoking barebox in HYP mode
  ARM: socfpga: shrink socfpga-xload configs in size

 arch/arm/configs/socfpga-xload_defconfig |  5 ++++-
 arch/arm/cpu/Kconfig                     | 10 ++++++++++
 arch/arm/cpu/lowlevel_32.S               |  2 +-
 arch/arm/cpu/start.c                     |  2 +-
 arch/arm/cpu/uncompress.c                |  2 +-
 include/asm-generic/bug.h                |  2 +-
 6 files changed, 18 insertions(+), 5 deletions(-)

-- 
2.47.3



