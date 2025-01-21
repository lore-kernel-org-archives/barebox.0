Delivery-date: Tue, 21 Jan 2025 17:50:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taHSL-002ihI-2o
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 17:50:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taHSM-0003ax-0t
	for lore@pengutronix.de; Tue, 21 Jan 2025 17:50:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s6SQO1KEqeRSZ9YUqK9g3Pq8a2L7TxxSHjhrJvlqj3o=; b=lVry+fU8WOR/lM
	owKNOFecRk7Dn+fb67a4o1h/HJgZX5v1dPDZqhlNT+jrWPRB7jJ/G+tMh7QnUZTIxVgiNC/F2v8FE
	FFY0al+8GcpRAH0UpC0Msbb/zwlEm4S4XXt7cXTnCSb5zfeWJspm4NK40zhWs9qmzweJZjG4cRvbd
	nc7ZAtfVLGDEud9PQ/CrxNwbY/yfvwOU6Pz0OT6Glpi9uvkVZkyn+f3hcIaBuGXfA8SUlfUhMdbtK
	zdts2V37yOunI8MbC+Wo14GCGq84yDDAfDJNh/nf1N/wz7KCfWuRPcRCXawROKyQOhxu67MAYp62A
	Wqs+l6nBvijDeIfaZRtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taHRz-00000008OoJ-2LMh;
	Tue, 21 Jan 2025 16:50:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taHRx-00000008OmQ-0JcM
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 16:50:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRX-0003EV-Sd; Tue, 21 Jan 2025 17:49:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRX-0018z2-28;
	Tue, 21 Jan 2025 17:49:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRY-008WS6-13;
	Tue, 21 Jan 2025 17:49:35 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 21 Jan 2025 17:49:25 +0100
Message-Id: <20250121-feature-pbl-get-time-ns-v1-0-c3d493397846@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABXQj2cC/x3MSwqEMBBF0a1IjbvABD9pt9I4UPPUAjtKEkUQ9
 25weAb3XhTgBYGa7CKPQ4KsLkF9Mhrmzk1gscmkc13mSise0cXdg7d+4QmRo/zBLnBlvzCmLmx
 pNKV68xjlfM+/9r4f6LALZWkAAAA=
X-Change-ID: 20250121-feature-pbl-get-time-ns-6d9e8874d582
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_085001_118585_8FAC7D3A 
X-CRM114-Status: UNSURE (   8.14  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] PBL: enable timeouts in read_poll_timeout macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Without a time source the read_poll_timeout functions will deadlock in the PBL
if the break condition is never met. This series introduces the necessary
timing functions in the PBL for ARMv7 and ARMv8 based on the ARM architected
timer and enable their usage if available.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (3):
      ARM64: lib64: pbl: implement get_time_ns and is_timeout
      ARM: lib32: pbl: implement get_time_ns and is_timeout
      pbl: introduce HAS_PBL_CLOCKSOURCE marker

 arch/arm/cpu/Kconfig                   |  2 ++
 arch/arm/lib32/Makefile                |  2 +-
 arch/arm/lib32/arm_architected_timer.c | 15 ++++++++++++++-
 arch/arm/lib64/pbl.c                   | 17 +++++++++++++++--
 include/linux/iopoll.h                 |  8 ++++----
 pbl/Kconfig                            |  3 +++
 6 files changed, 39 insertions(+), 8 deletions(-)
---
base-commit: 5acd59882f02d8f8da002b939756c1739d917ac2
change-id: 20250121-feature-pbl-get-time-ns-6d9e8874d582

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



