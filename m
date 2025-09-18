Delivery-date: Thu, 18 Sep 2025 16:24:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFYM-004V3d-1Z
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:24:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFYL-0000qq-TA
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:24:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lcmyuVUHgO7/mJeao8hP88bJasa2NM1kP4p10YXW/5Y=; b=VZFUmBhVP6p0TQ4/7f55SnkoKX
	EStqPI1/IJn1alBbJDolH/YpiBYANW21wGQIerNuPKIIcbh4U7AP8uyiPdImBfeAXJ38eKVVrczjT
	nI53olnJfRWnzH58Orl2cHSdAl+iPYdiooTBGbi6iaxUHTHm9ALq9q4JSZOrg19zKOwFsiKNchxS4
	JeoNhL0eriqWbD/X5CSc0mKwFCfdYOK77LHxUnmwdWJnkW++eBvUwKkF6JweLevuhQJ0S60xwZoYT
	UtoEvDcDsmL0jMN2XQiiozbG+uEwOZM+tYSg8fkMEjYlWUMW6ox488PK60y/ani/222PEeXPLvzSZ
	2UxpiRbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFXx-000000007kX-2hbS;
	Thu, 18 Sep 2025 14:23:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFXv-000000007iw-47KP
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:23:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFXu-0000jG-He; Thu, 18 Sep 2025 16:23:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFXu-001xEM-1A;
	Thu, 18 Sep 2025 16:23:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFXu-0000000EPNm-1Fnn;
	Thu, 18 Sep 2025 16:23:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250918060052.3146447-1-s.hauer@pengutronix.de>
References: <20250918060052.3146447-1-s.hauer@pengutronix.de>
Message-Id: <175820541829.3434145.8008704929648128684.b4-ty@pengutronix.de>
Date: Thu, 18 Sep 2025 16:23:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_072340_023296_975C7860 
X-CRM114-Status: GOOD (  11.36  )
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
Subject: Re: [PATCH] crc-itu-t: fix typo in CRC ITU-T polynomial comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 18 Sep 2025 08:00:52 +0200, Sascha Hauer wrote:
> Based on Linux commit 77991645952c2 ("crc-itu-t: fix typo in CRC ITU-T polynomial comment"):
> 
> | The code comment says that the polynomial is x^16 + x^12 + x^15 + 1, but
> | the correct polynomial is x^16 + x^12 + x^5 + 1. Quoting from page 2 in
> | the ITU-T V.41 specification [1]:
> |
> |   2 Encoding and checking process
> |
> | The service bits and information bits, taken in conjunction,
> | correspond to the coefficients of a message polynomial having terms
> | from x^(n-1) (n = total number of bits in a block or sequence) down to
> | x^16. This polynomial is divided, modulo 2, by the generating
> | polynomial x^16 + x^12 + x^5 + 1.
> |
> | The hex (truncated) polynomial 0x1021 and CRC code implementation are
> | correct, however.
> |
> | [1] https://www.itu.int/rec/T-REC-V.41-198811-I/en
> |
> | Signed-off-by: Roger Knecht <roger@norberthealth.com>
> | Acked-by: Randy Dunlap <rdunlap@infradead.org>
> | Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> 
> [...]

Applied, thanks!

[1/1] crc-itu-t: fix typo in CRC ITU-T polynomial comment
      https://git.pengutronix.de/cgit/barebox/commit/?id=f148e3d94a27 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



