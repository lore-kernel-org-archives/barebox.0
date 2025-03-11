Delivery-date: Tue, 11 Mar 2025 13:48:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trz2S-00CgBb-1H
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:48:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trz2R-0007db-8V
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:48:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AcCMxKj8Yi/PjcTWs7sfjjEHvJTmvp3ZfXwGilR0FhM=; b=MytWtc0hA/E5xg1mOm5WhMnoa7
	LF8ghm/2/Z8gHbp2j0I4M2O+hEgv2Cfv4rPe31ZfBcvVQbyA6KuzZy/U8ehd+zl8jDm2xO7knzgwo
	4HMu0+lvZ69fozUD3J98OfTwFksI+N8OUiav1a0VGA+ITyINwyCketRhJxlbacUOE675rgBM/CX8R
	nKf0/CMs1d4SS33ltdkxH+0H1k3moNBMxqp/GI7+DtmckjUEz5qiqaz4R+lb3zoUKq07jZa8FpeNz
	Hm8kTUAz254AZ3snuL/AQB5RnboLR+1lNNDut22bJuGPKbzu7EDMPMPm1mjCO7Uqc5QJ4HF3LAqs4
	7dM2dhfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trz22-00000005jPO-3aEX;
	Tue, 11 Mar 2025 12:48:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trynT-00000005f5e-0wQo
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:33:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trynS-0004hl-37; Tue, 11 Mar 2025 13:33:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trynR-005B8K-2v;
	Tue, 11 Mar 2025 13:33:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-1G;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-am625-secure-v2-10-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=719;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=6JmaAp5Oom8HbsuKqJZ0GP0BN2hgMUwV+yir9z2/TAU=;
 b=7hnTTMmTaoYNM8GQMgbCWuU4Q9LXiS7COcQdDTpahb0yaNRv0GufDkPD12iZ9pNIuy4J4mzFv
 MgoruKOSO//DCWxGnFvIDhcd65SHyNf5kJhTjcur1BFzdJ6LXNqdQ5O
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_053323_312378_473F145D 
X-CRM114-Status: GOOD (  10.36  )
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
Subject: [PATCH v2 10/14] ARM: k3: r5: delete fip image when it can't be
 opened
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In case the uploaded FIP image can't be opened due to corruption of
the image we end up in an endless loop trying to open the same image
again and again. Delete the uploaded image in this case to give the
user a chance to upload another image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/r5.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index 79bdb7aac7..e7133ff4ab 100644
--- a/arch/arm/mach-k3/r5.c
+++ b/arch/arm/mach-k3/r5.c
@@ -319,6 +319,7 @@ static int do_dfu(void)
 			ret = load_fip("/fip.img", 0);
 			if (!ret)
 				return 0;
+			unlink("/fip.img");
 		}
 
 		command_slice_release();

-- 
2.39.5



