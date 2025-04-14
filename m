Delivery-date: Mon, 14 Apr 2025 15:26:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4JpC-000eiB-0Y
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 15:26:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4JpB-0007EN-GF
	for lore@pengutronix.de; Mon, 14 Apr 2025 15:26:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GsS9+OCh58hBHbOJd7ytbB7eOWKglsbtbQKpITDNNig=; b=ATncqUDDnEmEOH6bFZNhcGMjOz
	WOrN12NVTgALc3ligf53ZuxVPu3gmg8xaa6SqW9WzBiFWlSRKA0Nntn6ntGO3Z1jyPq7NEqtT+FEY
	yi6wk9zdXGNEaRRemI/KFcpcV6U9qfQmzSYaiMpDmBT//y0sgha7xXu6TJY199e1SxMGr2EBU/4qE
	bR3ynrxZPOT22R3LM5Y5FKq6wPVEVdy3mMFzTnVrowRtbKMh4ax/SyFfp2sqeREUMydJEiy+hapst
	pymtfU2Y7PTBRGpF0ccBuBsDcMKOV8j1yLXIxMkp10rNvRdpDbH6Q2LczIFw1qcNvuDoTA2EIgb+w
	Bp8JInDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Joi-000000027BY-2Jir;
	Mon, 14 Apr 2025 13:25:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Jof-000000027AX-0hyb
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 13:25:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Jod-0006ws-Nb; Mon, 14 Apr 2025 15:25:35 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Jod-000G3B-1k;
	Mon, 14 Apr 2025 15:25:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4Jod-00ArIw-1X;
	Mon, 14 Apr 2025 15:25:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
Message-Id: <174463713547.2587595.4999245920489710641.b4-ty@pengutronix.de>
Date: Mon, 14 Apr 2025 15:25:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_062537_208925_8E174FA0 
X-CRM114-Status: UNSURE (   7.14  )
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
Subject: Re: [PATCH 00/18] boot: improve cdev alias and blspec support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Apr 2025 08:31:34 +0200, Ahmad Fatoum wrote:
> Building on past top of past bootscan and cdev alias infrastructure in
> next, enable the following:
> 
>    - Favoring entries in GPT XBOOTLDR partition and EFI system
>      partitions, like we already do for MBR XBOOTLDR partition
> 
>    - Allow state backend and other DT bindings to point at a
>      barebox,bootsource node to allow same state DT description
>      to work across different boot media
> 
> [...]

Applied, thanks!

[01/18] cdev: make cdev_find_child_by_gpt_typeuuid external
        https://git.pengutronix.de/cgit/barebox/commit/?id=a007ea23536f (link may not be stable)
[02/18] cdev: constify cdev_find_child_by_gpt_typeuuid's guid_t pointer argument
        https://git.pengutronix.de/cgit/barebox/commit/?id=3135334dcf4b (link may not be stable)
[03/18] partition: efi: respect DPS_TYPE_FLAG_NO_AUTO flag
        https://git.pengutronix.de/cgit/barebox/commit/?id=37bc13eddaea (link may not be stable)
[04/18] blspec: iterate over all XBOOTLDR partitions
        https://git.pengutronix.de/cgit/barebox/commit/?id=06adbb825081 (link may not be stable)
[05/18] blspec: support GPT XBOOTLDR partition
        https://git.pengutronix.de/cgit/barebox/commit/?id=396f3e6b4119 (link may not be stable)
[06/18] blspec: collect bootloader spec entries from ESP
        https://git.pengutronix.de/cgit/barebox/commit/?id=6d5595a6a3c5 (link may not be stable)
[07/18] cdev: alias: add support for partition links
        https://git.pengutronix.de/cgit/barebox/commit/?id=7936038edadc (link may not be stable)
[08/18] cdev: do not dereference partname for non-partitions
        https://git.pengutronix.de/cgit/barebox/commit/?id=1bbc03a7faa1 (link may not be stable)
[09/18] cdev: use common cdev_free helper internally
        https://git.pengutronix.de/cgit/barebox/commit/?id=cf3f7e562d18 (link may not be stable)
[10/18] cdev: implement devfs_create_link in terms of devfs_create
        https://git.pengutronix.de/cgit/barebox/commit/?id=db79238d94b8 (link may not be stable)
[11/18] misc: storage-by-uuid: consider only first diskuuid match
        https://git.pengutronix.de/cgit/barebox/commit/?id=838211091e0b (link may not be stable)
[12/18] misc: storage-by-uuid: prepare for generalizing to different aliases
        https://git.pengutronix.de/cgit/barebox/commit/?id=b82ba2a5d097 (link may not be stable)
[13/18] misc: storage-by-uuid: rename to storage-by-alias
        https://git.pengutronix.de/cgit/barebox/commit/?id=e957f8c82f7e (link may not be stable)
[14/18] misc: storage-by-alias: switch over to using cdev aliases
        https://git.pengutronix.de/cgit/barebox/commit/?id=b6d3b15b25db (link may not be stable)
[15/18] misc: storage-by-alias: add support barebox,bootsource
        https://git.pengutronix.de/cgit/barebox/commit/?id=f22f557b8334 (link may not be stable)
[16/18] misc: storage-by-alias: register as link to main cdev
        https://git.pengutronix.de/cgit/barebox/commit/?id=4c496eb9bc2c (link may not be stable)
[17/18] cdev: constify cdev_readlink argument
        https://git.pengutronix.de/cgit/barebox/commit/?id=f5e1996adc0c (link may not be stable)
[18/18] cdev: follow links in cdev_find_child_by_gpt_typeuuid
        https://git.pengutronix.de/cgit/barebox/commit/?id=f2a44cdffc32 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



