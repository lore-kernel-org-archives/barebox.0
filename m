Delivery-date: Wed, 14 Dec 2022 17:53:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5V0I-003rzo-7I
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 17:53:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5V0H-0001vf-Gz
	for lore@pengutronix.de; Wed, 14 Dec 2022 17:53:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dihTB6t2pi3uGjaw+TVCyKHFnkp1sYUslzSmJDEOvYg=; b=rRCfF+2OXfhWcJvITZI0YMFS5d
	x35dgo0MEYqtVhDXfWESh44DzKwQkhMBYff/As9vdUrQVJ+cGVG1JIsUR5VKQwa8FHEXRRJdnp0mA
	6qY/rcD7KQtSm5cW0fgd0YYr8mJ1lqbchFhkF2pQl0OykO8CdjsBRxhe/x6wgpy9odR3j9/wz4XpW
	zYUNYz1ndUEXvpL1CyQyKwMuZpbq7uu3CAqI8BP+XJmbxo6k4ivcBXXWOgTAPoyNf2zdXY9HTmF6b
	VXMPs/jr6tqtV2roAIvHyq2jttfJjMpN/euVHNKPSncYpDaEKDFe/yUaSNx6d0xLZRzbHs/6y+A0v
	ZWfXkChQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Uyf-000qEi-Q5; Wed, 14 Dec 2022 16:51:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Uya-000q8u-Q0
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 16:51:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1p5UyU-0001qa-F8
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 17:51:18 +0100
Message-ID: <40f32646-376f-41b0-406c-903ad20a0652@pengutronix.de>
Date: Wed, 14 Dec 2022 17:51:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_085124_879610_46C420ED 
X-CRM114-Status: GOOD (  11.56  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PSA] Linux < v6.0.12 may cause issues with barebox' boot /mnt/nfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

just ran into this myself today, so I figured I post a heads up:

Between v6.0-rc6 and v6.0.12, boot /mnt/nfs in barebox may result in
the kernel hanging due to the kernel NFS server replying with corrupted
data. This didn't affect all clients, but some barebox and QEMU configurations
manage to run into it.

This issue has been fixed with ac8db824ead0 ("NFSD: Fix reads with a
non-zero offset that don't end on a page boundary"), which is part of
v6.1-rc7 and v6.0.12.

If boot /mnt/nfs hangs for you, consider using boot net instead, which
will use TFTP in barebox and NFS in Linux, which should work around this
bug. Alternatively cp /mnt/nfs/boot/zImage / and boot from ramfs.

Or deploy a kernel with above change applied. Debian unstable currently
ships 6.0.0-0.deb11.2-amd64, which is affected.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


