Delivery-date: Mon, 09 Oct 2023 13:54:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpopm-001qZe-UB
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:54:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpopj-0002JR-CP
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:54:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lHTZVNocX24gKxO9dbKW3RpyO1GOKqpkdJMQ5iBUtOU=; b=i+2wyNRtuWIaSlXqYVjvkFCas8
	B6uvY9yFlZ/8YEZ40oIMtVIL23UxJTy/lRmGmo0QGp8HcKzPqhKpMeam8z5GVxw4fFXiflmnhzEn+
	gwVReUDtvsakvNk2tTZmFtYFkoEn/WUsMsurO7oWepXBl48gK/Myl4YJ9YR7+FEYOSw7YTWcGlJS9
	WS2DcJocNSLZmJqDURtYoVUCORuHYHxcEGxMLbcY/vzhhKeB56WAHtPfO2Z0lzXTedGUOHU6NDL8a
	Ig3iqGaou4sIiY1Ank+3Hpl5bc1IYFgoCPFjYyaOLh7PmuQ/M/oXlby8CrCwvwOflthBwXiM3C63r
	3x5fTR3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpooZ-00AWCg-1x;
	Mon, 09 Oct 2023 11:52:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpooT-00AW9u-27
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:52:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooS-0001fp-Dn; Mon, 09 Oct 2023 13:52:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooS-000P3U-0Q; Mon, 09 Oct 2023 13:52:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpooR-009nlK-37;
	Mon, 09 Oct 2023 13:52:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:52:36 +0200
Message-Id: <20231009115239.2291016-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009115239.2291016-1-a.fatoum@pengutronix.de>
References: <20231009115239.2291016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045241_709762_24B362E8 
X-CRM114-Status: UNSURE (   9.54  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] lib: random: don't duplicate error/warning prefix in log message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pr_err and pr_warn already print an ERROR/WARNING prefix, so no need to
duplicate it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/random.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/random.c b/lib/random.c
index c6532df55249..e83935d0e17c 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -68,11 +68,11 @@ int get_crypto_bytes(void *buf, int len)
 	}
 
 	if (!IS_ENABLED(CONFIG_ALLOW_PRNG_FALLBACK)) {
-		pr_err("error: no HWRNG available!\n");
+		pr_err("no HWRNG available!\n");
 		return err;
 	}
 
-	pr_warn("warning: falling back to Pseudo RNG source!\n");
+	pr_warn("falling back to Pseudo RNG source!\n");
 
 	get_random_bytes(buf, len);
 
-- 
2.39.2



