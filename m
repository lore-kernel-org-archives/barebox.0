Delivery-date: Thu, 27 Nov 2025 08:56:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOWs2-005M4d-2r
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 08:56:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOWs2-0003iA-CH
	for lore@pengutronix.de; Thu, 27 Nov 2025 08:56:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GjQv1V14Jt4Js6jBgQopFquHAaL8zmP4GyqZC7EuXqM=; b=SwgpLkfkDtUmeWDOsRBpwA0JvO
	jajVN+Rj1SMs8UyTPC483GdJpF+KMfQRfK8UQB5bjV9KNLEmKw1Z1lIIH9WHQF9VJdkG9d99GF3QK
	nqStNyUUeRUZFLJAZ+PUZrszTaTJDK4rFy3rcZPTdYKY8P8xHC44cyJ4zLLSgt9J/HIy7uTBdBMJe
	6bkRTqgz1ZMVyfkvWzXQz0ctuQU9nrffK8ziijdySiyzLCTnePizdPV11tlmoNkmAQGsmE6RePLWl
	2p44w6I02mKyO3T2Re4StIyiUJcn7amtAPFT1rAYGU9lhZnHy/LI25hSmfe+SG8UiyZvnfYIOkhuu
	TI6VwibQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWrV-0000000GAPU-1mg7;
	Thu, 27 Nov 2025 07:56:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWrS-0000000GAP7-0Qyn
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 07:56:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWrP-0003cQ-L0; Thu, 27 Nov 2025 08:56:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWrP-002kcv-1V;
	Thu, 27 Nov 2025 08:56:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWrP-0000000BRUU-3RaX;
	Thu, 27 Nov 2025 08:56:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251110081749.988471-1-s.hauer@pengutronix.de>
References: <20251110081749.988471-1-s.hauer@pengutronix.de>
Message-Id: <176423017536.2727269.2854951346169003412.b4-ty@pengutronix.de>
Date: Thu, 27 Nov 2025 08:56:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_235618_144600_FC615147 
X-CRM114-Status: UNSURE (   7.00  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] dm: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 10 Nov 2025 09:17:49 +0100, Sascha Hauer wrote:
> a dm_target is allocated in dm_parse_table(), thus must be freed in
> dm_destroy(). The destroy op only frees everything related to the
> dm_target, but not the dm_target itself.
> 
> 

Applied, thanks!

[1/1] dm: fix memory leak
      https://git.pengutronix.de/cgit/barebox/commit/?id=38010b583b28 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



