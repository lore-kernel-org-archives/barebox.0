Delivery-date: Tue, 17 Jun 2025 11:02:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSDC-008DQb-0B
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 11:02:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSDB-0001RZ-Ak
	for lore@pengutronix.de; Tue, 17 Jun 2025 11:02:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=033teF35leCnElgHUameStBuGZmf99BADLYhgWpwA4I=; b=xfoD427XFA8vJjgC6WJTw1FRoT
	cXprvdCInvbS2QWCUNsv69zlVEkpKqJRpeLPBRvMjobI/Fys8WEUvk0wypcLi6fe0tgkLV8hV8qKH
	+f7cnQq17RaO1uW3eKhbzpgLMmK7RR6ql0ojXPKKYyJpETuvnuBtb6dF8Zj5eObBtylAWZc/yF41g
	+P5HQ4Jo1L6AFqnvS29O/fBW0cKnBxU6t1ZwHmM6Ln9j9x44AoIpHwDp0+JY7aYZvs0WYT2uEvSft
	vAeu4BB/15rZb0LdKqFjHYcMfXKG0WHDrxD1MbuDE6NS9Z/aF7f1+qG5ALH9BKhpoEvj3CLslp/r1
	KFZMqF2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSCR-00000006g93-423t;
	Tue, 17 Jun 2025 09:01:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSCP-00000006g79-2E0Z
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 09:01:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-0008Tm-DN; Tue, 17 Jun 2025 11:01:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-003wfP-0f;
	Tue, 17 Jun 2025 11:01:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-00Cb9A-0J;
	Tue, 17 Jun 2025 11:01:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 17 Jun 2025 11:01:40 +0200
Message-Id: <20250617090142.3000882-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250617090142.3000882-1-s.hauer@pengutronix.de>
References: <20250617090142.3000882-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_020145_573954_E35235ED 
X-CRM114-Status: GOOD (  13.90  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] plat: ti: k3: fix SCMI parent clock ids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On AM62lx not the full clock tree is exposed to the normal world.
Instead only some muxes are exposed which do not have any connection
between them. When a mux has a clock_id of 'n' its possible inputs have
the clock_ids 'n+1', 'n+2',... Now the mux inputs are not exposed as
'n+x', but instead only as 'x', so when the normal world wants to select
the first mux input then it has to pass 0 as input, not n+0. This
confuses the Linux and barebox SCMI clock drivers which hang all muxes
to the first n clock_ids instead of their real parents.

Fix this by adding the scmi clock_id to the possible parents.

Change-Id: I5857e67b040e0060b1d2fe57937b5b44ccc3441e
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 plat/ti/k3/common/drivers/scmi/scmi_clock.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/plat/ti/k3/common/drivers/scmi/scmi_clock.c b/plat/ti/k3/common/drivers/scmi/scmi_clock.c
index 48a362ed5..afda3f05b 100644
--- a/plat/ti/k3/common/drivers/scmi/scmi_clock.c
+++ b/plat/ti/k3/common/drivers/scmi/scmi_clock.c
@@ -162,7 +162,7 @@ int32_t plat_scmi_clock_get_possible_parents(unsigned int agent_id,
 									clock->clock_id);
 	if (plat_possible_parents) {
 		for (uint32_t i = 0; i < (uint32_t)*nb_elts ; i++) {
-			plat_possible_parents[i] = i;
+			plat_possible_parents[i] = i + scmi_id + 1;
 		}
 	}
 	VERBOSE("num_parents %d\n", (uint32_t)*nb_elts);
@@ -185,7 +185,7 @@ int32_t plat_scmi_clock_get_parent(unsigned int agent_id,
 	if (status)
 		return SCMI_GENERIC_ERROR;
 
-	parent_id = parent_id - clock->clock_id - 1;
+	parent_id = parent_id - clock->clock_id + scmi_id;
 
 	VERBOSE("scmi_clock_get_parent parent_id = %d\n", parent_id);
 	return parent_id;
@@ -204,7 +204,7 @@ int32_t plat_scmi_clock_set_parent(unsigned int agent_id,
 	if (clock == 0)
 		return SCMI_NOT_FOUND;
 
-	parent_id = parent_id + clock->clock_id + 1;
+	parent_id = parent_id + clock->clock_id - scmi_id;
 	status = scmi_handler_clock_set_clock_parent(clock->dev_id, clock->clock_id, parent_id);
 	if (status)
 		return SCMI_GENERIC_ERROR;
-- 
2.39.5



