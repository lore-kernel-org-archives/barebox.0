Delivery-date: Mon, 25 Nov 2024 09:43:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUgU-0008Gb-12
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:43:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUgU-0003Bp-9V
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:43:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/EHgbqOhSRoFz0ywhGTx3bMwm1pXoEwgkv0Arz1y6oM=; b=ku8e/VzyOo7Gzj63ENFM/Tp7KM
	yocjfFnaWyY0nBRz/uOa3UlEuQBF54SyK4/gCdK/5nOU7DRiBovM3UpWtBR+w9MWn1pTcUqO0+ftQ
	cTFiVytYwChUGpdvovAGbD4cU3aih0MYZZJxCjZj+2ue5MdnDzt7nrTuSlKX9rNcHYuf+67B2UIOx
	wfWtTXDAD5UNcqAliARRjh2fMdxyvHds0Xzs3nWdkW0B/HnP0gl990rD0uvbES0sM3oEBcoxuY8be
	7qGRR20LLdsAJUnA1EuyxOEp6xubiLouYK0RNglAxJNAyvcv+/TIBO3bZNgyaV7P4mMuK7NWVCe/c
	XaPXtsRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUg5-00000007QYc-2TBv;
	Mon, 25 Nov 2024 08:42:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUg2-00000007QY8-3UKa
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:42:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUg1-00037L-CH; Mon, 25 Nov 2024 09:42:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUg0-00038i-1M;
	Mon, 25 Nov 2024 09:42:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFUg1-000iCl-0Q;
	Mon, 25 Nov 2024 09:42:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Stefano Manni <stefano.manni@gmail.com>
In-Reply-To: <20241119085641.2598035-1-a.fatoum@pengutronix.de>
References: <20241119085641.2598035-1-a.fatoum@pengutronix.de>
Message-Id: <173252415712.169906.5068288398587008947.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 09:42:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_004238_872496_3074D789 
X-CRM114-Status: GOOD (  10.48  )
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
Subject: Re: [PATCH 1/2] remoteproc: elf_loader: skip segment with memsz as
 zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 Nov 2024 09:56:40 +0100, Ahmad Fatoum wrote:
> Per elf specification,
> p_filesz: This member gives the number of bytes in the file image of
> the segment; it may be zero.
> p_memsz: This member gives the number of bytes in the memory image
> of the segment; it may be zero.
> 
> There is a case that i.MX DSP firmware has segment with PT_LOAD and
> p_memsz/p_filesz set to zero. Such segment needs to be ignored,
> otherwize rproc_da_to_va would report error.
> 
> [...]

Applied, thanks!

[1/2] remoteproc: elf_loader: skip segment with memsz as zero
      https://git.pengutronix.de/cgit/barebox/commit/?id=f069a33703b9 (link may not be stable)
[2/2] remoteproc: imx: add support for loading ELF data sections into DRAM
      https://git.pengutronix.de/cgit/barebox/commit/?id=31bd2c9b57a0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



