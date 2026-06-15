Delivery-date: Mon, 15 Jun 2026 13:36:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ5bp-0067Vw-2K
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 13:36:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ5bp-0004Lx-37
	for lore@pengutronix.de; Mon, 15 Jun 2026 13:36:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M/7EVGIQv//5Ji7KaoVp5H1tmv2bZVPdQeaEg2V6wiY=; b=F6GRQiUz6JPv3FlYiru8CUawy/
	x90bLyFm/QBDmleeomfWhOpb7PihOq8XF1MJcLMwVo4SNFW8lQzM9or5w4ZBxO67NVOLOcpOkuNy3
	nrsd/XHIEYirvgcXd2v781AtMgwepJOccF1wkH9zk06Hu3uJF2fBzteLAhUhe7saSXZPXFa9dvTfz
	Vl7Y1CcBr+Jd2XdCzW/Dii6My+npUunSWvWdfbxDrJIW5tc2/y42RoDkARHYW1pJC11BmfZ9l6Rpg
	vdgP94zw/DdtIiuQqc7/VCx21SFgFbsybSmSR0bMMNhCGUBOTQS7iohR5dO79ggb77YCoRx+0Sbk2
	uDq50R4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ5ag-0000000E6q2-3W1H;
	Mon, 15 Jun 2026 11:34:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ5ad-0000000E6pc-2iBv
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 11:34:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ5ac-000420-24; Mon, 15 Jun 2026 13:34:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ5ab-002rCF-2Q;
	Mon, 15 Jun 2026 13:34:49 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ5ab-0000000DGh6-2kKS;
	Mon, 15 Jun 2026 13:34:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: anis chali <chalianis1@gmail.com>, Sascha Hauer <sascha@saschahauer.de>
In-Reply-To: <20260602-usb-dwc2-usb-c-stick-v2-0-0e02782c7e32@pengutronix.de>
References: <20260602-usb-dwc2-usb-c-stick-v2-0-0e02782c7e32@pengutronix.de>
Message-Id: <178152328964.3162138.6414056430742952499.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 13:34:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_043451_713321_1DFB5AEA 
X-CRM114-Status: UNSURE (   9.60  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/3] USB: dwc2: Fix handling NAK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Jun 2026 11:29:19 +0200, Sascha Hauer wrote:
> A NAK should return -EAGAIN to let the retry logic work. This showed up
> on a Samsung USB-C memory stick which otherwise was recognized, but
> couldn't be initialized.
> 
> The v2 now adddresses Anis' log spamming problems. The solution here is
> to just silence the error message by turning it into dev_dbg. The
> message says "Timeout on bulk endpoint" which is normal and expected
> behaviour. The usbnet driver expects bulk messages to timeout when
> no RX data is available.
> 
> [...]

Applied, thanks!

[1/3] usb: dwc2: Do not print error messages when URBs are nacked
      https://git.pengutronix.de/cgit/barebox/commit/?id=eef830fc6158 (link may not be stable)
[2/3] usb: dwc2: handle NAK when CHHLTD does not fire
      https://git.pengutronix.de/cgit/barebox/commit/?id=a7548991ea36 (link may not be stable)
[3/3] usb: dwc2: fix data toggle reset direction on ClearFeature(ENDPOINT_HALT)
      https://git.pengutronix.de/cgit/barebox/commit/?id=4db628f5d0f4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



