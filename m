Delivery-date: Fri, 28 Nov 2025 08:12:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOseF-005hoC-2r
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 08:12:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOseF-0003hz-9R
	for lore@pengutronix.de; Fri, 28 Nov 2025 08:12:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+1QwEYAFB1Wj5t7V1ugbcL5Iz70OBzf5/ENl4w/hN3k=; b=iHbLrf8vZ6ysXmEQKb5N1V5QRj
	UmtFK4Ymt2UTpAX2sVl9sm4CIcn92t43jdqdi9hl8zM2TvChqHrj9yqck6FVEdmzP3fXJmq/7f7Dr
	qNRSaB6GgRCoZCn+KBgV+n3lHLvnll3jG4/eOiG7G+MBswdGeYfeghpPuc1PFulWYtgbeF64oiaVV
	e+J/C13qntgJWvrfTCT2eImtbrF0emwd1Gz10EdVvzEdaWO5aIw4A3Ggi2WJSK2XmQhxqQOr/oBuD
	vOzPqDQ94R6qMKPE1NwkbYV9JwYatTbYeUrqK0yQbEuEZ1zQsaZtKgcEt8P060ikHsOnjhT/KCcU0
	kTDGqSsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsdq-000000004tE-3jpT;
	Fri, 28 Nov 2025 07:11:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsdn-000000004px-2HX2
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 07:11:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsdm-0003O8-4H; Fri, 28 Nov 2025 08:11:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsdl-002uxs-2o;
	Fri, 28 Nov 2025 08:11:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsdm-00000009Pqb-126q;
	Fri, 28 Nov 2025 08:11:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251127113416.2740774-1-s.hauer@pengutronix.de>
References: <20251127113416.2740774-1-s.hauer@pengutronix.de>
Message-Id: <176431389780.2244276.8718773930723723239.b4-ty@pengutronix.de>
Date: Fri, 28 Nov 2025 08:11:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_231139_596249_001B4E9E 
X-CRM114-Status: UNSURE (   6.76  )
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
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] driver: call devinfo_del() during
 free_device_res()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Nov 2025 12:34:14 +0100, Sascha Hauer wrote:
> devinfo_del() can safely be called mutiple times. Call it from
> free_device_res() so that remaining resources are freed before the
> device goes out of scope.
> 
> 

Applied, thanks!

[1/3] driver: call devinfo_del() during free_device_res()
      https://git.pengutronix.de/cgit/barebox/commit/?id=cc7a9c100cac (link may not be stable)
[2/3] driver: call free_device_res() from unregister_device()
      https://git.pengutronix.de/cgit/barebox/commit/?id=d7a298c1cdb4 (link may not be stable)
[3/3] dm: fix memory leak
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d0acf308a31 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



