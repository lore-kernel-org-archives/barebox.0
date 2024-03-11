Delivery-date: Mon, 11 Mar 2024 12:51:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjeBM-0010jY-0o
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 12:51:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjeBL-0005OQ-Mt
	for lore@pengutronix.de; Mon, 11 Mar 2024 12:51:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u2vsM3vTuatNCGoYBY2TbZyYfMd9n0BwkmmRpWL7iQ0=; b=1L1OYUQwNCuCwRhpD4QCxtD7d0
	dTXyPKw9oBGgT/6Apgr961b2lmd4bVaW4KwsYY01hu10VZ7VCG7SsHkxFolRu7JNwpr+Qy4XRh6qA
	axwBi4gZeGRctwDudJyWpwzGlyeVXmtGqbgQEaCuYNXgTq+N2mxN9PJfOo8CF4TEGhDyznVDgdA7d
	TiNbxB10fjRY3pkoYvLAAKqwRit2neDARQMnmFdCwrAopyh8Pwqg2G4wKeqXQv2nrk+aahmVQJhoE
	i9oDOeTDSkisZK/ZfPkYaFEwoN7VxJCySQj9QqNXL/Sw21+P4375wyf2b81+KHivUSGN8qgPr6NV2
	QjP6mBDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjeAf-00000001MIZ-45ni;
	Mon, 11 Mar 2024 11:50:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjeAa-00000001MGL-1CKl
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 11:50:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjeAX-0004iv-Hc; Mon, 11 Mar 2024 12:50:13 +0100
Message-ID: <41f4bc52-f619-4a91-a114-5eb2498cc3fc@pengutronix.de>
Date: Mon, 11 Mar 2024 12:50:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
References: <20240310233355.015a6192a3d7cd668dd6f820@gmail.com>
Content-Language: en-US
In-Reply-To: <20240310233355.015a6192a3d7cd668dd6f820@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_045016_382131_13A6FF57 
X-CRM114-Status: GOOD (  13.82  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Documentation/boards/riscv.rst: can't rebuild image for BeagleV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Antony,

On 10.03.24 21:33, Antony Pavlov wrote:
> Hi Ahmad!
> 
> I have tried to rebuild barebox for BeagleV.
> Alas I was unable to reproduce the steps from Documentation/boards/riscv.rst
> because of changes in opensbi repo.
> 
> I have successfully rebuild U-Boot from the https://github.com/andreiw/uboot_jh7100 repo
> and used it for running sbi-less BeagleV barebox image.
> 
> I planned to use BeagleV for picotcp demonstration but BeagleV ethernet adapter
> does not works neither under U-Boot nor under barebox. My dhcp server can't even
> receive any request from BeagleV.
> 
> Have we any chance to make BeagleV ethernet adapter works under barebox?

I've been meaning to sync barebox with the kernel, now that there's upstream
support for the JH7100. Ethernet on this SoC was a bit peculiar, because
previous RISC-V SoCs were fully cache-coherent, but the MAC on this SoC wasn't.

I got Ethernet to work though, so if it's broken now, it is a regression.

I will try building an image when I have time.

Cheers,
Ahmad

> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



