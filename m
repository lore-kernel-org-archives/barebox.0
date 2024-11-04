Delivery-date: Mon, 04 Nov 2024 13:16:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7w0H-004jro-2i
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 13:16:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7w0I-0003CN-Hf
	for lore@pengutronix.de; Mon, 04 Nov 2024 13:16:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lZif949BU/9qB6UxK/wbV0pXlnKEz3TOa1gjqPo3+hI=; b=wqGFnWnGi2xMifbMm8PAN+4Ks2
	IpQbknLjFpjZQFf95sGziIUKGPgFAuM6sP2LsvRmJnuKeWWFAitd0Cjai/UgK2l3hFqae8xweoNHH
	9F9gi1iacz4j/9tz1z4g3MMLepVDxgKPm2PHAYrImfYxRv/bi2nTdfWNKyiNRqs01K+mDPjw9mOlK
	BIFUHAETBbwBuCgozBcRQCR1nkVSlcnpbPxD+LRX1ZjZt2DKm8/FjZvUalcKy8UvZqr2MKfFAR5Wx
	XRs4bf/Xdmil2SOR0RqmK2XXlGV78PLDPpnwcIDHcu63Le7D2250xv5TgrfKFWOZhN20f++XNcdu6
	clMKwgWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vzo-0000000DfE5-38gC;
	Mon, 04 Nov 2024 12:15:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vlg-0000000DcwM-06DC
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 12:01:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vle-0001JQ-Il; Mon, 04 Nov 2024 13:01:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vle-001yU5-1B;
	Mon, 04 Nov 2024 13:01:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vle-00GbeT-11;
	Mon, 04 Nov 2024 13:01:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241031111234.1196749-1-s.hauer@pengutronix.de>
References: <20241031111234.1196749-1-s.hauer@pengutronix.de>
Message-Id: <173072167031.3957972.15344464008223920106.b4-ty@pengutronix.de>
Date: Mon, 04 Nov 2024 13:01:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_040112_177393_2E841171 
X-CRM114-Status: UNSURE (   7.55  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: ele: fix forward_lifecycle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 31 Oct 2024 12:12:34 +0100, Sascha Hauer wrote:
> enum ele_lifecycle describes the current lifecycle values as read from
> the fuses. The ELE_FWD_LIFECYCLE_UP_REQ command takes different values
> though. Use 0x8 to go to OEM closed status. The value is taken from
> U-Boot-2025.01-rc1.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX: ele: fix forward_lifecycle
      https://git.pengutronix.de/cgit/barebox/commit/?id=822f814ffd12 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



