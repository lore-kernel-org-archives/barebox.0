Delivery-date: Tue, 05 Dec 2023 11:36:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rASnH-0043uQ-1O
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 11:36:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rASnH-0003pS-DE
	for lore@pengutronix.de; Tue, 05 Dec 2023 11:36:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v6cy/j4u6FZP3HaaNSpFEQRRfSq+r2oA//pMOQe99ds=; b=Y9XRnCMVycFy1ckQwDWyBexTCL
	ivBg5u+5hStxs2eMbhvyt6ytbiphy0pUSFSMclPnkfRui+gHaONwLpq6tZBSdpMlJGV0LkX9fJV/V
	K4b/qdy8wuvbxRv2NmyM58jIkLNRhC+kXC1Fv9D6aNtv5MjtsaxW8PxbeWXm2xayKmC5W5N9pxnM2
	fvvSkhu3sE4J6S2fN7Kcg9cNQna8mZysQbWFnyURombTgU4AnNPiXfk4x1mXA04q5GCzTAxOwwzqO
	C/lvLV+RB848+gAfz5Q4b8/56zSuHbvWr2OogGR6/4A9jEdRz8bgJzBjmO3YiBVJX3ymbwcfEUyAT
	trNGdGkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rASl3-006yos-0v;
	Tue, 05 Dec 2023 10:34:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rASkz-006yoV-1H
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 10:34:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rASkx-0003BB-Ba; Tue, 05 Dec 2023 11:34:23 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rASkw-00Dilf-Sa; Tue, 05 Dec 2023 11:34:22 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rASkw-005N6M-Pt; Tue, 05 Dec 2023 11:34:22 +0100
Date: Tue, 5 Dec 2023 11:34:22 +0100
To: Victor BERTIN <vbertin@witekio.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20231205103422.GB1057032@pengutronix.de>
References: <PAXP192MB12457D6FCCD50380EA71D63FA786A@PAXP192MB1245.EURP192.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXP192MB12457D6FCCD50380EA71D63FA786A@PAXP192MB1245.EURP192.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_023425_436557_A826B885 
X-CRM114-Status: GOOD (  25.14  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Fail to register logical partition because it overlaps with the
 extended partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Victor,

On Mon, Dec 04, 2023 at 03:04:37PM +0000, Victor BERTIN wrote:
> Hello All,
> 
> We are using Barebox v2022.12.0 on a MSC SM2S-IMX8MP SoM.
> 
> We witness an error happening when registering the first logical partition of our extended partition :
> ERROR: New partition mmc2.4 (0x46600400-0xc68003ff) on mmc2 overlaps with partition mmc2.3 (0x46600200-0x466005ff), not creating it
> ERROR: mmc2: Failed to register partition 4 on mmc2 (-22)
> 
> However, Linux does not complain and all partitions are properly registered :
> [root@imx8-evo:~]# lsblk
> NAME         MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
> mmcblk2      179:0    0 14.6G  0 disk
> |-mmcblk2p1  179:1    0   66M  0 part
> |-mmcblk2p2  179:2    0    1G  0 part /
> |-mmcblk2p3  179:3    0   34M  0 part /rwdisk/systemrw
> |-mmcblk2p4  179:4    0    1K  0 part
> |-mmcblk2p5  179:5    0    2G  0 part /rwdisk/app
> |-mmcblk2p6  179:6    0  130M  0 part /var/log
> `-mmcblk2p7  179:7    0   32M  0 part /rwdisk/conf
> mmcblk2boot0 179:32   0    4M  1 disk
> mmcblk2boot1 179:64   0    4M  1 disk
> 
> Since 84ea37e4580cabc2a49edc4e2c62b45a752771fc, extended partitions
> are registered with a size of 2 sectors. Our extended partition still
> manages to overlap with the first logical partition that it contains.
> A simple trick is to reduce the registration size to 1 sector, however
> we are not sure of the side effects of such change.

I don't think this has any side effects. In the end an extended
partition is just a container for logical partitions and should not be
used directly anyway.

I just realized we do not check if the logical partitions actually fit
into the extended partition. It might be better do handle the logical
partitions as children of the extended partition, but I am currently not
very familiar with the code. Anyway, until we are there feel free to
send a patch changing the size of an extended partition to 1 sector.

> 
> Any idea why such issue could happen ?

I am not sure if Linux checks for overlapping partitions at all. From
looking at the code I'd say no.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


