Delivery-date: Fri, 25 Oct 2024 11:01:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4GCL-000ZAu-1K
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 11:01:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4GCM-0002NV-3q
	for lore@pengutronix.de; Fri, 25 Oct 2024 11:01:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5W6Z2bUrSJ/TV3ozbm5Wm5Uq+W+OfHMf8Fh+FpMZPGU=; b=fgTfcLDtDgs/+qASffR63KYnAB
	Ws2d/Uq4VCvMXc4OVaUG8Eg75RhLdVb+eKUnh5Ofi0qcPe+i8KHf4ysRTy+VaDxsqzuCZzzjOTVgm
	YXJzMvhZ8xCAM9xkLpolqh+gJbOYuHostVYTMT0DkJV1KNz87dNm0QJewQrlPC0gn9+oy70B7OJEX
	0rFWqSUoeoVm0kWvTCe64zvgGRQPtLPGirbOTS8ArbwBM7Rfca2d4onPptTZZbJwlsx1t7r08aPyH
	sB5umjBHHBO/dq3CPnw7r6y9TwnnRu0sHrOU7sOYZA63zMVUAkpTdxlgB/s2M3n6/0j5dB/F8xCIb
	UHrO9gZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4GBc-000000035CS-3Gtx;
	Fri, 25 Oct 2024 09:00:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G8y-000000034CA-1gAC
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 08:58:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G8x-0001xI-0W; Fri, 25 Oct 2024 10:58:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G8w-000Ksd-2c;
	Fri, 25 Oct 2024 10:58:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4G8w-008UkC-2R;
	Fri, 25 Oct 2024 10:58:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 10:58:01 +0200
Message-Id: <20241025-reset-bulk-v1-0-52380683ed7b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJldG2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDAyNT3aLU4tQS3aTSnGzdRMNEc2NTC0Mzc9NEJaCGgqLUtMwKsGHRsbW
 1ALE27/VcAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729846682; l=664;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JwLUCFdm+i6Qncwm74vKYSptj5tMo0rxzmSp6wjJIGI=;
 b=sM7f/UGMqZAbIdg6jemnMStyxjv6Z0am/bzbcMpKpvmWAzl8jfqQBw3GNqUpWyJg+18QmYW9c
 j3VoDpqKmZJBdC001c/piSEYkcPLHqmZ+z0OPdulLm7LDgOBKMgfXwV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_015804_491147_18651011 
X-CRM114-Status: UNSURE (   6.16  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] reset: implement reset_control_bulk_get()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

reset_control_bulk_get() is useful for drivers which need multiple reset
controllers and has to control each of them individually.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      reset: add __reset_control_get()
      reset: implement reset_control_bulk_get()

 drivers/reset/core.c  | 35 ++++++++++++++++++++++++++++---
 include/linux/reset.h | 57 +++++++++++++++++++++++++++++++++++++++++++++++----
 2 files changed, 85 insertions(+), 7 deletions(-)
---
base-commit: e55e492573e33823f25935ee00fe7fa7bf2c5c90
change-id: 20241025-reset-bulk-a1a73581675a

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



