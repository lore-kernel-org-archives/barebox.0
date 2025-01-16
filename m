Delivery-date: Thu, 16 Jan 2025 12:08:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYNjP-000ZfC-1I
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 12:08:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYNjP-0006s1-JN
	for lore@pengutronix.de; Thu, 16 Jan 2025 12:08:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T0eWBsHc8Uz+Hhib/X6Xw0xPKfc1MPdSJjDkzl30K7Q=; b=4ofYMb8qXivAf0hImnKoRVl8cu
	4L1uHM5F8SMRj9orr1xJLipXP66Iy8giMpzrV7fVsZUwf03G2bhvJnfSfeyL4Sqmzsvx8f4ALyMRK
	GttVwqig1IOpy8zGjZuHNUxUzRzgg8aBDqzqbpRWygBzgU+VuQA89MGh9LaaATURLNMbpogFmP5Dv
	njDgU64b4xSD1V3Lni5QMMvVBg6P03d5V7UBuI1uqd1d46mgnTa/7ZadwTzxuZKJApzglsWGF6LYf
	Ov02Ze468ECVbC9ovehaYw3YJi3HmoFfMYJc9MalEUI5Ckuq2MQLW0FVGFVP/LF2yEUYetDX2owdE
	YGx/bzMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYNiz-0000000EgWf-2g6l;
	Thu, 16 Jan 2025 11:07:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYNiv-0000000EgVd-2h6y
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 11:07:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tYNit-0006mn-Oh; Thu, 16 Jan 2025 12:07:39 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tYNit-000F5b-1r;
	Thu, 16 Jan 2025 12:07:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tYNit-0076JN-1d;
	Thu, 16 Jan 2025 12:07:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
In-Reply-To: <20250115182012.3666379-1-u.oelmann@pengutronix.de>
References: <20250115182012.3666379-1-u.oelmann@pengutronix.de>
Message-Id: <173702565950.1692544.8432678949601065922.b4-ty@pengutronix.de>
Date: Thu, 16 Jan 2025 12:07:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_030741_680180_37DB0B23 
X-CRM114-Status: UNSURE (   4.80  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootm: add missing spaces in error messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Jan 2025 19:20:12 +0100, Ulrich Ölmann wrote:
> 


Applied, thanks!

[1/1] bootm: add missing spaces in error messages
      https://git.pengutronix.de/cgit/barebox/commit/?id=530adf595a00 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



