Delivery-date: Wed, 18 Jun 2025 12:56:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRqT2-008aOF-2N
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 12:56:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRqT2-0004pW-6r
	for lore@pengutronix.de; Wed, 18 Jun 2025 12:56:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I6ocdWRdshNAzolLewe8WGf0IUl1p+AZXn1vogbe0cI=; b=cF1Rml26zxEBwqCtUSnyL8FYg4
	6Fu5T1XccaMp4OL3Z0eke+oJd1XxFuOu0/DGvzRcWzlIM8xU/GARfOlw9aXfBuXR5v9z/Mojbf7s4
	QD1Phs8uBP1UE+6F70lt1Eug1ewN0PaeMeEFj6GoP5hH/I1P+5ymcZXGeeV8OYdooCQu8EXI88BLm
	r2AkQ+X4SU1KRB2SwG0UbhHxNB7LJTcA33Ye6IYGXinGIQpDiqfMNCujupp2q6xR7/r1FtfYKSXZD
	TC8jWBSSQ5dqUEKcMXZh3hAWusHCgmvycTkKgD8xY3jXcCL44d3gVpGUY/SYe1nTUxsR9mprjGt9z
	H7lP88bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRqSf-00000009rFj-1WKU;
	Wed, 18 Jun 2025 10:56:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRppd-00000009jxG-15DE
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 10:15:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRppc-0000Ui-3T; Wed, 18 Jun 2025 12:15:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRppb-0047cs-2z;
	Wed, 18 Jun 2025 12:15:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRppb-0066mr-2l;
	Wed, 18 Jun 2025 12:15:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250617091017.3003866-1-s.hauer@pengutronix.de>
References: <20250617091017.3003866-1-s.hauer@pengutronix.de>
Message-Id: <175024174785.1455831.11408960415365104317.b4-ty@pengutronix.de>
Date: Wed, 18 Jun 2025 12:15:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_031549_297336_F36E7A74 
X-CRM114-Status: UNSURE (   6.49  )
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
X-Spam-Status: No, score=-2.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: AM62lx: Add note about required TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 17 Jun 2025 11:10:17 +0200, Sascha Hauer wrote:
> The am62lx barebox port currently needs a modified downstream TF-A to
> work properly. Add a note to the documention providing the necessary
> hints and pointers.
> 
> 

Applied, thanks!

[1/1] Documentation: AM62lx: Add note about required TF-A
      https://git.pengutronix.de/cgit/barebox/commit/?id=9ee12b410d4b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



