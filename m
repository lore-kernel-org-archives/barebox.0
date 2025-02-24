Delivery-date: Mon, 24 Feb 2025 10:33:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tmUqY-006IOH-1y
	for lore@lore.pengutronix.de;
	Mon, 24 Feb 2025 10:33:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tmUqX-00031a-Dt
	for lore@pengutronix.de; Mon, 24 Feb 2025 10:33:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EM3rUZb51vL9tFQ7na50xOOg84DzjS1LqIS3ZXmn/qE=; b=LHn8kdKB5G3a41Fk0ILYCKJE8n
	HIgDG7M6q+a7Oh7mJbRvnGhgnQIk+cJS6+oH2kgeqzYkt3bhxF9EcSROc99Je2ISfM5JDsmhGq+yN
	nF/tWct8UEvwWTwUrjfuAwP51oaisQzag30RohANkyUgQrwUc7mOu32JvNPqr+I1Dt+NsWYyZsDPH
	trBhdaUBkIkjgJX6/gGUfR80Jthx4KVVD6YGB9o0Ol7YFRC2OHDIhMeKUFPBD0teDQjL0JDyzGeUV
	hja1FnVYC/jsqvy2P+VTaKNCHaWwysdXqrZaLc2pHs87ez3537dxpwBbhVIJGQXj04hNJC+pu0oma
	EJevtDCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmUpp-0000000Cw3W-37DK;
	Mon, 24 Feb 2025 09:33:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmUT7-0000000Cpd4-0zRH
	for barebox@lists.infradead.org;
	Mon, 24 Feb 2025 09:09:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tmUT4-0006mE-Io; Mon, 24 Feb 2025 10:09:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tmUT4-002Z7N-1G;
	Mon, 24 Feb 2025 10:09:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tmUT4-002cga-12;
	Mon, 24 Feb 2025 10:09:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250217122538.3216703-1-s.hauer@pengutronix.de>
References: <20250217122538.3216703-1-s.hauer@pengutronix.de>
Message-Id: <174038817832.624372.5677842270749676017.b4-ty@pengutronix.de>
Date: Mon, 24 Feb 2025 10:09:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_010941_275821_92061A48 
X-CRM114-Status: UNSURE (   9.46  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fip: Store image data in single buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Feb 2025 13:25:37 +0100, Sascha Hauer wrote:
> Right now in fip_parse() we read the whole FIP image into an allocated
> buffer, then allocate buffers for the different blobs contained in the
> FIP image and memcpy the blobs there from the full buffer. Let's
> optimize this a bit by keeping the full buffer. Instead of allocating
> separate buffers for the blobs, just put pointers to the full buffers
> into struct fip_image and set the buf_no_free flag indicating that they
> should not be freed.
> 
> [...]

Applied, thanks!

[1/2] fip: Store image data in single buffer
      https://git.pengutronix.de/cgit/barebox/commit/?id=e48141941199 (link may not be stable)
[2/2] fip: add function to parse FIP from a buffer
      https://git.pengutronix.de/cgit/barebox/commit/?id=748ba0627681 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



