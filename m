Delivery-date: Tue, 06 Jan 2026 08:40:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1gH-001oXZ-0l
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:40:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1gG-0005dX-OL
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:40:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XqhnylATvUw3tWbfW3InvCtY4x3URkAaCptx5cykVr8=; b=Jla2HKxpSdGrrH1PEaNGSPH0ft
	g33n+I/cEZrRlOkH8W1PqGEkSQ/zR7jT+Hyeh7OqMh1CMn+aOvPhfTB6tEiWsSh03DNMkUrDiLj7X
	RmsqfBFeLFV2cxMImpxcbDrMQhzWaxrjOCWiakKadWmWsIHQ4Uk7gIuFjNlxCKzYCrXtJPLb+bGWu
	MNYlMYHxyF+gJyQb4bK8h7Yk78FLcyvjE14hUOIkq+IfHM7oGXdZSkuNWr3TSBtV4xYHC1I4RPMMZ
	OgvMsEbs+zQUZ2KBnAZDQdxWYVLtouoMzWcDhpo8Fptzcq3QZnkHmpQMQM9BpcHMEu8yqgsKPhUP3
	i6owjopw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1fm-0000000CXAl-1rFe;
	Tue, 06 Jan 2026 07:40:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1fk-0000000CXAK-0otv
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:40:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1fi-0005TI-Kr; Tue, 06 Jan 2026 08:40:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1fi-009JJL-1R;
	Tue, 06 Jan 2026 08:40:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1fi-000000088fn-1bsg;
	Tue, 06 Jan 2026 08:40:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260105082722.3251552-1-a.fatoum@barebox.org>
References: <20260105082722.3251552-1-a.fatoum@barebox.org>
Message-Id: <176768520638.1939956.3748092646238122359.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:40:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_234008_283300_390B30CF 
X-CRM114-Status: UNSURE (   6.46  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: socfpga: replace select of undefined symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 09:27:16 +0100, Ahmad Fatoum wrote:
> ARM_USE_COMPRESSED_DTB has been superseded by USE_COMPRESSED_DTB in the
> meantime.
> 
> 

Applied, thanks!

[1/1] ARM: socfpga: replace select of undefined symbols
      https://git.pengutronix.de/cgit/barebox/commit/?id=f8e45126e119 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



