Delivery-date: Mon, 11 May 2026 09:23:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMKz5-000Tmk-1b
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 09:23:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMKz0-0005Hv-R2
	for lore@pengutronix.de; Mon, 11 May 2026 09:23:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+tFQKF4D4uRwcmmRZFdmtvnQ+F60N6AhMnPg2UKx9ug=; b=AlIMwERI1NV2HR7HyhtuAzpET9
	5wDyst0MtQEuyFqCqDo5Y3pafMtmU4vxs42tBRQtu4M4+ee/LIdcqG6a66B/j0GDjQ6lGmCZ8V6Nr
	cEy3UVsjFJwFQYuUqtzSv3x6hr9iueK7GtHvuT7OlBwAvOF1AjBhwtxTuIGvc+mfoOKCpObA4tHFo
	Bc3mp+4j776EWwyLpviF6NJ3KIqAemtqbSZ4uUJbPnVjIl3AEUV+/cmLiyGRKI0U2I7fd5zulcWd6
	r3iWKoeN0Dz3NEHmXchOVjjH9Nr2Fmez/w82KmYgLD852jcvh8tnmF//z7+t0FEmoqSYuWfmu3l4v
	8gIZGrTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMKyY-0000000Cajy-1eqq;
	Mon, 11 May 2026 07:22:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMKyW-0000000CajN-3lHY
	for barebox@bombadil.infradead.org;
	Mon, 11 May 2026 07:22:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=+tFQKF4D4uRwcmmRZFdmtvnQ+F60N6AhMnPg2UKx9ug=; b=neEnkG/AtBa7a5zgvFB9KHSn7X
	F8JTeqvR4Hsf35EsOXNLHTU+wZnycHc0kr0OBIx8tq3l1RRYshM9gDC6Bkxq3D2p79Jrk0qmLr3hb
	B9YzxlnZFDZQEGQq+96+eS8gCDyy+vd3tGZTw5blOcSXLIkhzdE8+pqwRhlVgJyv/8wisx/372TlX
	HT3mB0mFoOkKxkjkh3C/oCeHmfHRo7nwxdzBEF+ngknFyTuMrkZwTkCzf7BujssOSdAHw7tkmZgbt
	b1gTN87Aa4FpZ/2xqubPqow855QlrSnYxpZyFOEby3GKuatZq2Aw7VBSJacphVWJWTB5TONZYz8m4
	qH/tpdTw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMKyS-0000000AqZP-1fTq
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 07:22:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMKyP-00059P-Jm; Mon, 11 May 2026 09:22:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMKyO-000DIR-2C;
	Mon, 11 May 2026 09:22:41 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMKyP-0000000DEmf-1V9t;
	Mon, 11 May 2026 09:22:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260507115114.1367936-1-a.fatoum@barebox.org>
References: <20260507115114.1367936-1-a.fatoum@barebox.org>
Message-Id: <177848416135.3155086.9407459602774862792.b4-ty@pengutronix.de>
Date: Mon, 11 May 2026 09:22:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_082245_431373_F5FA9F7F 
X-CRM114-Status: UNSURE (   5.48  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] efi: payload: handle NULL return from loadable_view
 for ramdisk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 May 2026 13:51:12 +0200, Ahmad Fatoum wrote:
> loadable_view() can return NULL (distinct from ERR_PTR), which is not
> caught by IS_ERR().
> 
> efi_load_os() already handles this with the ?: ERR_PTR(-ENODATA) pattern,
> so apply the same to efi_load_ramdisk().
> 
> 
> [...]

Applied, thanks!

[1/1] efi: payload: handle NULL return from loadable_view for ramdisk
      https://git.pengutronix.de/cgit/barebox/commit/?id=43a16ebe7493 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



