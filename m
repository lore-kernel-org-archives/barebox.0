Delivery-date: Thu, 18 Sep 2025 16:24:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFZ8-004V5b-1R
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:24:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFZ7-0001Aq-U5
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:24:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HXQV3zMWCVCrj9u9xj6V6LGD1P4Q/iOIvBp1c+MvWP4=; b=sOof5yFS+s0dPIafayDIi1lq/T
	++2myiBgN+MF5AsQjG2nf9stI20kkogv9o+e4BonXO3YlZI5RcB8Wz+lVMDpEjgrlGMSLzOaP12Sy
	rsyUNoQeA3MmAy7ZQqiV0VdIz1eilbA/TTki7P1Tyb35VA9ylw3Okc07N7FlzzQUFDDXET2Lyl6ei
	+rxPzcjbjy/fTiufsu33TUG9XN89SiSkTwBsqz5b4WTNj72WIUdlDEPbIHXD9N8XLQxlz/2PFkE3f
	mdx0CcWkVl9dUt8CcPDlGPXOUh7YNv3d510ABItJXvY7gi85nbmHHMWENZl/ka4O7CD09eyOCM4+l
	cHkSkhlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFYj-00000000837-2Z3v;
	Thu, 18 Sep 2025 14:24:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFYh-0000000081l-0yVJ
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:24:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFYf-0000z6-QM; Thu, 18 Sep 2025 16:24:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFYf-001xEc-1y;
	Thu, 18 Sep 2025 16:24:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFYf-0000000EPTP-2JDU;
	Thu, 18 Sep 2025 16:24:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250917095834.2727068-1-s.hauer@pengutronix.de>
References: <20250917095834.2727068-1-s.hauer@pengutronix.de>
Message-Id: <175820546554.3434492.12679492567825991452.b4-ty@pengutronix.de>
Date: Thu, 18 Sep 2025 16:24:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_072427_273838_A77B20AF 
X-CRM114-Status: GOOD (  10.84  )
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
Subject: Re: [PATCH] firmware: handle firmware files being links correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Sep 2025 11:58:34 +0200, Sascha Hauer wrote:
> Sometimes firmware files can be links. When rebuilding barebox correctly
> rebuilds the firmware when file the link points to is updated, but the
> firmware is not rebuilt when the link itself is changed to link to
> another file.
> 
> Fix this by including the sha256sum directly in the generated assembly
> file by using .byte rather than generating a file containing the
> binary sha256sum and include that using .incbin. This way the generated
> assembly file for sure changes when the firmware file changes and it's
> rebuilt when necessary (and not when it's not).
> 
> [...]

Applied, thanks!

[1/1] firmware: handle firmware files being links correctly
      https://git.pengutronix.de/cgit/barebox/commit/?id=b10351d3080a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



