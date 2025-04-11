Delivery-date: Fri, 11 Apr 2025 09:31:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38qx-00B9ki-0L
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:31:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38qv-0002V2-SX
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:31:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+2B8sPR1u/TDzWx099QrkVvRrajUNYRq/TxzEHQoipc=; b=chr0NWYZWhGAl0aqciy5XRUpob
	JmFdW780zKhyNpReimDKJttx2pxlzPC7c1wOTpmo81AKrs/HulLDa1xiR23wjGRGVmu2Pfr+xFZ/N
	NifZelOpLS65sJPotUl8mncQ01KaHfUinvfiVE7VXXNUXu/ic+igyKtHSpbn+QLMMyDzYujoH3KW2
	gDapXEKnkAapjBx/Fr7am4Tzna9gmZiip4qCT8QFTXn0uFpbw+iI5L/du7Ow0ncGSzeiTShL3ebup
	eVcjUrEnGyiAoHSvc3CxshB3wejQ8XBHe7PKbXHbCBHGJf7TE88qjfKqFt89bcetZoJHSmBf4UvSs
	nVM9Iu4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qL-0000000Cs3y-0pmS;
	Fri, 11 Apr 2025 07:30:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38hJ-0000000CqSz-3fuu
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:21:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38hI-0000Ad-CN; Fri, 11 Apr 2025 09:21:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38hI-004ObT-0c;
	Fri, 11 Apr 2025 09:21:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38hI-006Olf-0O;
	Fri, 11 Apr 2025 09:21:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250410095718.2258908-1-a.fatoum@pengutronix.de>
References: <20250410095718.2258908-1-a.fatoum@pengutronix.de>
Message-Id: <174435606811.1525118.3831156112656996064.b4-ty@pengutronix.de>
Date: Fri, 11 Apr 2025 09:21:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_002109_920943_99C03B6D 
X-CRM114-Status: UNSURE (   8.28  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: introduce simple base64 command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 10 Apr 2025 11:57:18 +0200, Ahmad Fatoum wrote:
> We have base64 functionality in barebox as that's used as formatting for
> sealed blobs and JWTs. Add a simple command-line interface to the
> functionality for aid during development and to simplify copying short
> binary strings via the console.
> 
> We do not have code to encode in barebox, so the command only supports
> decoding for now.
> 
> [...]

Applied, thanks!

[1/1] commands: introduce simple base64 command
      https://git.pengutronix.de/cgit/barebox/commit/?id=41f1b8a96f59 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



