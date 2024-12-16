Delivery-date: Mon, 16 Dec 2024 09:31:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6VL-008kfg-14
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 09:31:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6VL-0001JX-AH
	for lore@pengutronix.de; Mon, 16 Dec 2024 09:31:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T9Gna2TTY9rhiK1cSGetOY8hO9a1X44KlsHu5ZFrdpY=; b=Fv8cIed9VcaBxizS9U6C9+zho6
	RnVQRmUTNrhO67wv7LGRmu9sQTsYR38P/5+FD+pwyDtl/h3ZonxBUgXt4bFlDGryGS/vHELikUidR
	zJXFdS4RNd+u5qAXHv1/eHQkrIw0B5CAz2PCDfMFHbVPG9CvLF2koLl1J7WfLsnplephs/kHGATyo
	6yDX6MmNPpaXondESKaJ5ORT1G2b1V+A7OiStWax2QfJ53E9lVc+anObDDmF5I5KI2oq/698AxYB1
	xGy0vsNIckydkNJjST8UrEDIHCkOh8tFb2cnopRDrB0BLH+BpUc2yA86kq2DtHO9xcLWM2WuuyJ8k
	IONVynlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6Us-00000009OwF-3hSR;
	Mon, 16 Dec 2024 08:30:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6Uq-00000009Ovs-2Eay
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 08:30:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6Up-0001DJ-7t; Mon, 16 Dec 2024 09:30:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6Uo-003f6o-0v;
	Mon, 16 Dec 2024 09:30:31 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN6Uo-006ArG-3C;
	Mon, 16 Dec 2024 09:30:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241212075308.2499846-1-a.fatoum@pengutronix.de>
References: <20241212075308.2499846-1-a.fatoum@pengutronix.de>
Message-Id: <173433783099.1471615.11699388890767215297.b4-ty@pengutronix.de>
Date: Mon, 16 Dec 2024 09:30:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_003032_573476_2CDF9AEF 
X-CRM114-Status: UNSURE (   9.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] bbu: fix bbu_register_std_file_update regression
 for file systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Dec 2024 08:53:07 +0100, Ahmad Fatoum wrote:
> The code used to handle any path equally well, but then it was broken
> for paths that don't start with /dev, i.e. anything in a filesystem.
> 
> Add an explicit /dev check before going into the newer code, so
> bbu_register_std_file_update can once again be called with paths
> that start with /mnt for example. Previously, this resulted in following
> error message:
> 
> [...]

Applied, thanks!

[1/2] bbu: fix bbu_register_std_file_update regression for file systems
      https://git.pengutronix.de/cgit/barebox/commit/?id=22c800507c4a (link may not be stable)
[2/2] ARM: beaglebone: register bbu handlers for FAT partition
      https://git.pengutronix.de/cgit/barebox/commit/?id=3da2f2975e8d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



