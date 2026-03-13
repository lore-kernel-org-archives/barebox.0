Delivery-date: Fri, 13 Mar 2026 14:33:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eB-000DIH-1y
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:33:47 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12du-0007wR-LJ
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:33:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OA53koo7hiuLhMIrFY5OAQIrD6q/jMjgtmiV6weSQ0M=; b=49GwSicC5WHdWWYEuBebjX8+qG
	dcjVo6w9FQbYIjc6dayPD2y5ieTyDUgH2+0VyNAK8MjRqedUOlWIPOvebEdFEc+r3PcUcK4mQGQsv
	9TIfOV9OnDPnxZtbCqLr7gFwfVw/wDpA0vYrPsIcJhpe3o8Hy7JqDbh2R+OArIzvYWyzmvL7HN3Ld
	7hWWfG7Ab/uLmhOtKJPEX0Xrf/a6Ni38Y7X8Za0+OXeuequ2ymfGXlOe2IKFLecmDZ4hBx3iZPMfz
	bSagiVImRmtPVVEyqxFuT3MivMU111RBinRRKfer/+raZhzPRZqI7ags2OHzXx3Bwm79iAqp5wNOj
	oi6W3ERg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d7-00000000FXC-1pxI;
	Fri, 13 Mar 2026 13:32:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d5-00000000FVV-1AP1
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OA53koo7hiuLhMIrFY5OAQIrD6q/jMjgtmiV6weSQ0M=; b=drcA7Isn0d5v6OI4PiCuZgh4BW
	aIGhGeaGZFc+Om2aDTgoc+ce41fXLyrgexaYquW/SEruk2D0o5+42VoRZKjcM9TMEnIXuSoOEFFu+
	9Zt41zmxEf0nqsCPNzJOIO4mCliiGpzmpdhBYEDnzjV+d5s95uquPCruwEk+T9PKBwQlSUZfWhHlL
	AqnEpRPu4VV0vDPtCOEUXd55rmh2v8YZxAPesnTRAaNEIqcU1OYM+holDKonwb0DtnHRMxY09IvsS
	60LssmczT2w1T04229/514gAgYp/HlWmX7Cb5YBIKi8jRTGO7MAsaxgc0JWQfeKLYuokF5pdgvoyM
	IszqxKUA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSY-3BFh
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0006n5-Kk; Fri, 13 Mar 2026 14:32:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0005SU-1I;
	Fri, 13 Mar 2026 14:32:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-3Rwg;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:19 +0100
Message-ID: <20260313132631.2257573-36-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_009124_840B15F0 
X-CRM114-Status: UNSURE (   9.62  )
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
Subject: [PATCH v2025.09.y 35/58] driver: fix missing va_end in dev_add_alias error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev_add_alias() calls va_start(va, fmt) but returns -ENOMEM without
calling va_end(va) if the allocation fails.

Add the missing va_end(va) call before the error return.

(cherry picked from commit 4959ca1bf487b20552b99fc5f3e49aa43aa11476)

Fixes: d914ef13a9 ("driver: add support for device aliases")
Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084253.3547270-2-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index f15b252ea318..6a2a9efe66b0 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -637,8 +637,10 @@ int dev_add_alias(struct device *dev, const char *fmt, ...)
 	va_end(va_copy);
 
 	alias = malloc(struct_size(alias, name, len + 1));
-	if (!alias)
+	if (!alias) {
+		va_end(va);
 		return -ENOMEM;
+	}
 
 	vsnprintf(alias->name, len + 1, fmt, va);
 
-- 
2.47.3



