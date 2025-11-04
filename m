Delivery-date: Tue, 04 Nov 2025 09:08:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGC60-00F9GX-12
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 09:08:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGC5z-000350-Q1
	for lore@pengutronix.de; Tue, 04 Nov 2025 09:08:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DaDcm3r+RJ7maI0jieF5Kro0+Kj77pAegYiG69x4qHk=; b=0LM6fg1vtNe8LzSL3RMWZHqWr2
	h/0oA43kGMBU8MSSE6qG2BUVB6fFfj3kq/l0lwStIoUgBHrlY4hq6gUQiIwarv5lJgctAKjYy/UW/
	I2gbjmTVeISZeHDtQnTzCTnPIE2KpgYdmVGFw5grjGOzsEVKb413SL9ENGQScdsakjSxROJI0fOuU
	iSaobY6lptbRvRBE0LpvUgpzVbNEuaqnY7S56ESPmerTaVKrHDg8KPQs8M0vVD+f6gOP/aNPbBVrg
	KUTEErYGkyFFz/tsbrGGPWJduL3+7Ga6P5bu1/oEB6pdQ6hUQMOvE7bMOXUZehqfTJ4gjkGTmi1zM
	vfEvbDNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGC5S-0000000BNu1-25NV;
	Tue, 04 Nov 2025 08:08:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGC5P-0000000BNs3-33F5
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 08:08:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5N-0002nf-6S; Tue, 04 Nov 2025 09:08:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5M-006zpN-34;
	Tue, 04 Nov 2025 09:08:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGC5N-00000009AfK-1KyF;
	Tue, 04 Nov 2025 09:08:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 04 Nov 2025 09:08:04 +0100
Message-Id: <20251104-nfs-v1-0-3e69e5c82a41@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGS0CWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQwMT3by0Yl2DxDQLc0tDY0tTY0sloMqCotS0zAqwKdGxtbUAXCelNVU
 AAAA=
X-Change-ID: 20251104-nfs-0af879139539
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762243692; l=858;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9KTBaS/fZbRDlxh4nt6iAdfXKlXHJJ6Edvr84bzw848=;
 b=Q0jKWAxGuz6drqYiyZ/fnZ5397x4d+5W7evuNE1a0ocoOxjZgiK95g4Tho1kdCpZ1xvNmAq/+
 JBBez5gZazCBpuDhY1VXdz9ZYzGw/wykiKYfFffcPTKxRIGNQ3XfLOw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_000815_807336_10AA4BEC 
X-CRM114-Status: UNSURE (   8.87  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] fs: nfs: Fix buffer overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The NFS does hardly any checks on incoming packets. It blindly trusts
the length values in packets and happily reads past the packets. This
series introduces a function to read from packets concentrating the
boundary checks in a single place. Also some other things I stumbled
upon along the way.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      fs: nfs: drop PROG_NFS special casing
      fs: nfs: do not read past packets
      fs: nfs: use dev_* for messages
      fs: nfs: reduce unwanted message to debug level

 fs/nfs.c | 379 ++++++++++++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 267 insertions(+), 112 deletions(-)
---
base-commit: 7605338da017da2492d83e919f7a88eefe4cd306
change-id: 20251104-nfs-0af879139539

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



