Delivery-date: Tue, 30 Apr 2024 12:54:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1l7Y-00ACXe-1G
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 12:54:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1l7X-000633-QI
	for lore@pengutronix.de; Tue, 30 Apr 2024 12:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ywN/aIcW08M0m+NWpDI/+q9SC8Bhi5eyz79QLGm2QFQ=; b=aWviy8M9WRvk3pfLnSQkw5YZFz
	y7WWyLT+VaEikGf6u2CMupdizTzgWGmv+V01c+NSd+yjQL4bYwNPQEhX1W/aE7QgFj/HUv8pR5z6y
	PJk8HTYGIfvudC+qVJETVE8UCI6i+zT8g2tBzUF1gXNCQgV5xpiuAQoy/PIF3ae07kL+CPmUe2VME
	kGcL+aMzdgh98oX9Ig/I2xK8wFipLAgwmMFmqe8EwbYAABO8zvhdHv4rfX3vQh/EFq6zOFeuVdidK
	8T2reSJqFtFFAK7vxiYJ6UGBREjYYPJvBl6902+VdsZCrLW9HdIuYbhIsqc5CApVdNTr5NggfxIz6
	FLTxxJbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1l6v-000000064sR-05o1;
	Tue, 30 Apr 2024 10:53:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1l6p-000000064nr-1CQr
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 10:53:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-0005hf-Qb; Tue, 30 Apr 2024 12:53:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-00F99i-E3; Tue, 30 Apr 2024 12:53:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-00DEvB-11;
	Tue, 30 Apr 2024 12:53:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 Apr 2024 12:53:07 +0200
Message-Id: <20240430105310.3149242-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_035315_382877_B4D6C70D 
X-CRM114-Status: GOOD (  11.58  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] add PBL handoff-data support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We need to pass data from the PBL to barebox proper. Right now we do
this with passing the data in registers which is quite limited. As the
amount of information that has to be passed increases it's time to
overcome this limitation.

This series introduces handoff-data which is a linked list of memory
blobs that can be passed from PBL to barebox proper. Board and SoC
code can append this list with their own entries and pick them up later
in barebox proper. The ARM architecture is converted over to use handoff
data, other architectures could follow.

Sascha Hauer (3):
  ARM: move blob_is_arm_boarddata() to include
  add handoff-data support
  ARM: pass handoff data from PBL to proper

 arch/arm/cpu/start.c               |  60 +++------
 arch/arm/cpu/uncompress.c          |  33 ++++-
 arch/arm/include/asm/barebox-arm.h |   7 ++
 include/handoff-data.h             |  48 ++++++++
 pbl/Makefile                       |   1 +
 pbl/handoff-data.c                 | 192 +++++++++++++++++++++++++++++
 6 files changed, 293 insertions(+), 48 deletions(-)
 create mode 100644 include/handoff-data.h
 create mode 100644 pbl/handoff-data.c

-- 
2.39.2



