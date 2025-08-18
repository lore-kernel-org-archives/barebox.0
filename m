Delivery-date: Mon, 18 Aug 2025 20:19:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4ST-001yK4-0o
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:19:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4SS-0001Ug-4a
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:19:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p6vKrKvw3sGHeZfxwj7Ao/9zl6qzv4T3iVqLTY2IEmI=; b=ywmNe9rNlk8qmN1iPJ4Xjmh3Gy
	LJz1ov4g6c1SvBqhZSUCYrgmZOqe538i2zyCoZheiZBegLRBCLGzfcPl6Jc22vGVbXK/msvn5GYe4
	U3j4Sef5hHrR7z9TtJYYyxeJNfCbUnkNhCEWHB2emhuAsmMHMNdGhl5nne9Sr+noUCZRJm99qVLYg
	V4Krct4l1wLTffbQ0Et7zY7OwR1HyPJ50uPFix9zaUXI6bQn2CUagjNqMGjnDkailsrUsW0/7X9NS
	zi/R7nmOTr4YwgVb9Y9ah6eveWybOZ0WnblvXbe4EDeUYBp6ADce0h1IGFgQ05WqGIzmxDW2f5rkw
	nhUu2SiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4S5-00000008Jcs-0Vi0;
	Mon, 18 Aug 2025 18:19:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3ch-000000087z8-2BsC
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:26:21 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3cY-0008EV-8O; Mon, 18 Aug 2025 19:26:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:26:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2024-05-0-topic-fit-overlay-v5-1-b92e466a1d32@pengutronix.de>
References: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
In-Reply-To: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_102619_570985_5D332C02 
X-CRM114-Status: UNSURE (   6.93  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 01/11] FIT: fix missing free in fit_open error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Free the handle if read_file_2() fails.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index 5006394eb7bbd0873a37a0102d5a0d89ea7c6b9f..4d5c5bfe12472af85b26cd1ee93e7c99316b283c 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -977,6 +977,7 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 			  max_size);
 	if (ret && ret != -EFBIG) {
 		pr_err("unable to read %s: %pe\n", filename, ERR_PTR(ret));
+		free(handle);
 		return ERR_PTR(ret);
 	}
 

-- 
2.39.5



