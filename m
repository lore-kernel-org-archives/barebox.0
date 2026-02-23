Delivery-date: Mon, 23 Feb 2026 10:47:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSXh-004mmG-1x
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:47:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSXh-0004Mi-HJ
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:47:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F5oDCSrhfnLVHJXSkI5usBixlSxbW6mc2shZz5QyKSY=; b=N+AzHDp7JShA8Y1zay3W1Upkiu
	jqo50cZhf82sb8I2iXN3nd8Te8w+N9gY8xB3Rn5GeeWfk28guS77sLptHYGe49E5+H8/KudiFgLm2
	PJSnHdF3UCFM+iRvXcK2UWP7m+5i5UrY1hpNDGn+xjBTynbUHV+mJjbClmh0LEtWxRRs+MeUOx1iT
	XXJTMEWRgnb5NYSW3SU15iTRj4sj/LeETFuP/v+MdpmWgm6y1T7hHhpbYTPQMwOQdxcj/QlzGaXjk
	3O3kt+y0cPs+DBBz8CFBOpJCn1hHmdJVCs7rAfos5B/zl6igZJDBDiwZloPiYz7qPqKLDXQncbKf2
	x8Mz7PGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSXA-0000000HZDx-1faA;
	Mon, 23 Feb 2026 09:47:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSX7-0000000HZDb-2iEf
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:47:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSX5-0004J8-Ov; Mon, 23 Feb 2026 10:47:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSX4-002Cpg-0l;
	Mon, 23 Feb 2026 10:47:15 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSX5-00000000p1Q-2Ctt;
	Mon, 23 Feb 2026 10:47:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
Message-Id: <177184003551.196034.5369311725997865056.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:47:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_014717_882761_44276022 
X-CRM114-Status: GOOD (  10.68  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 00/39] efi: fix bugs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Feb 2026 09:44:00 +0100, Ahmad Fatoum wrote:
> While adding new tests for the barebox EFI support, a number of issues
> were unearthed. Additionally, I ran Claude Code to determine suspicious
> looking patterns and it found a number of extra issues, mostly in error
> paths.
> 
> Except for patches 36, 37 and 38, all other patches affect only efi/,
> so I hope it's ok to merge into master after review.
> 
> [...]

Applied, thanks!

[01/39] efi: fix potential NULL dereference
        https://git.pengutronix.de/cgit/barebox/commit/?id=c54a80c2e557 (link may not be stable)
[02/39] efi: trace: fix EFI_EXIT2 to not evaluate output value on error
        https://git.pengutronix.de/cgit/barebox/commit/?id=dac494e8d3b9 (link may not be stable)
[03/39] efi: loader: fix CRC32 computation in table header update
        https://git.pengutronix.de/cgit/barebox/commit/?id=f34f05ff87cf (link may not be stable)
[04/39] efi: loader: fix pointer vs value comparison in free_efi_only
        https://git.pengutronix.de/cgit/barebox/commit/?id=ec70e6c48318 (link may not be stable)
[05/39] efi: loader: fix disk write return value check
        https://git.pengutronix.de/cgit/barebox/commit/?id=e3171f94eebd (link may not be stable)
[06/39] efi: loader: fix EFI_ENTRY/EFI_EXIT ordering in efi_set_time
        https://git.pengutronix.de/cgit/barebox/commit/?id=4103d794756a (link may not be stable)
[07/39] efi: runtime: fix missing EFI_EXIT in efirt_query_variable_info
        https://git.pengutronix.de/cgit/barebox/commit/?id=08e2480340d1 (link may not be stable)
[08/39] efi: loader: fix file handle leak in efi_file_from_path
        https://git.pengutronix.de/cgit/barebox/commit/?id=33fee4de545c (link may not be stable)
[09/39] efi: loader: fix missing field init in deferred protocol add
        https://git.pengutronix.de/cgit/barebox/commit/?id=14dbf7ec2382 (link may not be stable)
[10/39] efi: loader: fix memory leak in efi_var_to_file
        https://git.pengutronix.de/cgit/barebox/commit/?id=d47891ef7964 (link may not be stable)
[11/39] efi: loader: fix multiple bugs in efi_loader_bootm
        https://git.pengutronix.de/cgit/barebox/commit/?id=8cd0c65b4438 (link may not be stable)
[12/39] efi: loader: fix return type and memory leak in efi_smbios_register
        https://git.pengutronix.de/cgit/barebox/commit/?id=3837daaf8632 (link may not be stable)
[13/39] efi: loader: fix memory leak in efi_dp_split_file_path
        https://git.pengutronix.de/cgit/barebox/commit/?id=a829aa1632f4 (link may not be stable)
