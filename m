Delivery-date: Wed, 09 Oct 2024 16:11:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPm-002Fqe-2G
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 16:11:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syXPl-0004Aj-PW
	for lore@pengutronix.de; Wed, 09 Oct 2024 16:11:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EP0baHgA9ufVdJaKQxUQIiRIcmTMx/fUGdjcwOFBhTE=; b=kd4gQdousKyVad0ilWqRH6BjY9
	AOSMxSMkibUFSzP6BFrk6FF1bcaXAvAqpqDLQe+iOrZXgi/IBYFAdr7SVFBIqdI6bY2O2ObnGR2ny
	3YmNgFjk6cs/EyWa+DrincwgCVkNLaIYnzpT/AFi2DogE0KrlGI9DE8n7HU/9KBUMsOqxKWA2LtgP
	8k+59T2R6WwbmiPbI5mf3eJEL/O6IIX3FOWx+DtA61OgKi77znAsJqrYaZmX2AazZn7G4hBmIX6cg
	I5hznXgymPj1pv6wg17uncUxvq57jEn1tRaPrXbGioTjwmx4F70/ATpv7cJeSNLA/LzyhDU73fB4O
	p2k4poZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syXPD-00000009XNi-0aOq;
	Wed, 09 Oct 2024 14:11:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syXGI-00000009VfW-385H
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 14:02:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGH-0002qx-B1; Wed, 09 Oct 2024 16:01:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-000cNh-TL; Wed, 09 Oct 2024 16:01:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syXGG-008Mdc-2f;
	Wed, 09 Oct 2024 16:01:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 16:01:55 +0200
Message-Id: <20241009140155.1990882-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
References: <20241009140155.1990882-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_070158_945666_073194F2 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] test: self: rename REGENERATE_RSATOC to REGNERATE_KEYTOC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit 7b51f76a4534 ("rsatoc: rename to keytoc") reflects that the tool
now also supports ECDSA. Therefore, let's rename the environment variable
that we use to regenerate the C code from the JWT PEM accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/self/Makefile b/test/self/Makefile
index 6390c4afd478..666a8f9ee7e2 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -19,7 +19,7 @@ obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
 obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
 obj-$(CONFIG_SELFTEST_IDR) += idr.o
 
-ifdef REGENERATE_RSATOC
+ifdef REGENERATE_KEYTOC
 
 $(obj)/jwt_test.pem.c_shipped: $(src)/jwt_test.pem FORCE
 	$(call if_changed,public_keys,$(basename $(target-stem)):$<,-s)
-- 
2.39.5



