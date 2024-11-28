Delivery-date: Thu, 28 Nov 2024 11:00:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGbKN-001PEN-0G
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 11:00:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGbKN-0003rP-2D
	for lore@pengutronix.de; Thu, 28 Nov 2024 11:00:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Ue6zO+UM4CtAeeMOsO1C0Ym6CGvpSwGVodIPlaC6qk=; b=BF9SbQd0QkYdsjPq7rC8xUNURj
	hZr2upQa3uW9I55J92URfy8pGWtJ/hA9ah7d/ogJoJ25Tn+GwtTU5lDn9PdK8aFzZb1QgAH2aITIn
	FiUmBiwfF9/6lczzQKqHl/7pkSk+DLsBvyVFK64bEXEZkS24iIrbbExNSIW9yoYZUxSXRV6Et2JbH
	gv3VLWZAwhbOtT3iXM/CLZUkx2zRFPlgRrfN/iL5SFny3YABe0hWnyMv7t46CyqN6TW0L3rtkN/u8
	A2o/gXtfnOYxwxWXSn6CnF19qeum2K8kZ8OEniPvIjs44qU8/9x9w/HbabUH+J6oAjvq2eK2wrwsu
	NAt3DNjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGbJn-0000000FCoA-1h2B;
	Thu, 28 Nov 2024 10:00:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGbJm-0000000FCnt-10qM
	for barebox@bombadil.infradead.org;
	Thu, 28 Nov 2024 10:00:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=4Ue6zO+UM4CtAeeMOsO1C0Ym6CGvpSwGVodIPlaC6qk=; b=pjsrydEkCb2gMHoHgjRXCOCC53
	Us6QGBWDLXz3OZleG0It+8lPx9CA1sjPR2HUmJwJ+0/FePPlFBUyvsfRcupNv8XSk4KzXo/EmVD5E
	VfJH7PjdQscTFkaS/qK0D1W+h0fS/oUcRxC5cQVL2vH1Op7i+PtqQqt13PSwKCMFcc2BHtZHOPmrH
	47qcLZIq/eYUEkkRjvg44RcpF1nWlgR7Cy8ZThIQRkFBi5JWwV873AqBb896xycOMFN0J8Fl71t+i
	UY9F198PCrnnfOLSLR2U2SA6wIBQ4TcObX6DL0kFVArj6k6v+5MaN2xUm7pkKX138m4eQlD0Wc1Sd
	YfamQVoQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGbJj-00000001aEd-0swt
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 10:00:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGbJh-0003fs-8P; Thu, 28 Nov 2024 11:00:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGbJg-000ahn-0x;
	Thu, 28 Nov 2024 11:00:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGbJh-00Fw8D-01;
	Thu, 28 Nov 2024 11:00:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241125153003.708512-1-a.fatoum@pengutronix.de>
References: <20241125153003.708512-1-a.fatoum@pengutronix.de>
Message-Id: <173278800900.3798328.10185683289957537969.b4-ty@pengutronix.de>
Date: Thu, 28 Nov 2024 11:00:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_100011_394355_77248D43 
X-CRM114-Status: UNSURE (   7.44  )
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
Subject: Re: [PATCH] dma: define compile-time ARCH_DMA_MINALIGN constant
 for all archs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 16:30:03 +0100, Ahmad Fatoum wrote:
> DMA_ALIGNMENT is not a compile-time constant on MIPS. This didn't bother
> us so far, but will when we need to use it as argument to __aligned().
> 
> Let's additionally define ARCH_DMA_MINALIGN like Linux does and require
> that all architectures define it to a compile-time constant if
> DMA_ALIGNMENT isn't one.
> 
> [...]

Applied, thanks!

[1/1] dma: define compile-time ARCH_DMA_MINALIGN constant for all archs
      https://git.pengutronix.de/cgit/barebox/commit/?id=5a73b8a94b28 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



