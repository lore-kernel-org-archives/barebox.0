Delivery-date: Thu, 07 Nov 2024 10:40:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8z0K-005s4o-0t
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 10:40:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8z0K-0003Zc-UZ
	for lore@pengutronix.de; Thu, 07 Nov 2024 10:40:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=knAZySps2CxgzDdyvFKXGGXQaQctNceJMA7rJRWoIBc=; b=kYqx7QwlxGUBvem8qGa67h6dv3
	NFb626tn8fbMHhshcrEpW1rw8KVIpv6VBHsKNDJ+ujT8iXNoET6PxqtL6o9wmNLLOAbUSFTuckf0b
	zSxN1Tq0Xn3CCbwP4CfdykXAkB0S0oMXrPH3AY4btqvXY7vuVuR40RovpspUydMfPSFmWdnwI9tM7
	VQ42ZEEltyzBiE+HrRn3QWgjVfBZPhbj7eYHcCcr3rLNcIV+HoPnwBBuJJIUVCIsXOHEOBi/tQmd0
	1JZHkQTm6zZYW3pnUcs0BLnkxBh+qMe8ulBl3juKh2CMe1ar6mniAjzvOlz+JOs+XmnXf3+Gj3uxw
	9EGD5VvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yzr-00000006KKe-0BjZ;
	Thu, 07 Nov 2024 09:40:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yzI-00000006KHU-0BBc
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 09:39:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8yzF-0003Tp-4l; Thu, 07 Nov 2024 10:39:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8yzE-002RJJ-24;
	Thu, 07 Nov 2024 10:39:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8yzE-0094XU-1s;
	Thu, 07 Nov 2024 10:39:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
Cc: a.fatoum@pengutronix.de, sebastien.bourdelin@rtone.fr, 
 oss-contrib@rtone.fr
In-Reply-To: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
References: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
Message-Id: <173097237257.2162381.1342011875960816429.b4-ty@pengutronix.de>
Date: Thu, 07 Nov 2024 10:39:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_013936_113505_2FDF1AF2 
X-CRM114-Status: UNSURE (   9.50  )
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
Subject: Re: [PATCH v3 0/4] Add a struct mci_cmd::busy_timeout member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Nov 2024 16:36:58 +0100, Sebastien Bourdelin wrote:
> This patch series introduces the busy_timeout member as part of the
> struct mci_cmd and fix the SDHCI timeout value for the BCM2711 SoC.
> 
> It comes as a first step to [1] and allow sdhci drivers to define their
> timeout value.
> 
> [1] https://github.com/barebox/barebox/blob/master/drivers/mci/mci-core.c#L2109
> 
> [...]

Applied, thanks!

[1/4] mci: add a busy_timeout member to the struct mci_cmd
      https://git.pengutronix.de/cgit/barebox/commit/?id=0ae38cf8351f (link may not be stable)
[2/4] mci: zeroed all structs mci_cmd instances
      https://git.pengutronix.de/cgit/barebox/commit/?id=274f81d54d3c (link may not be stable)
[3/4] mci: sdhci: use the busy_timeout value in the sdhci_wait_idle functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=f8d28b8c08aa (link may not be stable)
[4/4] mci: bcm2835: set timeout value to 100ms
      https://git.pengutronix.de/cgit/barebox/commit/?id=6ca24a6a7324 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



