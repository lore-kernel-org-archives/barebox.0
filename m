Delivery-date: Tue, 05 Aug 2025 12:06:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujEYv-007G6h-27
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 12:06:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujEYv-0007Zg-3X
	for lore@pengutronix.de; Tue, 05 Aug 2025 12:06:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=us6fnADGxUFNXd81TQgNaGyhfVg1CUDYAaIIu5r84uw=; b=fAygpxxyBDEMYXVcFfzMnDnr1d
	+hVfLZeCajiUvT6GidTcBgrkDF2Ul3Om+D01mvvj7KN1mdh/2oVSe4KlRFwaIBYGdvu4tbDT92YFK
	FwVa6Isa0H0dBfErCrX2IKmp2CUYwreyn16LBz/1X4TNGK1TMy1uANV+KzTwuanngvT9n3ReIz9hf
	VDU7R3QnL/FqyrCLIcWr0QDdfCXn2ZI/q+ijWlnUSw87q1wV178TV8/8dS5rRCun3g/CMRuLViX3c
	aRWCteOIa0TCnvO2/q5Lv0b0SP+rhWCbntJZ8zPQBJoGzcW0N4yeIts+Rhgoyq26czVUvgyFT3b50
	tW34GmWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujEYV-0000000CRpz-33k0;
	Tue, 05 Aug 2025 10:06:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE4X-0000000CNlV-21zg
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:35:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ujE4W-0003sL-33; Tue, 05 Aug 2025 11:35:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujE4V-00C1Gt-2m;
	Tue, 05 Aug 2025 11:35:03 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujE4V-00AACE-2P;
	Tue, 05 Aug 2025 11:35:03 +0200
Date: Tue, 5 Aug 2025 11:35:03 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Message-ID: <aJHQRz3NOMISohsV@pengutronix.de>
References: <20250707055331.2355809-1-gwenj@trabucayre.com>
 <20250707055331.2355809-2-gwenj@trabucayre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250707055331.2355809-2-gwenj@trabucayre.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_023505_523495_5C25020C 
X-CRM114-Status: GOOD (  18.26  )
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
Cc: barebox@lists.infradead.org, Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>, Johannes Roith <johannes@gnu-linux.rocks>
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
Subject: Re: [PATCH 2/3] arch/arm/boards/avnet-zedboard/lowlevel.c: added
 SDIO clk frequency configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jul 07, 2025 at 05:53:30AM +0000, Gwenhael Goavec-Merou wrote:
> From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> 
> As mentionned in [1] MMC sometime fails to be initialized/ is not
> working with this type of error:
> 
> arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
> malloc space: 0x17e00000 -> 0x1fdfffff (size 128 MiB)
> arasan-sdhci e0100000.mmc@e0100000.of: error while transferring data for command 6
> arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01ff0202 , interrupt = 0x00208000
> mmc0: Card's startup fails with -74
> barebox-environment chosen:environment-sd.of: probe failed: No such file or directory
> environment load /dev/env0: No such file or directory
> 
> This patch adds SDIO clck configuration allowing to have a valid MMC
> clock frequency.
> 
> [1] https://lore.barebox.org/barebox/VI1PR02MB4429606E3B06D0F53D2B4175AB4DA@VI1PR02MB4429.eurprd02.prod.outlook.com/T/#m1cb8598da4741c0b7a41944e1aecef373dd74319
> 
> Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> ---
>  arch/arm/boards/avnet-zedboard/lowlevel.c | 1 +
>  1 file changed, 1 insertion(+)

Applied with Ahmads suggestion for the subject.

Thanks,
 Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


