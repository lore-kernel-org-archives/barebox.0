Delivery-date: Tue, 21 Jan 2025 09:08:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9J0-002Zax-2S
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:08:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9J0-0005RU-TB
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:08:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zRo2rnRooI3i3mkn/7BRsc1PTvoUgGHnVftVDomi3ho=; b=HqPRzsaojWq6EQA13H+Epr9FbW
	33llEqNuwSPsRdmlfEOX35tIWubl+uJJfJ5hsT+nPHk3xulpHJ2mKz79e8pA+ZKdLreqyJQKbAIDB
	XCAcUMafE3I7p9kHIyqJCFhxq8P6Qy/2zWpPbW3i7Of4Ks5807jNW3FZkXdgbzX71CC9TTQ60eF3Y
	VC+YQqlK6uGYbBuiitSWmeLa1uhvubSiAlAdtHcGkTtAtAkQkZIBavAuqcThp5BlnSK+WPTmlU4HW
	mgsc/UqS3/1TZS6vf6UHoLak5VhwpgW792cs3iYeEu6Um6dNJIBn/G8QpvOuKR/u1oXoDRl4O8nZb
	8UtIe4nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9IZ-00000007DAk-1JVu;
	Tue, 21 Jan 2025 08:07:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9IU-00000007D80-2uLO
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 08:07:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9IS-0005BD-5v; Tue, 21 Jan 2025 09:07:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9IR-0014jI-36;
	Tue, 21 Jan 2025 09:07:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9IR-0012g7-2v;
	Tue, 21 Jan 2025 09:07:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250120064910.2529048-1-s.hauer@pengutronix.de>
References: <20250120064910.2529048-1-s.hauer@pengutronix.de>
Message-Id: <173744685990.248524.13471057709328511233.b4-ty@pengutronix.de>
Date: Tue, 21 Jan 2025 09:07:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_000742_737675_5009AC7C 
X-CRM114-Status: UNSURE (   6.49  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: beagleplay: Use correct file for GP device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 20 Jan 2025 07:49:10 +0100, Sascha Hauer wrote:
> The beagleplay has a GP device and as such needs the GP firmware, not
> the HS-FS firmware.
> 
> 

Applied, thanks!

[1/1] ARM: k3: beagleplay: Use correct file for GP device
      https://git.pengutronix.de/cgit/barebox/commit/?id=ff06092e487f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



