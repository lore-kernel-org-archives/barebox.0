Delivery-date: Mon, 29 Jun 2026 12:17:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we93l-00B5Ef-2D
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 12:17:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we93k-0000ZZ-TN
	for lore@pengutronix.de; Mon, 29 Jun 2026 12:17:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QZd08BA3QPT8R4Bw1be8kdStCmWUbUj1dNegiXf89Oc=; b=hU6n3rxN4lrNwJ19gXOh3XuFFv
	o84I6/3zPU4aRBt0DjhBiNNKwpVXF8HH84XKXqkUGHusAHK33/FuuPicdZz+onf3+YCPt8ZfplXSx
	VNPjbyjw96MTiD7c6i16hdZEwcR33Tdd/3wFzNjmTKODij05Mt51LEKQOEEui3OMnrsNJEes3iin6
	TbVd57i3bhm/WQ1KeZXaTId5WRNFfS7en5JlvkCJtMxM1tdAUUka+eNluFwVJHvuO8r1ms0GS0hZA
	f5W/amS7NeVHGJtPlh6wE5DplZO/OjWR+AzCFj8YJrt12V3eounJexXyf44VSTHu4KYbXieLJYqI0
	7dJhLLAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we92V-0000000EJvX-45m8;
	Mon, 29 Jun 2026 10:16:31 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we92S-0000000EJuo-496G
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 10:16:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B48BA2002FE;
	Mon, 29 Jun 2026 12:16:24 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we92O-005EAu-23;
	Mon, 29 Jun 2026 12:16:24 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1we92O-00000000mSH-2Pke;
	Mon, 29 Jun 2026 12:16:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
Message-Id: <178272818456.186194.14695311119779095494.b4-ty@pengutronix.de>
Date: Mon, 29 Jun 2026 12:16:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_031629_186722_20F3AA3D 
X-CRM114-Status: UNSURE (   9.06  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/26] block: add support for non-512 byte sectors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 26 Jun 2026 10:42:11 +0200, Ahmad Fatoum wrote:
> barebox code is currently a mixture of code that reads as if it supports
> runtime-determined block sizes and code that hardcodes assumption of
> 512 byte sectors. End result is that use of a 4K sector will likely
> crash as e.g. partition table parser is hardcoded to 512 bytes.
> 
> This series fixes most of that. Apparently there are MMCs (but not SDs)
> that have 4K sectors, which this series doesn't add support for.
> 
> [...]

Applied, thanks!

[01/26] nvme: use barebox-appropriate 64-bit type for timeouts
        https://git.pengutronix.de/cgit/barebox/commit/?id=3cc35aaab686 (link may not be stable)
[02/26] nvme: fix buffer advancement when chunking due to max_hw_sectors
        https://git.pengutronix.de/cgit/barebox/commit/?id=2b7c15453992 (link may not be stable)
[03/26] nvme: allow flush opcode
        https://git.pengutronix.de/cgit/barebox/commit/?id=f3d5132b87d0 (link may not be stable)
[04/26] nvme: honor namespace block size for I/O
        https://git.pengutronix.de/cgit/barebox/commit/?id=45e5306b2143 (link may not be stable)
[05/26] bootscan: fix detection of GPT
        https://git.pengutronix.de/cgit/barebox/commit/?id=6bb7f1a4812b (link may not be stable)
[06/26] block: clarify that writebuffer_io_len returns sector counts
        https://git.pengutronix.de/cgit/barebox/commit/?id=eb0d0077a9a4 (link may not be stable)
[07/26] block: fix wrong type for discard_start/size byte ranges
        https://git.pengutronix.de/cgit/barebox/commit/?id=866196950824 (link may not be stable)
[08/26] block: fix discard zeroing too little memory
        https://git.pengutronix.de/cgit/barebox/commit/?id=1593c9b77b1e (link may not be stable)
[09/26] block: use logical block size for reparse checks
        https://git.pengutronix.de/cgit/barebox/commit/?id=c6666b35cb46 (link may not be stable)
[10/26] block: require lower bound of sector size to be 512 bytes
        https://git.pengutronix.de/cgit/barebox/commit/?id=f8dc77b61101 (link may not be stable)
[11/26] filetype: don't hardcode sector size in file_detect_partition_table
        https://git.pengutronix.de/cgit/barebox/commit/?id=e32cc43fedb6 (link may not be stable)
[12/26] block: define helpers for non-512-byte sector support
        https://git.pengutronix.de/cgit/barebox/commit/?id=bff79e404316 (link may not be stable)
[13/26] bootscan: use block size for partition table probe
        https://git.pengutronix.de/cgit/barebox/commit/?id=12ccdd7fe817 (link may not be stable)
[14/26] ramdisk: validate exported sector size
        https://git.pengutronix.de/cgit/barebox/commit/?id=36c71197aed1 (link may not be stable)
[15/26] efi: block: fix sector size mismatch in block device registration and ops
        https://git.pengutronix.de/cgit/barebox/commit/?id=fa6a59c88556 (link may not be stable)
[16/26] efi: loader: disk: report block device size in Block I/O
        https://git.pengutronix.de/cgit/barebox/commit/?id=d6bc98cd11b9 (link may not be stable)
[17/26] efi: loader: file: report cdev block size in file info
        https://git.pengutronix.de/cgit/barebox/commit/?id=c702d0da787b (link may not be stable)
[18/26] partitions: use byte offset for first partition policy
        https://git.pengutronix.de/cgit/barebox/commit/?id=4a36f92e6e87 (link may not be stable)
[19/26] partitions: dos: allocate correctly sized buffer for dos_partition_desc
        https://git.pengutronix.de/cgit/barebox/commit/?id=657e7fe18cf8 (link may not be stable)
[20/26] partition: support non-512 byte sectors
        https://git.pengutronix.de/cgit/barebox/commit/?id=a4aba2c2702e (link may not be stable)
[21/26] fs: fat: fix garbage read when writing with bigger block size
        https://git.pengutronix.de/cgit/barebox/commit/?id=92bae6e29271 (link may not be stable)
[22/26] fs: fat: support larger block device sectors
        https://git.pengutronix.de/cgit/barebox/commit/?id=0d0aef455ef0 (link may not be stable)
[23/26] usb-storage: preserve READ CAPACITY sector size
        https://git.pengutronix.de/cgit/barebox/commit/?id=0c3d932d29dc (link may not be stable)
[24/26] fuzz: add 4K-sector partition ramdisk target
        https://git.pengutronix.de/cgit/barebox/commit/?id=1ac6223f24a7 (link may not be stable)
[25/26] commands: parted: prepare use of non-512-byte sectors
        https://git.pengutronix.de/cgit/barebox/commit/?id=7af2b28faa29 (link may not be stable)
[26/26] commands: parted: exit if block size if not 512
        https://git.pengutronix.de/cgit/barebox/commit/?id=2f9c7fed6154 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



