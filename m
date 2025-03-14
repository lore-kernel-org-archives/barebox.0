Delivery-date: Fri, 14 Mar 2025 16:15:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6lH-00E3Qf-06
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 16:15:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6lF-0003Ap-SC
	for lore@pengutronix.de; Fri, 14 Mar 2025 16:15:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zCKSJcrhjFRQkopkQpkanf0kkKnMOXQ9QXE91MSMZbs=; b=COI6tnhBQ4PIZf0cpn+xxhydFx
	SB/Ro8wWR2Odv3zOCKWdltQjM+rq+2MthgXnNoXaDPFEsIHektM8g6NqPcIf/vuRl4CkHb+kQMQNO
	sijKT1+AAgmd9aENi6M4OVcbfQtwtt3H/mj4A7dDOAFWb52zcOwvELtcZzGEz1BeaO7qRgAtkEdHM
	6jeopAhMMzyFzPhcV++2WKJfmceRnYG3WfFyEBD7YmskPp3Zh2cRQsXUemIxn8afErqhhXHpiL3xC
	EuDBJR6spFOajOGcZea5YnJgJvab3E0t5yKmgEyBVk7y1d8RE8cZ+ciYjqu7XJsxneKLNlWAuZkya
	uJxqz+8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6km-0000000EWVn-1Z1j;
	Fri, 14 Mar 2025 15:15:16 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6fj-0000000EVdX-2jXo
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 15:10:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741964998;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zCKSJcrhjFRQkopkQpkanf0kkKnMOXQ9QXE91MSMZbs=;
	b=HHmWsIkURz0bVWce93vzqNZmB2/XdoVc6A22dpy+hFn0as88qDCXjvyObR/CafWY948TwH
	2aPja0cHkxnpu/VMrmCH43NDtYqnEs3F6q2i8W3hGTpzOhvOFTnUijq7hd57UKbkBlf1Em
	urP0itwvLxBO4NfWhlD9cj6TN+qj/n4wpQ9CBYWJ2povma2BCQJiNvzcXohCvt6rFBMdbn
	Z4kWXLvYiVuqWzKMqi94HhGMgMNrJSctCUl8mzWZsrAbNsqcZXAmiwVcXiTn/i3nk84c+S
	kZpJWqtuM6zwyJ5HHb4/xBAiMBT2cn9uGRaxld6zQomFUWfcFKZ7cO0dwVRqqw==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 19b6ff22 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 16:09:58 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 16:09:52 +0100
Message-ID: <20250314150953.21686-4-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314150953.21686-1-jmaselbas@zdiv.net>
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
 <20250314150953.21686-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_081003_989104_904A95F9 
X-CRM114-Status: UNSURE (   7.44  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] pmdomain: ti-k3: remove trailing whitespace
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/pmdomain/ti/ti-k3.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pmdomain/ti/ti-k3.c b/drivers/pmdomain/ti/ti-k3.c
index 1616e90b62..39fd9f329b 100644
--- a/drivers/pmdomain/ti/ti-k3.c
+++ b/drivers/pmdomain/ti/ti-k3.c
@@ -321,14 +321,14 @@ static int ti_k3_pm_domain_on(struct generic_pm_domain *domain)
 	struct ti_k3_pm_domain *pd = to_ti_k3_pd(domain);
 
 	return ti_lpsc_transition(pd->lpsc, MDSTAT_STATE_ENABLE);
-}       
-        
+}
+
 static int ti_k3_pm_domain_off(struct generic_pm_domain *domain)
-{       
+{
 	struct ti_k3_pm_domain *pd = to_ti_k3_pd(domain);
 
 	return ti_lpsc_transition(pd->lpsc, MDSTAT_STATE_SWRSTDISABLE);
-}       
+}
 
 static struct ti_psc am625_psc[] = {
 	[0] = { .id = 0, .base = (void *)0x04000000 },
-- 
2.48.1



