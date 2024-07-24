Delivery-date: Wed, 24 Jul 2024 10:38:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWXW7-002Plo-2h
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 10:38:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWXW7-0000Jb-7p
	for lore@pengutronix.de; Wed, 24 Jul 2024 10:38:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zzr0zvKjrv9TwTOzRyJ18bKPNwLqYG8mOQUWPNsvYO4=; b=WGrcKWF+n+/CQztMUB7Jcv3197
	IkVMMN5GSnEIs91ZvacrmR+SRrI9wPa9qJzCd7MyLvlIo2uK7z8EgrdxwmrcGDRWlR9/EtDBFjPc+
	g2R4fezfLs/j5p70HOZJRztM8YTPmFe26Jtoore+T2I/g51uA6DT+ddes8v+EXXNLmvAerqaZ3V1h
	L2cC1It4gRODJs3Qf5uY2d4piWZElSKY437WFXqb0uCg/Yt5NZYBgPApDuNF4GNMTJEjLeF8vI30k
	rhg2o0XoWd1i3rgIHEGMyI+BLlerlds4l+oNXhilzJMlp60aP8ram8f8QRsgiLfHVWuCRwr/FbQfu
	u5oojOCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWXVf-0000000En4S-3YEd;
	Wed, 24 Jul 2024 08:38:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWXVd-0000000En40-0oDh
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 08:38:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWXVb-0000GP-IM; Wed, 24 Jul 2024 10:38:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWXVb-001ofl-5Z; Wed, 24 Jul 2024 10:38:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sWXVb-00ARih-0J;
	Wed, 24 Jul 2024 10:38:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240722170618.3867187-1-a.fatoum@pengutronix.de>
References: <20240722170618.3867187-1-a.fatoum@pengutronix.de>
Message-Id: <172181028309.2489282.16964838847787489032.b4-ty@pengutronix.de>
Date: Wed, 24 Jul 2024 10:38:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_013805_267693_BB782E12 
X-CRM114-Status: UNSURE (   9.29  )
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
Subject: Re: [PATCH] ARM: cpuinfo: add option to print early memory map
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Jul 2024 19:06:18 +0200, Ahmad Fatoum wrote:
> While the iomem command is useful for visualizing the memory map, it has
> some drawbacks:
> 
>   - It is only usable once barebox init has reached the shell
>   - Not all its entries reflect the early barebox memory map
> 
> Address by teaching the cpuinfo command a new -m option that prints the
> early memory map and print it by default if CONFIG_DEBUG_PBL is enabled.
> 
> [...]

Applied, thanks!

[1/1] ARM: cpuinfo: add option to print early memory map
      https://git.pengutronix.de/cgit/barebox/commit/?id=1a7060e1b5f4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



