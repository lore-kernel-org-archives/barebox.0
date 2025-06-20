Delivery-date: Fri, 20 Jun 2025 16:05:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uScMl-009Iq0-33
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 16:05:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uScMl-0004RS-Dw
	for lore@pengutronix.de; Fri, 20 Jun 2025 16:05:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sAvg23jkGHsqIBjdZPaseNr6BmN+SvBs+RNbZ2yoakQ=; b=Hf7SNihOSMspyEKgFUocHMxUVs
	iDUW1bFyf+oVnDrUH/KRafrs85qIrlQnpweg2WcxJqlE+WCKMEeu339+MXjGBdaRdaOJ6tcaJmH0P
	Yb8ebDLO0bPAJ6DTk/+llpfZnHDv3UoRRX34L31g0VVDMlL4wXGyZhVnjHTEm40VMm8qBz46D5NFI
	Yo/hiQ2xvMgboPgsexNopoScEJ4vTPxrfFw91h9F6OqBEPKcb310A6WQFPC2W8Y+p1Ysvgv/COzje
	cNQTq6yEYmPlG8M8pLO27ZmxcVK8A+I9DIj8B++RqLh3fiUhWaDsuYDDPUe5CZwNITD6IshPJE0ZS
	TMXm7vUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uScMC-0000000FoFw-3Lcs;
	Fri, 20 Jun 2025 14:04:40 +0000
Received: from mail-108-mta158.mxroute.com ([136.175.108.158])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uScGV-0000000Fnge-3K4x
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 13:58:49 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta158.mxroute.com (ZoneMTA) with ESMTPSA id 1978da26f9b0008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Fri, 20 Jun 2025 13:58:42 +0000
X-Zone-Loop: 1854a7a7f92587d41913dec84c29757893d980edbbff
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=sAvg23jkGHsqIBjdZPaseNr6BmN+SvBs+RNbZ2yoakQ=; b=m7sHktp09AGtpuBTkgo5lZZvbr
	VMXbw9jWQXTS25muboMfNZTDpceoCecFiX8J1EEIkxGJHK9EEeU8cAdApEGWp3JWarfhFvNHTsu4H
	XpeqMXDfEDQaM68QJgN36T2HVxYUx+G7nFGVGz3pPDNM5e8IfE9Gqo5aK4BGEfxh9AG7InDUGW7uG
	Iih9WAkQbzhjRs0uTw5rWn/lHmYQnfwyPIx2b1yfnruGL1KXnYT7C0pzBx8u5xfKhdZmTS/7wFX69
	Lp5F8IxloI04PWcC9YyhmN1mswv5l4VNk6RYefznSvhTH/l2IqNhaFUcP2Z2xbajZm5XIJcffDlXa
	DZtPxwQA==;
From: bo@mboxify.com
To: barebox@lists.infradead.org
Cc: Bo Sun <bo@mboxify.com>
Date: Fri, 20 Jun 2025 21:58:35 +0800
Message-ID: <20250620135835.87543-2-bo@mboxify.com>
In-Reply-To: <20250620135835.87543-1-bo@mboxify.com>
References: <20250620135835.87543-1-bo@mboxify.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_065847_913837_A17AD0C2 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/1] docs: fix git checkout command for next branch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Bo Sun <bo@mboxify.com>

Correct the remote branch reference from 'origin/remotes/next'
to 'remotes/origin/next' in the documentation.

Signed-off-by: Bo Sun <bo@mboxify.com>
---
 Documentation/user/barebox.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 149f0f535e..67cf93eb71 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -36,7 +36,7 @@ you can look at the ``next`` branch:
 
 .. code-block:: console
 
-  $ git checkout -b next origin/remotes/next
+  $ git checkout -b next remotes/origin/next
 
 A web interface to the repository is available at
 https://git.pengutronix.de/cgit/barebox
-- 
2.49.0



