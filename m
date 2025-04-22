Delivery-date: Tue, 22 Apr 2025 10:41:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79By-003yfU-2e
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:41:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79By-0003KW-6x
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:41:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FYHl/jnbO4AECayp0Swt1CxbpcsklPClU+olBijFdC4=; b=l40hKZrEtlf0GhGcNOOlcWVAqf
	NYVr1A0yiP0FkER548dBu0mCH659At0VUcxFpPK14UMqaRdhvliTyuI65ZGOhHJhxX/Quvl2gf1Qp
	bOhLx6NWAG7h+JRa0yacEuuBVZ7RhvQ4I3iUnrHe7IUhgjPscipNZQiRUKCSuSv/MrG5NGTFxPONX
	Y/Gxs1zNy4VMTApLbxKdQHEprFydhox62TOkCQMash2j0xHGUdFAa31+UZ6Oe5M37+b7LBbr1UeEY
	09GcGnXBRYOPG8oN76geL5MO9vzjrXWK/JgPkIwk8IvpZaCTEXj+HiwGtpjObWTUF/UKIF+FJpJEr
	YgcqErAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79BZ-00000006O5a-12wR;
	Tue, 22 Apr 2025 08:40:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78a8-00000006Dnx-1nqq
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 08:02:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78a7-00029k-4t; Tue, 22 Apr 2025 10:02:15 +0200
Message-ID: <38c4d350-a6d6-429c-8f38-85241aee8b4d@pengutronix.de>
Date: Tue, 22 Apr 2025 10:02:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_010216_472998_FDB401DF 
X-CRM114-Status: GOOD (  19.51  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/11] firmware: qemu_fw_cfg: implement file system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 13.03.25 11:17, Ahmad Fatoum wrote:
> The character device we currently have is cumbersome to use.
> The Linux way to access it at /sys/firmware/qemu_fw_cfg
> is much nicer to use, so this series adds support for a similar
> FS to barebox.
> 
> A very nice result of having file system access to the QEMU variables
> in barebox is that we get a trivial way to pass data to barebox.
> To make it even more convenient to use, this series enables overriding
> individual files in the environment via the new mechanism, e.g.:
> 
>   pytest --env nv/boot.default=fit --env boot/fit=@boot.sh

Could the first four patch be applied for now until I revisit
the file system implementation?

Thanks,
Ahmad

> 
> Ahmad Fatoum (11):
>   video: ramfb: fix frame buffer screen size
>   firmware: qemu_fw_cfg: drop duplicate definitions
>   firmware: qemu_fw_cfg: add support for seeking
>   firmware: qemu_fw_cfg: rename from /dev/fw_cfg0 to /dev/fw_cfg
>   fs: add qemu_fw_cfg file system
>   firmware: qemu_fw_cfg: register at device initcall level
>   video: ramfb: use new qemu fw_cfg FS
>   libfile: give copy_file a flags parameter
>   libfile: pass copy_file flags through copy_recursive
>   libfile: add support for not clobbering files in copy_file
>   fs: qemu_fw_cfg: support populating environment via QEMU fw_cfg
> 
>  commands/Kconfig               |   4 +-
>  commands/cp.c                  |  18 +-
>  commands/defaultenv.c          |   2 +-
>  commands/tftp.c                |   2 +-
>  common/fastboot.c              |   2 +-
>  conftest.py                    |  22 ++
>  defaultenv/defaultenv.c        |  22 ++
>  drivers/firmware/qemu_fw_cfg.c |  63 +++--
>  drivers/video/Kconfig          |   2 +-
>  drivers/video/ramfb.c          | 116 ++++------
>  fs/Kconfig                     |   7 +
>  fs/Makefile                    |   1 +
>  fs/qemu_fw_cfg.c               | 404 +++++++++++++++++++++++++++++++++
>  include/envfs.h                |   5 +
>  include/libfile.h              |   8 +-
>  include/string.h               |   5 +
>  lib/libfile.c                  |  43 +++-
>  17 files changed, 592 insertions(+), 134 deletions(-)
>  create mode 100644 fs/qemu_fw_cfg.c
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


