Delivery-date: Tue, 17 Mar 2026 20:10:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2ZoC-001uOw-1C
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 20:10:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2ZoB-0005bu-Ro
	for lore@pengutronix.de; Tue, 17 Mar 2026 20:10:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:From:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zm7sqZ4Vcz1NS7RhDYWCeYGfrfTgvLMByNFJxJVEdz0=; b=XRSEJRkt3JqIeFeTZ9NsG+Jyyh
	O8SyvqGm8fcSuXDfqWKiMm/+mR9pMj5dFDw+9cw9c9x8Xx+Xrj1cgXHmokn8wIR9yhpUnw1DxNSVR
	caF4JFsY6cffq6IO+kDi3m/moS2NpbIxV01eGc5De9PooQClNScL/3sBAyH0zUbRDD5l7VNGYE2NT
	1KBlRt7G4xniVgpYESjxwECvCQOt3zTumyey05XeTGFDArI759aZfXViQ4ylM3BVWSqoQxebW+wR2
	0Q3it6NDEjTBGVG4NXPBjAcvzrwCzYCQSObQORY3IBpZSCzPiBhc4veMuUlcBbzF10fbwSs8gZfB/
	/dehJ4gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2ZnU-000000076Zn-3kQc;
	Tue, 17 Mar 2026 19:09:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2ZnR-000000076ZS-1SXX
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 19:09:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2ZnP-0005Vn-5x
	for barebox@lists.infradead.org; Tue, 17 Mar 2026 20:09:39 +0100
Message-ID: <083a2532-8206-407e-a42e-f7a82bcf691a@pengutronix.de>
Date: Tue, 17 Mar 2026 20:09:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
To: BAREBOX <barebox@lists.infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_120941_416059_6F97CAF1 
X-CRM114-Status: UNSURE (   6.73  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Notification about FIT Signature Bypass Vulnerability
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-03-02, a patch was first posted to the U-Boot mailing list to
fix a FIT security vulnerability that had been disclosed privately by
Apple Security Engineering and Architecture.

This vulnerability has been fixed in barebox v2026.03.1 and U-Boot
v2026.04-rc4 in the meantime.

More details can be found in the linked advisory:

https://github.com/barebox/barebox/security/advisories/GHSA-3fvj-q26p-j6h4

A CVE number has been requested.

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



