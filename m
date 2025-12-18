Delivery-date: Thu, 18 Dec 2025 12:38:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLE-00CoNj-0M
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKf-0000oN-SR
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g4XkKkgAe5UTmmrWruvLdcuDTa+GPGvcvUdDcqZj3IY=; b=G0Uq3egME0Nl+8PLjkchMfmQLK
	fozPOY7SPx7AmOugP8yC9A0NeoPZTA4S5npy17+MpJUDB2PF4VQ6vXLgQ+DIY6fVgr8xT57z9yN85
	2QM5E7Yh/Agv/b5+7hUkWiwmNt1V5gQt3iHkLumD3dtR/4vmEIT9rro2qL43/uwDqdfCksjsLBTn7
	mYI//mHAYaxWSXkjorO5EqaP/drfmNxgWujWejeJQgFf7nfw60WkfLSHvQyYDKJwD9FY3rO7bqoOI
	fx5NoXJ8CjB9QFf7p9fhFNimTbd24BoHhk2UMvbiDXoUkD91Cjaw5t9txI0mes/su2nzHmyOKoKEZ
	t3clS4vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJd-00000008KU6-12Jy;
	Thu, 18 Dec 2025 11:37:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJO-00000008KBJ-0S19
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-0008AB-KR; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006Gv8-1Q;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-3n8G;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:59 +0100
Message-ID: <20251218111242.1527495-40-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033650_141145_4E8FF5B4 
X-CRM114-Status: UNSURE (   8.20  )
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
Subject: [PATCH v1 39/54] ARM: psci: client: register runtime service restart handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like done previously for poweroff, also register a runtime handler for
restarting the board.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/psci-client.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 17b021898884..f53181d18473 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -47,6 +47,12 @@ static void __noreturn __efi_runtime rt_psci_poweroff(unsigned long flags)
 	__hang();
 }
 
+static void __noreturn __efi_runtime rt_psci_restart(unsigned long flags)
+{
+	psci_invoke_fn(ARM_PSCI_0_2_FN_SYSTEM_RESET, 0, 0, 0);
+	__hang();
+}
+
 static u32 version;
 int psci_get_version(void)
 {
@@ -184,6 +190,7 @@ static int __init psci_probe(struct device *dev)
 
 	restart.name = "psci";
 	restart.restart = psci_restart;
+	restart.rt_restart = rt_psci_restart;
 	restart.priority = 400;
 
 	ret = restart_handler_register(&restart);
-- 
2.47.3



