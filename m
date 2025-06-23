Delivery-date: Mon, 23 Jun 2025 15:25:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uThAT-00AH6U-0S
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 15:25:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uThAS-00085h-J2
	for lore@pengutronix.de; Mon, 23 Jun 2025 15:25:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mpbi9GZmjc+6Y9cZgSuu0AhZ10JrPm4vbDE++P2R7No=; b=J8Dfqh/NXJ8OO2bzdsm0GNIjSe
	5BtdspNQsNHzcbqY6mCiatSsFZ58ch/HLDrk+0ihqqzKeCcgN7skdmLWb1qu1a6MtWzGet931A3nE
	Jluii4cWHkV+1XYMcxhqpeGKGUKstMuOif6q7b7pVhRv6PHIGh8GUv3Ea/FciWbryIvP4L4MDj5BB
	P2Wy3A35L0KN9ZAwERiP1U2XmbtHr8APgappU3UnpUPrvZc+pVinWRkbDerraeExt0UIdI04KpG+6
	GEcwPu8CW8Zuy8v8rT6N5gWVmVAmXlOv+LJIiqoVPzY5YlvdMW9uoiwKPe2QoAZh2mR3TT/eovbzr
	oFegHTeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTh9w-00000002rhz-1gmZ;
	Mon, 23 Jun 2025 13:24:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTfiY-00000002ZIc-0zhO
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 11:52:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfiW-00016f-Vv; Mon, 23 Jun 2025 13:52:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfiW-004wOz-2a;
	Mon, 23 Jun 2025 13:52:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfiW-00CFVv-2K;
	Mon, 23 Jun 2025 13:52:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
References: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
Message-Id: <175067952471.2919421.12940893688683065812.b4-ty@pengutronix.de>
Date: Mon, 23 Jun 2025 13:52:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_045206_286155_FEB4FA56 
X-CRM114-Status: GOOD (  11.59  )
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
Subject: Re: [PATCH 0/5] add createnv command to create environment
 partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Jun 2025 15:28:34 +0200, Sascha Hauer wrote:
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