[14/39] efi: loader: fix HII string table realloc and memset bugs
        https://git.pengutronix.de/cgit/barebox/commit/?id=6e5ed7905aaa (link may not be stable)
[15/39] efi: loader: fix format specifier and missing EFI_EXIT in boot services
        https://git.pengutronix.de/cgit/barebox/commit/?id=080db65e39a8 (link may not be stable)
[16/39] efi: fix unreachable free in efi_set_variable_printf
        https://git.pengutronix.de/cgit/barebox/commit/?id=d948429c5194 (link may not be stable)
[17/39] efi: payload: fix missing NULL check after read_file in handover
        https://git.pengutronix.de/cgit/barebox/commit/?id=444cf98b04f3 (link may not be stable)
[18/39] efi: payload: fix EFI page leak in efi_read_file
        https://git.pengutronix.de/cgit/barebox/commit/?id=57a8797d60ad (link may not be stable)
[19/39] efi: payload: fix inverted error check after state_load
        https://git.pengutronix.de/cgit/barebox/commit/?id=91d905b8a0c2 (link may not be stable)
[20/39] efi: fix out-of-bounds read in device path unknown node printing
        https://git.pengutronix.de/cgit/barebox/commit/?id=2a6a61f1838d (link may not be stable)
[21/39] efi: payload: fix wrong page count in efi_unload_fdt
        https://git.pengutronix.de/cgit/barebox/commit/?id=52b9834dd54c (link may not be stable)
[22/39] efi: fix out-of-bounds read in 1394 device path printing
        https://git.pengutronix.de/cgit/barebox/commit/?id=4c1fb0236fa8 (link may not be stable)
[23/39] efi: loader: initialize block IO ops before installing protocol
        https://git.pengutronix.de/cgit/barebox/commit/?id=1a91f3188d1d (link may not be stable)
[24/39] efi: runtime: fix variable store bounds check to account for alignment
        https://git.pengutronix.de/cgit/barebox/commit/?id=a64506f315a8 (link may not be stable)
[25/39] efi: fix Fibre Channel device path type vs sub_type comparison
        https://git.pengutronix.de/cgit/barebox/commit/?id=6fde1114a7d5 (link may not be stable)
[26/39] efi: loader: fix file open mode always setting O_RDWR
        https://git.pengutronix.de/cgit/barebox/commit/?id=5c9e4b749566 (link may not be stable)
[27/39] efi: loader: fix NULL pointer dereference when deleting root volume handle
        https://git.pengutronix.de/cgit/barebox/commit/?id=f1162a2d7c55 (link may not be stable)
[28/39] efi: loader: fix memory leak of variable file buffer on success
        https://git.pengutronix.de/cgit/barebox/commit/?id=38694e38af0c (link may not be stable)
[29/39] efi: loader: fix memory leak in efi_var_collect on buffer overflow
        https://git.pengutronix.de/cgit/barebox/commit/?id=b90ee82d1009 (link may not be stable)
[30/39] efi: fix signed format specifier for uint64_t timestamp
        https://git.pengutronix.de/cgit/barebox/commit/?id=1a3a5454b04e (link may not be stable)
[31/39] efi: payload: fix possible memory leaks during init
        https://git.pengutronix.de/cgit/barebox/commit/?id=337142fb8309 (link may not be stable)
[32/39] efi: payload: protect against missing state alias
        https://git.pengutronix.de/cgit/barebox/commit/?id=8f813078b96f (link may not be stable)
[33/39] efi: loader: fix stale return value in console out-of-memory path
        https://git.pengutronix.de/cgit/barebox/commit/?id=2c62cc5ef0ab (link may not be stable)
[34/39] efi: loader: fix off-by-one in FAT codepage translation
        https://git.pengutronix.de/cgit/barebox/commit/?id=4e9944e5cd11 (link may not be stable)
[35/39] efi: loader: fix co-existence with EFI payload support
        https://git.pengutronix.de/cgit/barebox/commit/?id=8663727f7d2e (link may not be stable)
[36/39] efi: payload: skip ELF MMU handling when booted via stub
        https://git.pengutronix.de/cgit/barebox/commit/?id=d3a7be5efa53 (link may not be stable)
[37/39] efi: payload: register dummy device tree
        https://git.pengutronix.de/cgit/barebox/commit/?id=10922345fbcc (link may not be stable)
[38/39] console: introduce helper for printing binary buffers as-is
        https://git.pengutronix.de/cgit/barebox/commit/?id=149d4ce8633d (link may not be stable)
[39/39] efi: loader: protocol: console: don't turn LF into CRLF
        https://git.pengutronix.de/cgit/barebox/commit/?id=aff0a2f03766 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



