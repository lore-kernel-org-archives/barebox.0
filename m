Delivery-date: Mon, 23 Jun 2025 15:25:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uThAS-00AH6A-1v
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 15:25:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uThAS-00085Q-23
	for lore@pengutronix.de; Mon, 23 Jun 2025 15:25:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Q+I+0Ef9DMa9quwkxF8FzxN18YfTAlDLDxHiOsbkkY=; b=aK6auSJnykNxfkkfNnjIHKotXQ
	R+9jVeWd8r4w7c2TiBby2tzi3LH7ERAKVpVYcVccElPMlBqxx2JMYMd+Wz9hW1LZVZCYSQUcbG2lR
	tD8DGPzG2Viu1RzqRPF9b3NGGeO1REwVzAYPoiQvMKm1fC/538iTw9tW0aMndaOnoNAQ+9cErJqw+
	NuhcHYrFoCEbzlPKM/RkK0G68Hp/fq3u0uO7As+K0gkYt4NTY+mLmyB5A5AEfHP8GDO9X5AXlCgyx
	A9bhihJhhDTOVRhwFJkOHTrGL5DvxbwEDhQZjeGYjTAHNG8+Db9gidLe+3ea7okQ/XG57nqD45y86
	6Cj5EllA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTh9w-00000002riA-3lvU;
	Mon, 23 Jun 2025 13:24:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTfig-00000002ZKu-0Lhl
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 11:52:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfiW-00016g-W1; Mon, 23 Jun 2025 13:52:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfiW-004wP0-2a;
	Mon, 23 Jun 2025 13:52:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfiW-00CFVv-2M;
	Mon, 23 Jun 2025 13:52:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250620-createnv-v2-0-7fd3cc286b9a@pengutronix.de>
References: <20250620-createnv-v2-0-7fd3cc286b9a@pengutronix.de>
Message-Id: <175067952472.2919421.17770571811552967591.b4-ty@pengutronix.de>
Date: Mon, 23 Jun 2025 13:52:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_045214_123342_06B81964 
X-CRM114-Status: GOOD (  11.70  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/5] add createnv command to create environment
 partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 20 Jun 2025 11:46:58 +0200, Sascha Hauer wrote:
> We want to move away from describing the barebox environment explicitly
> in the device tree and instead motivate usage of GPT partitions for the
> envrionment. This series creates a createnv command to facilitate this.
> It creates an environment partition on the specified device and if
> necessary also a GPT partition table. In the simplest case a "createnv"
> without arguments will create a partition on the device barebox itself
> booted from. Both the device and the size of the partition can be
> specified on the command line.
> 
> [...]

Applied, thanks!

[1/5] partitions: efi: calculate instead of hardcode gpt header fields
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea57365a6a74 (link may not be stable)
[2/5] partitions: Start partitions at 8MiB offset
      https://git.pengutronix.de/cgit/barebox/commit/?id=0d2433bfc08c (link may not be stable)
[3/5] cdev: fix cdev_open_by_name() misuse
      https://git.pengutronix.de/cgit/barebox/commit/?id=f76032dd5a31 (link may not be stable)
[4/5] commands: create createnv command
      https://git.pengutronix.de/cgit/barebox/commit/?id=c8a30874d7c8 (link may not be stable)
[5/5] mci: add option to detect non-removable cards during startup
      https://git.pengutronix.de/cgit/barebox/commit/?id=ac16c162ea73 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



