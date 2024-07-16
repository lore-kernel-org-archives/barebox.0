Delivery-date: Tue, 16 Jul 2024 14:04:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgua-005REn-38
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 14:04:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgua-0003Ms-5b
	for lore@pengutronix.de; Tue, 16 Jul 2024 14:04:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9rdvWDJISuCDo8RGT1l/SdXyiMbDHcwhrxd6Sn3S/Xk=; b=krviwqClTHcqFnafk3s8Hi87JL
	GYwSIeKgXazCDsvmFV2AZGeMTE4Tqor7jKofmNNrufoDKTzgZKZn1iJNuUR3J5t4J0uiR5lGj9LRB
	gQn2G5w4Y2FhZTpcPxiR0BnuVFNMfto5JLFDI4VmgXoIm8f7gcXvS4vRg99EsZ7DaeSLdxfEb8mCy
	jhHwOYJHMQNOLCRyx5cUaeHqvOQKQHTbPVFCFhsewrvZakePKhtgLyIxSVajBJCQErVQtl3oOZeNy
	lBAj+YF79WQolIomlb2UbqkBW5PtoPKLO9c5B79HjzhZks4VP5DmozNR08OyyZRdmbDpDX2/RVLHd
	iy4tUqnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTguA-0000000ALgN-3Rwb;
	Tue, 16 Jul 2024 12:03:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgu8-0000000ALet-2Ncc
	for barebox@bombadil.infradead.org;
	Tue, 16 Jul 2024 12:03:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=9rdvWDJISuCDo8RGT1l/SdXyiMbDHcwhrxd6Sn3S/Xk=; b=IfBcz/vvIPLfvQg8TkOqY977a1
	tcOFc8dkxHWwe4Xy/+LNaGawoAeYfp09YXTDpeOBL//uPJBPYPm98KHbkkblppmU6idMcWfQorYkb
	ch+5hxTO2aS4f+7XeIzzLVMsS5vA8r4Rl3lF4/310ABzQTyoX871LyzMNAywe3ZocRW+1YZD1p2wO
	/fsXKKgPOfOVzP1MQ51IsnsWGwByK8c5qMw9Z+oyC8wZ695AZMF22GMOZQVm7yGEIclOdXeMjNiKX
	FW3UkfdDRQG2zgXoc6LMy786D74wASeuxt7VGehY/d+kCvpc9RGK464rguelXg3eflEW2m/RaixGC
	MRhCftfw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgu5-0000000224z-2Pu8
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 12:03:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgu4-0003AV-Ur; Tue, 16 Jul 2024 14:03:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgu4-0007aI-Fj; Tue, 16 Jul 2024 14:03:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgu4-008LIm-1H;
	Tue, 16 Jul 2024 14:03:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 14:03:30 +0200
Message-Id: <20240716120330.1988495-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716120330.1988495-1-a.fatoum@pengutronix.de>
References: <20240716120330.1988495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_130333_789101_57307742 
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
Subject: [PATCH 2/2] rtc: return first RTC when rtc_lookup(NULL) is called
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We assume e.g. in hwclock, that we will have a rtc0 if we have any RTCs
at all. Instead of hardcoding specific names, let's just have
rtc_lookup(NULL) return the first best RTC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/rtc/class.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/rtc/class.c b/drivers/rtc/class.c
index 3d6cfd6197a7..c09ec3f61ea2 100644
--- a/drivers/rtc/class.c
+++ b/drivers/rtc/class.c
@@ -18,11 +18,8 @@ struct rtc_device *rtc_lookup(const char *name)
 {
 	struct rtc_device *r;
 
-	if (!name)
-		return ERR_PTR(-ENODEV);
-
 	for_each_rtc(r) {
-		if (!strcmp(dev_name(&r->class_dev), name))
+		if (!name || !strcmp(dev_name(&r->class_dev), name))
 			return r;
 	}
 
-- 
2.39.2



