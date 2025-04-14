Delivery-date: Mon, 14 Apr 2025 11:10:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Fpf-000ZwU-1E
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 11:10:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Fpe-0000k5-Rb
	for lore@pengutronix.de; Mon, 14 Apr 2025 11:10:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BoPCzduZRVJpQ3c0sY0zXvWyAhoHKovD05/26YA51Zg=; b=rVDu8uTYry93ppU2MLyEin3kaa
	RNMYUEJH5RRvGZ/fWSxvwgzr41nMlZQvSqIN31m+HizOwIrI2XMxlATTOdXZYl97VS3qB0RrTG8Yv
	SePZyw0QGh6bbfzv4rVUJUr4j7IG62usfCZ9ibO7TO2f6j2oDoPwj4Ns0/BiejnbDZsklFo5iofJg
	KjhNCupG8KfRTCDD9T6V9/SjS3yq3sudAzzB1NhjqzfYgGY8QObSQ+W1fQDbLkc3HFquqS0IWZQW0
	yH1KK9ZZztgDN5gNXKqPIHyt7aKSPJet2Sh5c9BQfG3BH5GjlqqzwuLiOGpSju18IEjsyzxvrmojw
	Us9Tyu8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Foc-00000001E9C-0ahT;
	Mon, 14 Apr 2025 09:09:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Fcs-00000001Bn9-0S8E
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 08:57:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Fcp-0004FI-FX; Mon, 14 Apr 2025 10:57:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Fcp-000Dmg-0u;
	Mon, 14 Apr 2025 10:57:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Fcp-00FbOZ-0e;
	Mon, 14 Apr 2025 10:57:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250407130729.2889508-1-s.hauer@pengutronix.de>
References: <20250407130729.2889508-1-s.hauer@pengutronix.de>
Message-Id: <174462102719.3718608.5622441577265488109.b4-ty@pengutronix.de>
Date: Mon, 14 Apr 2025 10:57:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_015710_149969_576A54A3 
X-CRM114-Status: UNSURE (   7.51  )
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
Subject: Re: [PATCH 1/2] bootm: move ELF handling to bootm handlers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 07 Apr 2025 15:07:28 +0200, Sascha Hauer wrote:
> The generic bootm code is for picking the correct OS, device tree and
> initrd files. Additionally it parses the container formats like FIT and
> uImage. It has no business to handle particular image formats, so push
> the ELF handling back to the image handlers themselves. The resulting
> diffstat is negative, so having the ELF code inside bootm doesn't really
> serve a purpose. Move it out there.
> 
> [...]

Applied, thanks!

[1/2] bootm: move ELF handling to bootm handlers
      https://git.pengutronix.de/cgit/barebox/commit/?id=ef4707f80300 (link may not be stable)
[2/2] bootm: create generic FIT image handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=8f71bf6146ac (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



