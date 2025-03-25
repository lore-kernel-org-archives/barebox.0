Delivery-date: Tue, 25 Mar 2025 15:39:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx5R5-0042zy-2N
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 15:39:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx5R4-0002wN-LX
	for lore@pengutronix.de; Tue, 25 Mar 2025 15:39:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P29cStNUMldFFm2gHdjR1nPSoZUBO2BTZ5LZpY2seGI=; b=i/NZG8G4N2bGO1
	DwB/MrzIv4mJ4KVmn8X/RfTNxkA10IRs5Aa+FTp2O4u8SsF5ft9MtcTs2e6PTCqRhwTBfeiA2y/Od
	Y03setMGOes0hjmwDDt5LB4sNaNiWniv6Y/6hfzVfg5MloQqomTUex3YU9LbI40wyZbL44PYqgE5h
	fxb5vu/S9izJQ1rp9678mFRGYqC35yYCG9FaPlE9/H7KTbw2UZLk+tKu5F9n8C5FwgTzYSSjXxd+H
	XhHaVDYnNpNj0nqhB741XmJdpx/WaaKM+2GiF8d3alGwm7HpfyjXjVUsX6+bXYLnOKv4rdfsj5hZ2
	Q6HavbCEkhzXt5sEZgsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx5QT-00000006DTj-3p7K;
	Tue, 25 Mar 2025 14:38:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx5Ov-00000006DGF-33ef
	for barebox@bombadil.infradead.org;
	Tue, 25 Mar 2025 14:37:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=P29cStNUMldFFm2gHdjR1nPSoZUBO2BTZ5LZpY2seGI=; b=MLnsuLIp4983ss+/MSUchMiYp8
	UQmDQa+BMRjyIHxN0Ppdg1OviFy489rYtTCEdDrNwIZPfwZHK0ltp4qIdf8hWQLLaWtZJr5TY0oIJ
	eTcbBTLAs7xrh51a5WnSzh7RBlNRnfmQOV0HTekT4Ttk4snrLH1ujtTB+0IiDzu1OlRDFNb83+OIk
	o5hecp7+9/Y6nnZqI2bPN9ULL7ABlxLIgsRiuhVEOGoGAwhqV1UBAmNKj6MACdunlzJnLQQdd1nFA
	URjkjwb/ImLdHNVUN3JTxZR2injPik7HYEstJlHr7tZZ5/KvusRWibVxB22xgRaL6mIXX2LOA3rXy
	EMD7ZjQg==;
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tx5Os-00000005Vtw-33Cr
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 14:37:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742913418;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P29cStNUMldFFm2gHdjR1nPSoZUBO2BTZ5LZpY2seGI=;
	b=ZxqvdBJssJeJzAk4zkrRMXv2WRXDxh+jq+YVoJSQSdcPzeKuGGJXG4ZVNRHEr5i+pGVtUQ
	YX4lqBT7oMsqJvTsB6Nizy5OWBrxpEz/lUYKWmaHAQ11C9sYk076KYuSpi0DqiqnnMJb07
	+jkKNB5qpwn0xKR/6OMfz7niY6EKYHtEMaZjGhG8E8vC1pzkUrcGVGl0qC5kmyNEHcbB79
	QRxqgklJuRZ0TV0EgWdaXOCXpYFCpWM7Kpeve3hPts1F0eKImAcPdBF7mjb5Ml8lgyRLWo
	+OeehDj2hf99al29k/2u/BaFOG7AqSgxIpGqo/zgvE2WFk8UPrjXWvUQg18rYg==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cc87:df5e:1bf7:9f4c])
	by zdiv.net (OpenSMTPD) with ESMTPSA id ea07dbc2 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 25 Mar 2025 15:36:58 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Date: Tue, 25 Mar 2025 15:36:50 +0100
Message-ID: <20250325143650.29433-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250312-rpmb-v1-7-0f213382a3f3@pengutronix.de>
References: <20250312-rpmb-v1-7-0f213382a3f3@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_143706_907622_AA2B4222 
X-CRM114-Status: UNSURE (   6.27  )
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
Cc: Jules Maselbas <jmaselbas@zdiv.net>
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
Subject: [PATCH] fixup! tee: optee: implement RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/tee/optee/rpmb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tee/optee/rpmb.c b/drivers/tee/optee/rpmb.c
index cdc8afc1a4..ca60f3cf3d 100644
--- a/drivers/tee/optee/rpmb.c
+++ b/drivers/tee/optee/rpmb.c
@@ -5,6 +5,7 @@
 
 #define pr_fmt(fmt)     "optee-rpmb: " fmt
 
+#include <common.h>
 #include <mci.h>
 
 #include "optee_msg.h"
-- 
2.48.1



