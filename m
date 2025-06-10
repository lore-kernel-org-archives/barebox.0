Delivery-date: Tue, 10 Jun 2025 09:31:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOtSe-005ihZ-3B
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 09:31:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOtSe-0004hv-DH
	for lore@pengutronix.de; Tue, 10 Jun 2025 09:31:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/u/z73xWgCRc6vCNNaF4AKpCcHkvlDA5pc6HkD3lyls=; b=TreT/dUmL2bk1INbuxt7mwPd7H
	CzHDnXtcrKoKwPYUhP7J5QmAutif4pow7pdvCNDjrpfOK2/j4ZfSd8cIqNjET8dtowapyrtiL3WJX
	Lgc2BKFPk3FCJw76mtWwY6GbWhbdfMaANS9vU8pNhcxa9cptK2a0XMZtaQJCpY9RahozSPk46Mm05
	xNA8+ZEb3Drr9VVYABNQcuu1LsEp+9QUPgcIGGHYCrNnD3TC+ne+62wCqDIm+x9p1ijEK478I00A8
	rATlTm7piYxllVcbU0PP6Qrpd3BlY1u7j5FHM5C+hYSCy3Xe76E56A5HqLwBaJxy4LJ5lLr29yl5i
	UvKcmhzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOtS4-000000061tH-0oSl;
	Tue, 10 Jun 2025 07:31:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOtS0-000000061rR-42BE
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 07:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOtRz-0004Pu-FX; Tue, 10 Jun 2025 09:31:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOtRz-002jWx-0w;
	Tue, 10 Jun 2025 09:31:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOtRz-00CpHq-0j;
	Tue, 10 Jun 2025 09:31:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250606085813.2183260-1-a.fatoum@barebox.org>
References: <20250606085813.2183260-1-a.fatoum@barebox.org>
Message-Id: <174954067522.3056847.706097535428163124.b4-ty@pengutronix.de>
Date: Tue, 10 Jun 2025 09:31:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_003117_002510_B75DE60E 
X-CRM114-Status: UNSURE (   8.92  )
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
Subject: Re: [PATCH 00/10] fs: add virtfs (Plan 9 ove Virt I/O)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 06 Jun 2025 10:58:03 +0200, Ahmad Fatoum wrote:
> In preparation for adding usb9pfs support to barebox, this series adds
> 9PFS over Virt I/O, which is nifty for passing files to (and from, FS
> is writable) barebox running in Qemu.
> 
> Ahmad Fatoum (10):
>   tftp: centralize 2 sec d_revalidate optimization to new netfs lib
>   Port Linux __cleanup() based guard infrastructure
>   lib: idr: implement Linux idr_alloc/_u32 API
>   lib: add iov_iter I/O vector iterator support
>   lib: add parser code for mount options
>   include: add definitions for UID/GID/DEV
>   net: add support for 9P protocol
>   fs: add new 9P2000.l (Plan 9) File system support
>   fs: 9p: enable 9P over Virt I/O transport in defconfigs
>   test: add support for --fs option in QEMU
> 
> [...]

Applied, thanks!

[01/10] tftp: centralize 2 sec d_revalidate optimization to new netfs lib
        https://git.pengutronix.de/cgit/barebox/commit/?id=620d40495155 (link may not be stable)
[02/10] Port Linux __cleanup() based guard infrastructure
        https://git.pengutronix.de/cgit/barebox/commit/?id=487759c3edb8 (link may not be stable)
[03/10] lib: idr: implement Linux idr_alloc/_u32 API
        https://git.pengutronix.de/cgit/barebox/commit/?id=7ef76f8133c4 (link may not be stable)
[04/10] lib: add iov_iter I/O vector iterator support
        https://git.pengutronix.de/cgit/barebox/commit/?id=7e49694981ad (link may not be stable)
[05/10] lib: add parser code for mount options
        https://git.pengutronix.de/cgit/barebox/commit/?id=1023664741e9 (link may not be stable)
[06/10] include: add definitions for UID/GID/DEV
        https://git.pengutronix.de/cgit/barebox/commit/?id=1e56d72d9057 (link may not be stable)
[07/10] net: add support for 9P protocol
        https://git.pengutronix.de/cgit/barebox/commit/?id=5df7db3248e2 (link may not be stable)
[08/10] fs: add new 9P2000.l (Plan 9) File system support
        https://git.pengutronix.de/cgit/barebox/commit/?id=863868b93d39 (link may not be stable)
[09/10] fs: 9p: enable 9P over Virt I/O transport in defconfigs
        https://git.pengutronix.de/cgit/barebox/commit/?id=7f28256646d4 (link may not be stable)
[10/10] test: add support for --fs option in QEMU
        https://git.pengutronix.de/cgit/barebox/commit/?id=97394d34d4c6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



