Delivery-date: Mon, 24 Oct 2022 09:55:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omsIX-000PVS-4r
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 09:55:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omsIV-0007dQ-VK
	for lore@pengutronix.de; Mon, 24 Oct 2022 09:55:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e3UcF0FQWeoW2dUljjbOyQ/dwO3AJZwNJDl4BHJvbOo=; b=t9EhDgtfFlRzqR2GvnUnFihUtJ
	jggjbIu9aA6AdDOD8+bWjmqsK3BRhT1cpF+FUrohxS2By73fFhJ9x9FUrEHfdOUF2e3nLvoY5mxY0
	YanQsq+j8FXUulIo5l2cQwB6HIf9cp2IOglf00LPDyM2Incd6vCdqNa/zeAn0gMsVZbMJyHbev5Ug
	ZQjAqAtpWUCn9xZGn+L/n+l9841FOFsP/TQKG4cjcHqkgL0kF8oeKMvdHbQVejIgnk8Ge4sGqPBrc
	YCAkboZoQR/0nv3ZDsBiV2dU2zEGz3vq3YfvVlI8O52AXJ5zz0OmHKjPSYF1voXpksKCYdxT75zcV
	MgPJO1Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omsH0-00HYsC-LF; Mon, 24 Oct 2022 07:53:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omsGw-00HYqT-Gn
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 07:53:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1omsGr-0007Kx-8Y; Mon, 24 Oct 2022 09:53:17 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1omsGr-0002GN-1A; Mon, 24 Oct 2022 09:53:17 +0200
Date: Mon, 24 Oct 2022 09:53:17 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20221024075316.pmxpeje2stcj7zn5@pengutronix.de>
References: <20221005111214.148844-1-m.felsch@pengutronix.de>
 <20221005111214.148844-6-m.felsch@pengutronix.de>
 <20221022105554.c9bbe152814a3c7a682df735@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221022105554.c9bbe152814a3c7a682df735@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_005322_568500_8F0BCC91 
X-CRM114-Status: UNSURE (   8.79  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/7] RISC-V: squash 64bit defconfigs into
 rv64i_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Antony,

On 22-10-22, Antony Pavlov wrote:
> On Wed,  5 Oct 2022 13:12:13 +0200
> Marco Felsch <m.felsch@pengutronix.de> wrote:
> 
> Hi Marco!
> 
> It looks like this commit breaks emulate.pl, e.g.
> 
>   ARCH=riscv
>   ARCH=${ARCH} ./test/emulate.pl --kconfig-full --test -- --junitxml=$PWD/$ARCH.tests.xml --lg-log=$PWD/log/$ARCH
> 
> reports
> 
>   Can't find default configuration "arch/riscv/configs/virt64_defconfig"!
> 
> Please see details: https://gitlab.com/frantony/barebox/-/jobs/3211154690#L111

Please see: https://gitlab.com/frantony/barebox/-/jobs/3211154690#L106

You are passing "--kconfig=virt64_defconfig" to tuxmake. I think this is
the failure.

Regards,
  Marco


