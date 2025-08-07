Delivery-date: Thu, 07 Aug 2025 17:54:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uk2wL-00820Z-1t
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 17:54:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uk2wL-0005XO-23
	for lore@pengutronix.de; Thu, 07 Aug 2025 17:54:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5os9BxwvPFYOT5G7//F+zfS7Fbt4ivZb7htZC0ll3oQ=; b=e5Y8LlO70NUDkUJpG+MOTSFueH
	P6Rm7Giyu7rttx8RDD9gT+krTb4E2YUp57yOGvJZzqRKrmEADN60yEtArdh+sKtHPeyebQsJ9zAnK
	qk0VRLKg1sXzpnO2Puwz/lFsu3s3iMQaR6bUgIO8BG0pH5924FSHYVQN0gOhrOGFViyj2ap72Z2Hw
	8Zijb1nJhmeBGMCgVzwTueHQirg+sENr4lRMoPq02UG55rqDPGQqmgTYfTBrCFbO1duGIaU7Qibjk
	8+93Ct0LwufarDTT05Aftwiv0/aEmF6H7TrNoeSC6JVKd6AqaRb6GA15cH7vRcshYQ88C1Yd2PmXQ
	p9bTscQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2vg-000000013C2-2gjV;
	Thu, 07 Aug 2025 15:53:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2vd-000000013AV-42N7
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 15:53:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-0005FD-C8; Thu, 07 Aug 2025 17:53:14 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-00COnE-0R;
	Thu, 07 Aug 2025 17:53:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-006PB8-0C;
	Thu, 07 Aug 2025 17:53:14 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 07 Aug 2025 17:53:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250807-fix-rtl8152-dropped-packages-v1-2-a71d05b4d166@pengutronix.de>
References: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
In-Reply-To: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_085318_000776_4FD6F08F 
X-CRM114-Status: UNSURE (   8.74  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] net: usb: r8152: print the detected version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Which is helpful during debugging to know which version of the chipset
is used.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/net/usb/r8152.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/usb/r8152.c b/drivers/net/usb/r8152.c
index e29dd2ba43cedd9204f9cc418975ba1ace4f5167..f7f4656e1c43bdfe8cfdb877c3e49b9d8816a7eb 100644
--- a/drivers/net/usb/r8152.c
+++ b/drivers/net/usb/r8152.c
@@ -1053,6 +1053,9 @@ static void r8152_get_version(struct r8152 *tp)
 			/* Found a supported version */
 			tp->version = r8152_versions[i].version;
 			tp->supports_gmii = r8152_versions[i].gmii;
+			dev_dbg(&tp->dev->edev.dev,
+				"r8152 tcr version 0x%04x RTL_VER_%02d detected\n",
+				tcr, tp->version);
 			break;
 		}
 	}

-- 
2.39.5



