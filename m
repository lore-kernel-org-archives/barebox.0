Delivery-date: Thu, 18 Sep 2025 16:25:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFZq-004V6e-2m
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:25:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFZq-0001Mq-BZ
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:25:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vYv3eNNXycJ1B1ff7J7atx4yXngD41O89M4ZgVSmqSM=; b=xcxErXiPw/bYaQW+nPKRXpvov6
	tmTOSWYTE+xggo4StdO/cIvdk1wCYgue7zHNVmgkcoqgVuZPox6tNOJnQDfDCq9iJPLEqkaR7Batq
	O9PHOi3rQKRhLloFpUrmvY/mKs9l+5uedbtSDtwi0wDgrxX+oPLJ9NKLHHKsWOo0AQh9zMd7W8kut
	XaBhLmL3Zvf/z3RqrG6XA6QA6W1fa8qsNb0iY8nIvsqQ6tFquFNz0a1mCV9fUiUHE9cu4LF2Pa073
	LErYejJRX3Vv8VN6DFr6LjebBCn5mxnvJiYOBkkUKpJkRkgKD0vpXFvv4Y849mc0wT1bmCImKNmXV
	ipebPLww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFZO-000000008Lm-3LO3;
	Thu, 18 Sep 2025 14:25:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFZM-000000008KT-3TZw
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:25:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFZL-0001FW-BR; Thu, 18 Sep 2025 16:25:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFZL-001xEm-0X;
	Thu, 18 Sep 2025 16:25:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFZL-0000000EPW2-0SOf;
	Thu, 18 Sep 2025 16:25:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250917140659.3001588-1-s.hauer@pengutronix.de>
References: <20250917140659.3001588-1-s.hauer@pengutronix.de>
Message-Id: <175820550710.3434657.16620671217639651768.b4-ty@pengutronix.de>
Date: Thu, 18 Sep 2025 16:25:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_072508_870261_604C8A4E 
X-CRM114-Status: UNSURE (   7.09  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: fec_imx: Fix probe failure on i.MX27
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Sep 2025 16:06:59 +0200, Sascha Hauer wrote:
> FEC_TYPE_IMX27 is 0 which meands device_get_match_data() returns NULL
> and the driver bails out on the error check of this function. Start
> counting the enum at one to pass the error check also on i.MX27.
> 
> 

Applied, thanks!

[1/1] net: fec_imx: Fix probe failure on i.MX27
      https://git.pengutronix.de/cgit/barebox/commit/?id=d37cbb49ccfa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



