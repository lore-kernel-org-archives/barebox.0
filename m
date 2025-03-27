Delivery-date: Thu, 27 Mar 2025 08:44:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txhuO-004mMN-0c
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 08:44:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txhuN-00007R-Lo
	for lore@pengutronix.de; Thu, 27 Mar 2025 08:44:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dOpcEUPsctbJILmS9Re6ZTB/JyoYuLutmVAwGQfDJ4g=; b=y1rrcUhuuJl+u8IjDgUvJziMPw
	0adtNNWErD2bBMT/ryw0Vcmzv3xeCJXZ7QZqL2c1otgZAnPf+7pJW8NFl3AyiRj4tFw4yXErwiy4u
	XzpKGkrHcHSRdlCD+jv45MXF5sjhO9h6RZsWtb9L0Y/HyObWtDP054GYt/ShkLRV8Ec92Ped41PgH
	InMjpyeOYL5wxdTg1vkp6FUVhd619x/45Lm5l4CBcJA+yH3XG44plxO+JFdd/Zy5M/IOOdMLV0llz
	9XN7y7RA4qwjTHQDBj1O89sjE5O4vmskWV9qvNaQRaZmue0dUrDWL7ol59FMPvkmYd+cmQhvjI4QP
	EJGcyDPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txhtp-0000000AMKK-10tP;
	Thu, 27 Mar 2025 07:43:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txhs8-0000000ALwB-37jz
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 07:41:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhs7-0007zK-6U; Thu, 27 Mar 2025 08:41:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhs7-001t7S-02;
	Thu, 27 Mar 2025 08:41:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1txhs6-003Lrp-33;
	Thu, 27 Mar 2025 08:41:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20250325155413.32169-1-jmaselbas@zdiv.net>
References: <20250325155413.32169-1-jmaselbas@zdiv.net>
Message-Id: <174306131094.798988.15979987379835004033.b4-ty@pengutronix.de>
Date: Thu, 27 Mar 2025 08:41:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_004152_792352_61F3EBF6 
X-CRM114-Status: UNSURE (   5.49  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] lib: add explicit fallthrough in strtoull_suffix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 25 Mar 2025 16:54:13 +0100, Jules Maselbas wrote:
> 


Applied, thanks!

[1/1] lib: add explicit fallthrough in strtoull_suffix
      https://git.pengutronix.de/cgit/barebox/commit/?id=695626e7f267 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



