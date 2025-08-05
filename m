Delivery-date: Tue, 05 Aug 2025 10:40:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDDT-007EXq-1e
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 10:40:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDDT-00055D-05
	for lore@pengutronix.de; Tue, 05 Aug 2025 10:40:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C75MVBMjxQ+94HFsVOehQ9qN7fPgYo1ce1wgzIZlGtk=; b=wJwg8eGtxeThak+Lx5MIHBk/FW
	UUtJ+rPGB6DDotECIjUb2m2hkygQPttUMmEyVlUpTqwz4dKBDUJfhEcQGmdFcCwlFgG9giOVUZe4v
	8Tc0qwkAYbm8SnMe/XKjAxcuuSi46WdPNFwDXAEE6uiEVy+4lZ2W6E02z7PCPn8Mi3gYJQxXLgq43
	76haRzx+lbYOCY78INu3tgxAzcgD2DXUEG6Xqc3QKKfYxVX6yIti2RDeeoE1GSlnwJ1gE6MMCTAS5
	KO2c+ZQmrbgxQNqvbZYT3hidyk65NvZ6Sn6FX1cSBHMYSiZrU4/NAU78mT3ROh10bwkBD5F/8thAj
	uB1RZAPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDCu-0000000CD4I-1MWs;
	Tue, 05 Aug 2025 08:39:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCXG-0000000C5ni-0zHQ
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:56:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCXE-0008T1-UM; Tue, 05 Aug 2025 09:56:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCXE-00C0Ma-2R;
	Tue, 05 Aug 2025 09:56:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCXE-00EdoP-2F;
	Tue, 05 Aug 2025 09:56:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250724091339.1091147-1-m.felsch@pengutronix.de>
References: <20250724091339.1091147-1-m.felsch@pengutronix.de>
Message-Id: <175438059669.3489614.17551843746343949665.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 09:56:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_005638_277226_5AD150F7 
X-CRM114-Status: UNSURE (   7.97  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] block: fix block device detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 24 Jul 2025 11:13:39 +0200, Marco Felsch wrote:
> Before commit a6410cfa9aff ("block: mark underlying cdev with
> DEVFS_IS_BLOCK_DEV") the block device decision was made based on the
> block_ops. Since each parition-cdev inherits the parent (master)
> cdev-ops the parition-cdevs were detected as block device.
> 
> Commit a6410cfa9aff the detection mechanism to be based on cdev flag but
> commit a6410cfa9aff forgot to pass the flag to the partition (child)
> cdev.
> 
> [...]

Applied, thanks!

[1/1] block: fix block device detection
      https://git.pengutronix.de/cgit/barebox/commit/?id=71d8d678b39e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



