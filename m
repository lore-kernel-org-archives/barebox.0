Delivery-date: Mon, 16 Dec 2024 09:32:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6Ww-008kgw-2E
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 09:32:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6Ww-0001Zj-L5
	for lore@pengutronix.de; Mon, 16 Dec 2024 09:32:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jPUQb/VoCoS03e8TzX5qzCeLcWXSfh8VLsMG5p5PvGI=; b=R0q4wVW8SMgZV8c9ZNCBxD19Vn
	FEMEw6MwzmK0Qr2O9Xqc3qqhAjVRqeJRhFdEK+68hUOZGHgINL3c5I0YbXYbdzpPBYGV0o5t7gPVE
	h0cuaGocZZfcVrqBdse+1vsLoGLtrR7zfBe6khh9tYrWkhcdui36zVyLwuPOf2ItN0yZ0HxUAPIRC
	/vZldeoIoOoLXEkLLR8EjhSynA9tDFx7Dau4PXgMMuYhg5VzYteJUc4+c1BrOzOwYapjf8q1+LwTY
	vJk1nBloVpph/r+FgC9P6BvMZvF+83bOXtIDKR6lC4H/Df/ioeg7reG4hEM/mKhWLwskWi5PrK7/g
	WitWH2gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6WW-00000009P6p-0FAh;
	Mon, 16 Dec 2024 08:32:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6W7-00000009P4z-19bp
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 08:31:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6W6-0001Rc-3L; Mon, 16 Dec 2024 09:31:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6W5-003f6x-0T;
	Mon, 16 Dec 2024 09:31:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6W5-006AzI-2k;
	Mon, 16 Dec 2024 09:31:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241209-ext-dt-handoff-v1-0-e61052d5d437@pengutronix.de>
References: <20241209-ext-dt-handoff-v1-0-e61052d5d437@pengutronix.de>
Message-Id: <173433790984.1472094.10700282056371421629.b4-ty@pengutronix.de>
Date: Mon, 16 Dec 2024 09:31:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_003151_318639_E9330AFA 
X-CRM114-Status: GOOD (  12.10  )
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
Subject: Re: [PATCH 0/3] make dtb from 1st stage loader available in
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 09 Dec 2024 15:28:10 +0100, Sascha Hauer wrote:
> When barebox is chainloaded from another bootloader it usually gets
> passed a device tree from the previous bootloader. While this external
> device tree is normally not used by barebox, its contents can still be
> interesting, so store the device tree at /external-devicetree when
> found. This needs board support to pass the external device tree in
> handoff data, i.e. a board has to call
> handoff_data_add(HANDOFF_DATA_EXTERNAL_DT, dtb, size);
> This series adds beagleplay support for this feature as an example.
> 
> [...]

Applied, thanks!

[1/3] fdt: Add function to check if a pointer contains a fdt
      https://git.pengutronix.de/cgit/barebox/commit/?id=abcd32a3e85f (link may not be stable)
[2/3] store external device tree as file
      https://git.pengutronix.de/cgit/barebox/commit/?id=78c3e4145aa6 (link may not be stable)
[3/3] ARM: beagleplay: put external device tree into handoff data
      https://git.pengutronix.de/cgit/barebox/commit/?id=0e62b0b1ecb2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



