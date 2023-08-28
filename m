Delivery-date: Mon, 28 Aug 2023 11:46:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaYpN-00BsUw-8l
	for lore@lore.pengutronix.de; Mon, 28 Aug 2023 11:46:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaYpK-0007JF-W1
	for lore@pengutronix.de; Mon, 28 Aug 2023 11:46:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OoN65b3M5APGbibNF9I8cXDLlpNOLHhMwe5QVDwPivw=; b=hC/hm6cX6A/vJ3PsBZIt2/sz7j
	24kA8VKE6OwmYY98Nvj5ErjKAnlxjWoXSWXJHAFByAUS5WJN2ru1f6uyw2oWKfbJJPAkgY8guNQCy
	wufG2MFm79pTVSfFPygUkk3l0CmdEJHxcLpgmkmmWVkvuPb4F6cEWIfh9FBA1n7HSkWGky32hfY/G
	mfLzHYlzZOSc3p3jFPKhff0a6m6nr/6BsGKyuRANijt5qqb4vnluATYMCX8kBG6JyvOvrbS0ijqBD
	crHRjir5LqDS37hhaSMfmlkZugNvh9kkz+6F87P/1yAd6NecPZutcu4iOSm4muPRXuHEilvXVtaU3
	vVXu0tAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qaYny-009FkC-25;
	Mon, 28 Aug 2023 09:45:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qaYnt-009Fgb-30
	for barebox@lists.infradead.org;
	Mon, 28 Aug 2023 09:45:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qaYnl-0006vz-Sp; Mon, 28 Aug 2023 11:44:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qaYnl-0002qX-LB; Mon, 28 Aug 2023 11:44:53 +0200
Date: Mon, 28 Aug 2023 11:44:53 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230828094453.GL16522@pengutronix.de>
References: <20230828081755.2800855-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230828081755.2800855-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_024501_980553_661CAAC5 
X-CRM114-Status: GOOD (  28.09  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] fastboot: scale default sparse max_download_size with
 available memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 28, 2023 at 10:17:55AM +0200, Ahmad Fatoum wrote:
> The fastboot host tool chokes when asked to sparse images that are not
> 4K-aligned:
> 
>   error: write_sparse_skip_chunk: don't care size 4280912 is not a multiple
>   of the block size 4096
> 
> This is often not a problem, because disk images tend to be 4K-aligned
> and are best converted to sparse images properly explicitly anyway, so
> don't care holes are preserved.
> 
> Bootloader binaries on the other hand are smaller than the default
> fastboot.max_download_size of 8M, so they are downloaded as a single
> chunk without problems.
> 
> Situation is different for kernel and FIT images, which aren't
> necessarily 4K aligned, usually bigger than 8M, and are usually
> compressed, so explicitly sparsing them doesn't save time and thus is
> usually not done.
> 
> Short of fixing the fastboot host tool, users can skip sparsing kernel
> images as well by choosing a suitable larger fastboot.max_download_size
> than the 8M default.
> 
> To improve user experience, let's scale max_download_size with the
> available memory. The minimum default value remains 8M, but the value
> can go up to 128M now and is computed by dividing available malloc
> area by 8 (roughly 1/16th of total SDRAM). For ARM systems, buffer
> sizes would now look like this:
> 
>   SDRAM Size	Fastboot Buffer size
> 
>   1024M		64M
>    512M		32M
>    256M		16M
>    128M		8M
> 
> To err on the side of caution, we only generate powers-of-two sizes.
> This only affects the default value and users can as before override
> it in the environment.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - squash fixup fixing off by one in mem_malloc_size
>   - drop SZ_8M leftover in fastboot_max_download_size initialization.
>     It'll always be overridden anyway.
> ---
>  common/fastboot.c | 11 +++++++++--
>  include/memory.h  |  5 +++++
>  2 files changed, 14 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


