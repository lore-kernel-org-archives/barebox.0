Delivery-date: Wed, 19 Mar 2025 16:44:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbC-001VhK-1n
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 16:44:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbA-00043b-UY
	for lore@pengutronix.de; Wed, 19 Mar 2025 16:44:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q8lf1IXmkCSSH68M2cOVu0JB+kOI2HMezwKgntEWEd4=; b=OSFiUcQA45f1l3d2e7D6pa7l7/
	ZM2ZDcYLWQBwqFMDjH2tWFgjtsKLVbn7He3Jynane3IBMldT6sdKf3KNHx99jKjoWIFJa3Qn2hWhW
	tk7A0OeMC6d2dT97rBYtJK/brCODkh2ihG0rsXxDW9O3Zwz5Rygkoz5j/oI36tmWvHsRAmvvduze9
	stKszyoz5BitklaIi1BCpi6wP3ukyd89BlyCciT8Txlf0Uif18NhPy+pPIuZCtWNbVzdaepKmyLx4
	g8tE5bGOFyabxPNUgGSNyiCU6+K/zZxC5aq2ZWVSlG5QHiPt/Fzx92+ZBRJGDmfUUVGojpOhYH7/F
	8MV0wbSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvaf-00000009QYp-0lCr;
	Wed, 19 Mar 2025 15:44:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvNm-00000009OAA-2M3f
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 15:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNl-0000z5-9m; Wed, 19 Mar 2025 16:31:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-000cAh-1O;
	Wed, 19 Mar 2025 16:31:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-00Awy1-2R;
	Wed, 19 Mar 2025 16:31:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2025 16:30:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-rpmb-v2-5-a8801fb35cd4@pengutronix.de>
References: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
In-Reply-To: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742398260; l=745;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ladJvn+nsXdOLFTzWheIGMu0QdT3lt+Eh/UCGT/lM2c=;
 b=SLPdrZMsBhWhSK3VRqxvasIJ7NeUaljOqrIFvZTQJZ3XxbtFF2OnT7vueptW/wdcRcvjDiiQo
 /xTfLEPg/WkBdyaUH5A8MlScTZTkOzYovT+DATk0/R9Lyd6RnwN6GkP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_083102_620268_450E7CF0 
X-CRM114-Status: UNSURE (   9.69  )
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
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 05/10] tee: optee: probe successfully even when no
 devices are found
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

OP-TEE iterates over the devices and when none are found the OP-TEE
driver returns with an error. Return successfully instead because
for example RPMB support doesn't require any devices exported from
OP-TEE.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tee/optee/device.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tee/optee/device.c b/drivers/tee/optee/device.c
index 100a877395..5176989a50 100644
--- a/drivers/tee/optee/device.c
+++ b/drivers/tee/optee/device.c
@@ -115,6 +115,7 @@ static int __optee_enumerate_devices(u32 func)
 		goto out_sess;
 	if (!shm_size) {
 		pr_debug("device enumeration PTA found, but no devices!\n");
+		rc = 0;
 		goto out_sess;
 	}
 

-- 
2.39.5



