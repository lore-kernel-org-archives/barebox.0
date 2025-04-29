Delivery-date: Tue, 29 Apr 2025 16:32:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9m0a-000WMA-07
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 16:32:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9m0Z-000387-5C
	for lore@pengutronix.de; Tue, 29 Apr 2025 16:32:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cwd7h8i4ExFinLG5ukI7W56pnLGgU1n+j54IJO95PZ4=; b=Zt9hdui2tgT9WuVfhIx3aHM9JS
	UTDQDpJAShxI4aJSEzkk69cJzEpjg7PV4WOd/gSko8HjRc0By9U6OveNFFW8YdalNfQkZGECuWvLW
	5IGglu12kG4EM0lT3L5A/ONpPBnjwsuaGRazFNAqUOIptdr6O6Xo5p670o8Q+bXB27HFwzzEuPiq9
	KTHDk3DW0ZboB5nQzspS+hjZwoAZd+2cgqzc7+6BQXpWWRV77IR3/h9yFtBNBoQ2Bev7NGgMnXPE1
	ljVuJ2WGmksk1aawJHQsO/tK/d6z8YAorpgKKbASD+ojhZMbMC/BMWe+izDDm+WTfpej0fmmHj2lo
	QGVucT6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9m02-00000009xmG-3lhr;
	Tue, 29 Apr 2025 14:31:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ljC-00000009uGA-1Ads
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 14:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=cwd7h8i4ExFinLG5ukI7W56pnLGgU1n+j54IJO95PZ4=; b=W9KlAsYKCuQYgeHzYXbIzrub2H
	QzvM77zu5VTEP8ZEB+hbRVRuWQd3c91fREawtBClEyx8nRTqEwB89VM4luWhujX1GDjHcdUjBjB0I
	qx0Bkfyu43N9gykv5F/8m8UgDtbOacEMUfrx3BoJST9TN4o+upFD9i0aumZvZ9w2lPUFEstLqJID3
	PmXwfdXcocXLF29tVpJI/ZqTpRm/8KUIdpdPRq0o7jJmCZD59nQoqUwhk+zLmKLk8wizqyD5YmfS0
	Y2a45dgHEXQGI8gnf8pPhYZdi7/aGR1OQ6OS/YVi7NRuJY08jRz1cZZKK8iX0c9LiTEqiaCZQ5eLA
	sambewnA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9lj7-0000000DNLi-2Xit
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 14:14:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-00084X-Lb; Tue, 29 Apr 2025 16:14:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-000HEk-1J;
	Tue, 29 Apr 2025 16:14:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-00Cqw2-17;
	Tue, 29 Apr 2025 16:14:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Apr 2025 16:14:19 +0200
Message-Id: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALzeEGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDEyNL3Wxj3cTi1BzdZNOkNMNUQ5NkIzNzJaDqgqLUtMwKsEnRsbW1AGJ
 80SJZAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745936062; l=1331;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=h2aKL9VzTmORgfbSQRzAWsSn0VjIWrz8RhwaT4UBONg=;
 b=MLST7HtuLPYxlvay0DqyeL2Vu9jpMu5dTG3R/CCZJVrs9h7FK7msEscfKVC8acevsmrNrZedG
 utmA9ANZEB2AI38ba2aqUxaM3tv6+P1eAqV2GMCN3DJGwXV1k3rVuwi
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_151425_835999_0D058AA1 
X-CRM114-Status: GOOD (  10.38  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] K3: Add Asel support to the DMA driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds Asel aka "Address select" handling to the K3 DMA driver.

Asel is a four bit field that has to be put in bits 48-51 of the DMA
addresses. This is needed once the DDR firewalls are enabled.

The DDR firewalls are needed to protect the OP-TEE memory from accesses
from the normal world. One would assume that upstream OP-TEE does this
by default, but apparently it doesn't and once they are enabled ethernet
in barebox stops working. This series fixes networking in barebox with
DDR firewalls enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      ti/k3-navss-ringacc: switch to Linux code base
      firmware: ti_sci: pass struct to ti_sci_rm_ringacc_ops::config
      firmware: ti_sci: handle Asel
      dma: k3-udma: Handle Asel

 drivers/dma/ti/k3-udma.c          |  125 ++--
 drivers/firmware/ti_sci.c         |   29 +-
 drivers/firmware/ti_sci.h         |    5 +
 drivers/soc/ti/k3-navss-ringacc.c | 1326 ++++++++++++++++++++++++-------------
 include/soc/ti/k3-navss-ringacc.h |  211 +++---
 include/soc/ti/ti_sci_protocol.h  |   34 +-
 6 files changed, 1088 insertions(+), 642 deletions(-)
---
base-commit: fe58b1f7d24ea2171d0761a26f2b5a74e61322e4
change-id: 20250429-k3-asel-c5bf1e14c267

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



