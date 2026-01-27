Delivery-date: Tue, 27 Jan 2026 08:23:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdPr-005onj-07
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 08:23:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkdPp-0001iD-BQ
	for lore@pengutronix.de; Tue, 27 Jan 2026 08:23:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sy4P8QOvPEvXCWDcJGlz0fv8wUhSS3rb+bRcBB1BwQo=; b=h1em0Bx232Cvr0CjJ8o0k5fAKH
	naNO+q9ZscSCYJGb1R/z+hqSv1D80rE+dbsG2SY5ojOuiELt48phwsdlS2vpVz0qCxErKDSH/AHRX
	3cHvse2ojF164el8T/DUfhGaI7Zws4i87/INAUUwIrPd3ZUrh8OTIFPo6Pe9m7rcu6QzGB1yxo2Tw
	GAP7E8VCGfq8Koey0iAYq8sfyNNZxXq+70/SaduOUOxVvi9LReaw/cgHhNXUCvPdPMSK+Wsayz/vG
	R2pafL2PpfVxQeuTg9hdVEFYl+rwvdCn0LsoxM+Pts7FSL8S+cgoKzsU8UvU1oIVLzjU1AS9SuB8a
	fC6xjQKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdPS-0000000DlxW-28R8;
	Tue, 27 Jan 2026 07:22:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdPP-0000000Dlw0-19h0
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 07:22:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdPN-0001ZS-PK; Tue, 27 Jan 2026 08:22:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdPO-002i9L-0r;
	Tue, 27 Jan 2026 08:22:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdPO-000000052v8-043j;
	Tue, 27 Jan 2026 08:22:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260126130422.3897277-1-s.hauer@pengutronix.de>
References: <20260126130422.3897277-1-s.hauer@pengutronix.de>
Message-Id: <176949856154.1202404.13561282966271179938.b4-ty@pengutronix.de>
Date: Tue, 27 Jan 2026 08:22:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_232243_325136_C46FDA53 
X-CRM114-Status: UNSURE (   9.24  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: fastboot: increase max answer size to 256
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Jan 2026 14:04:22 +0100, Sascha Hauer wrote:
> Initial fasboot specification allowed at maximum 64 characters as
> answer. This has been increased to 256 [1]. Allow for longer answer
> sizes.
> 
> While at it use a define for the maximum answer length to avoid
> repeating the hardcoded number. Also allow the answer to be exactly
> the maximum length. Previous implementation used a 64 byte string
> which included the '\0' string end and limited the usable size to
> 63 bytes. Now we can use the full 256 bytes.
> 
> [...]

Applied, thanks!

[1/1] usb: fastboot: increase max answer size to 256
      https://git.pengutronix.de/cgit/barebox/commit/?id=d9e213023295 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



