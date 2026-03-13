Delivery-date: Fri, 13 Mar 2026 14:27:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YD-000D9S-1N
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:27:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YC-0005dV-16
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:27:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kMzmVV5GSpkZ507H1FdKaRVqFy97wASr+MDqudo4stA=; b=1aR03sjGtCIRE9Bdpsmic/coOZ
	iEgzSRm6q3CWEtcq3mj//fgVHNkHBv2RkcK/b6XFNO91uYKvGKACpESh/Ce6iDHtJUeOoor712SD+
	FkD0saZcqy3VQz8roRCUE3hatCGAuzDw9+Vnihq6J2ARqYzM8hPLn7+nE9Si/v5v8OATgoOxcrSCc
	j/yaZmLVrHwGvReFogmFUX/4WVMFHtlZ2Y5ziNKFAoz+OTqm23K8TNjpdhjtAcUk5xRqWPxDgPPs4
	3tONGn+L59szmfH7T42ug+RuRjcJdB9h3eTpck3SRXJs+fpGZZSH5eq4D4KrgrM1fjSaWcR8p1dE7
	A/SUCZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XR-00000000EBy-3ydt;
	Fri, 13 Mar 2026 13:26:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XN-00000000E88-2Yhr
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:26:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00058D-P1; Fri, 13 Mar 2026 14:26:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-0005RS-1O;
	Fri, 13 Mar 2026 14:26:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-1PDe;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
Date: Fri, 13 Mar 2026 14:24:46 +0100
Message-ID: <20260313132631.2257573-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_062645_652912_8F99E734 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 02/58] scripts: imx: fix string in further auth block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>

If an additional block to be authenticated is added via
'hab_do_block off+size@addr' the CST tool will fail.
It seems that an own line is expected for each authentication
block. Add a '\' and linefeed after the comma to avoid a fail of CST.

(cherry picked from commit 8a8dffde3e6f7c6fd2ba19ac8444304be67e1e3a)

Signed-off-by: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
Link: https://lore.barebox.org/20250901-imx6-usb-uuu-v1-1-1194bb6135ae@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 26027f0f3548..6dabaf59c159 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -488,7 +488,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 			return -EINVAL;
 		}
 
-		ret = asprintf(&str, ", 0x%08x 0x%08x 0x%08x \"%s\"", addr, off, size, data->outfile);
+		ret = asprintf(&str, ", \\\n 0x%08x 0x%08x 0x%08x \"%s\"", addr, off, size, data->outfile);
 		if (ret < 0)
 			return -ENOMEM;
 
-- 
2.47.3



