Delivery-date: Thu, 11 Jan 2024 16:44:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxE3-00D8OQ-2N
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 16:44:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxE3-0002i5-3B
	for lore@pengutronix.de; Thu, 11 Jan 2024 16:44:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wVdwObwMNlRf07cuVN1VSRW/SSdpAIOc5szYZrnidO0=; b=iPp3jwbfdDTqY0bfbmol854oUh
	D/KMia8FqpCMRcw/pZB8rfLeG148JH+gX50h/bDXuZhu0Q9JYvEFP2P7piNy9o+kHh4ZUhqFOOml1
	djaAS94vfrfJDV1eoUscSzUQ9y3A14/qvPhEKWpQw8Lwn/3SH+XP/biPpDUxeGxSJDhTmghVeQhbv
	SYVk6PhQU8mInYweOD72QCa1YdqlODq4Z1A+q4sIYtyYueK6I0Hm4DhkzeOJVSQTiSJDGXtdl8BvU
	FU0eaFo/5qkVotTXaZfx6G6n2KiNj9uXfGgPcFtZgMY78uqFSm58m+pZdERzgOimtreOqeUGmLHKl
	FMvvWz9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxCy-000U8N-10;
	Thu, 11 Jan 2024 15:43:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxCu-000U7H-2X
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 15:43:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rNxCl-0002JE-KB; Thu, 11 Jan 2024 16:42:51 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rNxCl-001xVJ-75; Thu, 11 Jan 2024 16:42:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rNxCl-009OBb-0X;
	Thu, 11 Jan 2024 16:42:51 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 11 Jan 2024 16:42:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240111-fix-habv4-event-report-v1-2-15d9a990f01e@pengutronix.de>
References: <20240111-fix-habv4-event-report-v1-0-15d9a990f01e@pengutronix.de>
In-Reply-To: <20240111-fix-habv4-event-report-v1-0-15d9a990f01e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_074300_827507_0E6FB4AE 
X-CRM114-Status: GOOD (  16.04  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] habv4: use hab rom implementation of report_event
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The existing habv4 rom vector table had some mismatches in the API of
the function pointers which broke calling into the HAB rom - mainly
observed with the `report_event` function. The suspected culprit here is
the `bytes` pointer which was `uint32_t*` vs. the documented `size_t*`.

When compiled using the ILP32 data model e.g. for 32-Bit systems both
referrenced values have the same width, but once compiled for (I)LP64
they differ as `size_t` is 64-Bit wide there. This seems to trigger a
memory corruption once that pointer is passed to the HAB boot rom code
and dereferenced there, the root cause wasn't investigated further
though.

As this implementation has only been tested on an imx8mm and imx8nm board
I'm beeing defensive and only enable it for these targets. Once all
SOCs of the family have been verified to work correctly the OCRAM
readout workaround can be removed.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/hab/habv4.c | 43 ++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index dfa0207435..db5862a92a 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -180,6 +180,33 @@ enum hab_sip_cmd {
 	FSL_SIP_HAB_GET_VERSION = 0x07,
 };
 
+static enum hab_status hab_sip_report_event(enum hab_status status,
+					    uint32_t index, uint8_t *event,
+					    size_t *bytes)
+{
+	struct arm_smccc_res res;
+
+	v8_flush_dcache_range((unsigned long)bytes,
+			      (unsigned long)bytes + sizeof(*bytes));
+
+	if (event)
+		v8_flush_dcache_range((unsigned long)event,
+				      (unsigned long)event + *bytes);
+
+	arm_smccc_smc(FSL_SIP_HAB, FSL_SIP_HAB_REPORT_EVENT,
+		      (unsigned long)index, (unsigned long)event,
+		      (unsigned long)bytes, 0, 0, 0, &res);
+
+	v8_inv_dcache_range((unsigned long)bytes,
+			    (unsigned long)bytes + sizeof(*bytes));
+
+	if (event)
+		v8_inv_dcache_range((unsigned long)event,
+				    (unsigned long)event + *bytes);
+
+	return (enum hab_status)res.a0;
+}
+
 static enum hab_status hab_sip_report_status(enum hab_config *config,
 					     enum habv4_state *state)
 {
@@ -235,10 +262,6 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
 
 	if (cpu_is_mx8mq())
 		sram = (char *)IMX8MQ_ROM_OCRAM_ADDRESS;
-	else if (cpu_is_mx8mm())
-		sram = (char *)IMX8MM_ROM_OCRAM_ADDRESS;
-	else if (cpu_is_mx8mn())
-		sram = (char *)IMX8MN_ROM_OCRAM_ADDRESS;
 	else if (cpu_is_mx8mp())
 		sram = (char *)IMX8MP_ROM_OCRAM_ADDRESS;
 	else
@@ -292,9 +315,19 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
 	return HAB_STATUS_FAILURE;
 }
 
+static enum hab_status imx8m_report_event(enum hab_status status,
+					  uint32_t index, uint8_t *event,
+					  size_t *bytes)
+{
+	if (cpu_is_mx8mm() || cpu_is_mx8mn())
+		return hab_sip_report_event(status, index, event, bytes);
+	else
+		return imx8m_read_sram_events(status, index, event, bytes);
+}
+
 struct habv4_rvt hab_smc_ops = {
 	.header = { .tag = 0xdd },
-	.report_event = imx8m_read_sram_events,
+	.report_event = imx8m_report_event,
 	.report_status = hab_sip_report_status,
 };
 

-- 
2.39.2



