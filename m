Delivery-date: Tue, 28 Apr 2026 11:24:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHega-00HGzj-0x
	for lore@lore.pengutronix.de;
	Tue, 28 Apr 2026 11:24:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHegZ-0006HM-JC
	for lore@pengutronix.de; Tue, 28 Apr 2026 11:24:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8lg34neXLsnFRj6bdIR+YYmEBu5hMCT2zEAA3hPZwnM=; b=UdoQdXTXlVIQU3YvkbGJYA3Qei
	FSQ2C50YuqdKpjwLyZ9OEz73a7LjcQUGhsEosolni9p7LV5N1XIAcoWA3oxoBZe1RXzJ4bQHDugqx
	yeQ+LjSNOoNjufKqnfvTal46P8XZL6Gokob14t8gRHyenAJ2WXeHCljuOJLCcE/L4Ie15deXXsYqz
	fdycP6MXpyU5RW2apk3lMDFZqHQ/E5E/Nt1lPzYYSKJWfwiF8nEaH8j3caVq3jg8/I/pNc8OwSqUN
	Sy+Bsl7MKd1TmJgRLdJXmPSjAeGnYKdxqNvqaFMfOe3J4JrTLK0bPDSD7SEUdXeZ8/cr27ZZ1JFbp
	FEYnT/gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeg4-0000000156I-0oDt;
	Tue, 28 Apr 2026 09:24:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeg1-0000000155T-0nDm
	for barebox@lists.infradead.org;
	Tue, 28 Apr 2026 09:24:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-0005wq-PS; Tue, 28 Apr 2026 11:24:11 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-007dfA-0e;
	Tue, 28 Apr 2026 11:24:11 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-000000093nw-0WmZ;
	Tue, 28 Apr 2026 11:24:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2026 11:24:09 +0200
Message-Id: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALl88GkC/x3MQQqAIBBA0avIrBNSIqqrRAvNqWajMpYE4t2Tl
 m/xf4GETJhgEQUYMyUKvkF1AvbL+BMluWbQvR77QU8SfZbmuUPkYFGOWtnZqcHYeYLWRMaD3v+
 3brV+cRUWlF8AAAA=
X-Change-ID: 20260428-env-autoprobe-621b9d14ab98
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777368251; l=705;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CNM2d0o/X7Vklf3F8gRJBxlOCQpT0aBJqL2canN8vfk=;
 b=lk8ejC2fV+exehD3kCY861dNtLNK5BPCxksEF4kWPnN9XFDMMlrHBbex3QD7L7J6npt6uvzby
 BH0GgCuFLxgBSVdU78vhZv1o8H6x6DoT1hqi6ueLuIKIH+2mYDNelDH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_022421_232431_F85AA7D3 
X-CRM114-Status: UNSURE (   6.34  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] environment: Allow autoprobing env devices without
 CONFIG_INSECURE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Autoprobing environment devices vie barebox environment GUID currently
only works with CONFIG_INSECURE enabled. Add an explicit Kconfig option
for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      environment: Drop /dev/env0 default
      environment: add global.env.path
      environment: add explicit option to allow searching for environment devices

 common/Kconfig       | 14 ++++++++++++++
 common/environment.c | 10 ++++++----
 2 files changed, 20 insertions(+), 4 deletions(-)
---
base-commit: 019d102038a64e6b6e8f445cbfd2d15e68d0ec3f
change-id: 20260428-env-autoprobe-621b9d14ab98

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



