Delivery-date: Mon, 06 Jan 2025 11:41:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUkY4-00HS18-0z
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 11:41:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUkY4-000876-8b
	for lore@pengutronix.de; Mon, 06 Jan 2025 11:41:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U1s5dwVKLkoegz/7B17vK7FOgvh+dDqLCfARlL/SC/g=; b=z4ALnJONBM5/WOy8NVWlBSRfxN
	3D1Y/DVxidyTHfVcDfF0lwqc0faCaWwrVDjdjD7jMEpuh6ubEGW5WoyIZhOFurrcblFOZWavYIgKP
	ggw0ZBGYhGR7J7K9cXN5o089p62yHZR5Id6LnWBXVYpjhM4AVWUZ/CVgoRr91TXvKUtzyDFUlHB9+
	ENlhzPmCqKYLfxm98O3tBCeY+K3hwcouYJbrqMdKRYFMJcDqpXhC/VUqzuRr2CO2fj1AlaUeNj/d6
	8ryKAfxfRep95LNuDKvyLcg4NWHZ8Tzu2Ecsbh+fl6oXR/Kqmer13BkJG0bTosjfix8jQdCXM/nDE
	aaTgJzXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUkXd-00000000tYx-2gV4;
	Mon, 06 Jan 2025 10:41:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUkXb-00000000tYY-1ePC
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 10:41:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUkXZ-00081Y-VM; Mon, 06 Jan 2025 11:40:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUkXZ-0079SF-01;
	Mon, 06 Jan 2025 11:40:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUkXZ-00FeVi-2K;
	Mon, 06 Jan 2025 11:40:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
References: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
Message-Id: <173616005771.3730544.13058500816658789722.b4-ty@pengutronix.de>
Date: Mon, 06 Jan 2025 11:40:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_024059_432523_B742DF8E 
X-CRM114-Status: UNSURE (   7.19  )
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
Subject: Re: [PATCH 1/6] fs: ramfs: drop unneeded indirection during unlink
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 Jan 2025 10:18:30 +0100, Ahmad Fatoum wrote:
> ramfs_unlink and simple_unlink have the same prototype, so we can just
> use simple_unlink directly instead of defining a trivial intermediate
> function.
> 
> 

Applied, thanks!

[1/6] fs: ramfs: drop unneeded indirection during unlink
      https://git.pengutronix.de/cgit/barebox/commit/?id=e13a005a74bd (link may not be stable)
[2/6] fs: squashfs: delete unreferenced source file
      https://git.pengutronix.de/cgit/barebox/commit/?id=250241642267 (link may not be stable)
[3/6] fs: collect legacy file system operation in new struct fs_legacy_ops
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a2858e9734a (link may not be stable)
[4/6] fs: return error pointer not NULL from cdev_mount_default
      https://git.pengutronix.de/cgit/barebox/commit/?id=4619539e43ca (link may not be stable)
[5/6] commands: stat: fix size display for FILE_SIZE_STREAM
      https://git.pengutronix.de/cgit/barebox/commit/?id=e796dcf64814 (link may not be stable)
[6/6] commands: stat: print mode in octal if type unknown
      https://git.pengutronix.de/cgit/barebox/commit/?id=fe978a472a3e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



