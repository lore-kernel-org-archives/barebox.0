Delivery-date: Mon, 07 Apr 2025 09:56:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLi-009Soy-1V
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 09:56:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLh-0003lE-Rx
	for lore@pengutronix.de; Mon, 07 Apr 2025 09:56:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EhvMafetKlUGIVoz4/6zEZ8mJHp7RP+vNzBw5wyDChc=; b=Y7jBOzZoF5tmZaGy7kmrcZSkUE
	dyHqq2BB6MoLC3vHU+Dqpk2k0QxpPyXHjRxMLvuzCMHB3FNOv3S5uphYKkY98OblVfrcPul+PXD/Y
	1p8TJxlUyOqvMqBYiZ/unLVKrqh+1gHZ1pRjiVlgApNUF8YIji3taENHmpGPX/nmNQEzj19rxWaQk
	SP9HvuhAOyKdK1NxBBjiSUB4hRiu/chpfeRzwB50vZtC94mMgkeDDIVMDNUdI47M/tQE7cjYrKMJP
	ZaizmTUHizsv7UNooUmeqNiUfa1yAZY91Av5gkHGQY5TX++ewXOoMLP/9q/wNrkRuzgff2MkPLpto
	qobyOfvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hLA-0000000Gt6l-3ukm;
	Mon, 07 Apr 2025 07:56:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gvd-0000000GmPT-2JhQ
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 07:29:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-0008CI-R1; Mon, 07 Apr 2025 09:29:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-003ilH-24;
	Mon, 07 Apr 2025 09:29:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-004aOW-1s;
	Mon, 07 Apr 2025 09:29:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 07 Apr 2025 09:29:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250407-ratp-fixes-v1-1-4c2501a83bca@pengutronix.de>
References: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
In-Reply-To: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744010993; l=1286;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=8IgQ2ua1007bRayjMLkEsCho/Vhk2CvttmODB/SDGxc=;
 b=WI161pDWHmkfVG9o12beT705WyNWJEYpcd05AyutttpwgpKS9wThfpL7SHzKyEkqW7cc/SgE2
 GpZILHEqTNHBiUSeKeCLzt03S1Zr2W3V4whDH7EKGA+i+d3vG5lmqlN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_002957_601870_3C9FCEFD 
X-CRM114-Status: GOOD (  10.86  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ratp: Drop wrong alignment annotation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When ratp command handling was introduced in ff612b866f301 ("ratp:
implement generic command support") we had an explicit 64bit alignment
for the ratp command array in sandbox. This was removed in 52e5c35671
("X86: lds: remove unnecessary alignments"). With this it can happen
that the ratp command section starts at a non 64bit aligned address, but
the first command in that section will be placed at the first 64bit
boundary. __barebox_ratp_cmd_start will no longer point to the actual
command then and the array iteration fails.

Just drop the wrong alignment annotation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/ratp_bb.h | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index 418be6fe7b..c6c7c4bc23 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -57,12 +57,7 @@ struct ratp_command {
 			       int req_len,
 			       struct ratp_bb **rsp,
 			       int *rsp_len);
-}
-#ifdef __x86_64__
-/* This is required because the linker will put symbols on a 64 bit alignment */
-__attribute__((aligned(64)))
-#endif
-;
+};
 
 #define BAREBOX_RATP_CMD_START(_name)							\
 extern const struct ratp_command __barebox_ratp_cmd_##_name;				\

-- 
2.39.5



