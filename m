Delivery-date: Fri, 16 Feb 2024 12:14:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawB9-008UgH-18
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 12:14:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawB8-00021m-O1
	for lore@pengutronix.de; Fri, 16 Feb 2024 12:14:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SGrEWqwO6p/tKYBnQJszS87xIdKSltLIlj3dMbNNl80=; b=2EjMT1tvCW2MjjjSgWo3/fU/yG
	f9z1lvNJ5hXejmlHxJtRWRky/s4Q66BG1YzbkwdsBUKpQ4qHja5iJYH3638RrnVoYRrbqk39WYm9E
	3mMnehjqZQOZ2zS9mffNkOODza8RoYmVlVPVukSnMKw64IaKW1CFQxHv2MXkYlcdFec0ZYgsWiuvQ
	hwCnSNZpPpMJHLAUEm/WXEUgRvsRtum7uEv2Rfui4Y0Ql+jiOF1XQgyxh1hEIaiZpoEUTV+tl7CW5
	iDjqf2lKi+5arhNwGYQGimfpF+el8+8EyXwKKg4tM8hgpqpgcz2btMxt5AXKZ4dooltB7p+xEI9E+
	hnaVAo8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawAT-000000026hI-3gYM;
	Fri, 16 Feb 2024 11:14:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawAQ-000000026fu-28cL
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 11:14:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawAG-0001y6-De; Fri, 16 Feb 2024 12:13:56 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawAG-0013yo-14; Fri, 16 Feb 2024 12:13:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawAF-005saC-35;
	Fri, 16 Feb 2024 12:13:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240215074757.960200-1-s.hauer@pengutronix.de>
References: <20240215074757.960200-1-s.hauer@pengutronix.de>
Message-Id: <170808203594.1401433.4841976122755386269.b4-ty@pengutronix.de>
Date: Fri, 16 Feb 2024 12:13:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_031406_586648_84F6D596 
X-CRM114-Status: GOOD (  11.60  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/7] Detect partition changes at runtime
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Feb 2024 08:47:50 +0100, Sascha Hauer wrote:
> With this series barebox can detect partition table changes at runtime
> and reparse the partition table in that case. With this it's possible
> for example to write an image to a SD card and mount partitions directly
> afterwards without restarting barebox.
> 
> The fastboot code is also changed to check for existing partitions when
> they are actually used and no longer during initialization time of the
> gadget. With this it becomes possible to expose a full device via
> fastboot and also some not yet existing partitions. When the full device
> is written to one can then write to a (newly created) partition directly
> afterwards.
> 
> [...]

Applied, thanks!

[1/7] fs: move cdev open count to cdev_open()/cdev_close()
      https://git.pengutronix.de/cgit/barebox/commit/?id=d84c3daf1314 (link may not be stable)
[2/7] common: partitions: efi: fix memory leak
      https://git.pengutronix.de/cgit/barebox/commit/?id=729370043ab6 (link may not be stable)
[3/7] partition: allow to reparse a partition table
      https://git.pengutronix.de/cgit/barebox/commit/?id=c641d9ed9d35 (link may not be stable)
[4/7] block: reparse partition table when necessary
      https://git.pengutronix.de/cgit/barebox/commit/?id=713a23cb2aea (link may not be stable)
[5/7] fastboot: pass list to fb_addvar()
      https://git.pengutronix.de/cgit/barebox/commit/?id=8e9895959d3f (link may not be stable)
[6/7] fastboot: add function to free a list of fastboot variables
      https://git.pengutronix.de/cgit/barebox/commit/?id=a8614972b161 (link may not be stable)
[7/7] fastboot: evaluate fastboot partitions when used
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a191155be4e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



