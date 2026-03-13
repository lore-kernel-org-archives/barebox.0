Delivery-date: Fri, 13 Mar 2026 14:35:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fW-000DX8-21
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:10 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fE-00017m-1m
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DN5UB+NVwoBqd2VyE2++RRK0s/FhDAF67Xn72UNTaGY=; b=j/uxESILfWS0SQBOLHe2Rw6eUn
	GghqK4tMkQIwNb9c//HiRbo/+p2zYGB0YlWfH3CM7M/7kfhn2A65m/zeEUFk1SCWp1HnI3LqWQxq8
	iMgyCMiqZqkJjjWpsPdLiwaO5rO51TwhPQPGKHDcDT5VHwTL1nBiTvTLgOjeZiTYqtkJlWplIckJr
	RlBvjbIniKgrim7yF59ap42yX2peYqoV0BK5ihwHUkP93LghyLR5+Jdp3EcAr2TisPqAPuGx63KnL
	NVDghed27LJL0iaXoq680hXvOI5Ai1UCri8NmeSdQeUCfq1VT6SeGHyMIiWXecATEY7l+IWW1RduJ
	FyIRWAzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dj-00000000GZT-1RId;
	Fri, 13 Mar 2026 13:33:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000Fox-3kAX
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DN5UB+NVwoBqd2VyE2++RRK0s/FhDAF67Xn72UNTaGY=; b=OunTzBM1md4Ogaq7nLkU1IzPLu
	0NcMaqxOCRcqjgww4ojXkm+l/W3O2QIz+boy4UaLK9ATrX2Gan8uIkIFeX+6+yFhSYrYGq9KX0OAN
	H/ogHbdMBxFRCYuZJNuhWEIETj342mwFLWr3RHrRe77OSXSVPNkju2K0wTqbWFxkiRN5vX8mwFJj6
	bQV2itDV9NWhLLfPc8rY3yKOfXeMdWH1Gucs2tJPPYtpyzq0aHy4+ISqvtweDFug2usf+lnfBxcqi
	TmY9tTTCQEn/wP3+/wj3M3AUIrhOL3nDua7ryykD9FiYVGtSoBeGf5LIQIgie/J9/4wkQS3YWUX9b
	MI7XbGGA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-00000003OSf-0ljT
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006vE-Ql; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005Um-1y;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-33xZ;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:17 +0100
Message-ID: <20260313132631.2257573-34-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133240_542990_84AA6A4F 
X-CRM114-Status: GOOD (  10.56  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 33/58] of: overlay: initialize ret to fix garbage return value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the FIT image has no valid overlay configuration nodes, the
for_each_child_of_node loop never executes and ret is returned
uninitialized. Initialize it to 0 since having no overlay
configurations to apply is not an error.

(cherry picked from commit 2fb737e978c1e9baccdbb0ae2901bef387f39917)

Reported-by: GCC 14.2 -fanalyzer
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084142.3546363-4-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/overlay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index bad7769187f1..76dc955a9300 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -540,7 +540,7 @@ static int of_overlay_global_fixup_fit(struct device_node *root,
 	enum bootm_verify verify = bootm_get_verify_mode();
 	struct device_node *conf_node;
 	struct fit_handle *fit;
-	int ret;
+	int ret = 0;
 
 	if (!IS_ENABLED(CONFIG_FITIMAGE)) {
 		pr_err("FIT based overlay handling requested while CONFIG_FITIMAGE=n\n");
-- 
2.47.3



