Delivery-date: Fri, 13 Feb 2026 15:08:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqtqT-001H25-1U
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 15:08:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqtqT-0001Mp-Kw
	for lore@pengutronix.de; Fri, 13 Feb 2026 15:08:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ABwfMB9STjOs5udA4CrUyXk4jUppvJ/ktUotKY14m0=; b=Nt9MWvdVgoghjCaasTKsAjEtvY
	AwfSEzSIL4a0DIrNBCzoLBwcl4ghr1sHae5az+ECrmkfRaAQNtptPCaKBy0xXPlHGQdutMofmWF9S
	rMjSZoGKpQ/TruMlXZZWQ/7xm3mwYWFO4CvN2SIX3R8IZE8oD+C+Yzzwhzd0lGm6jAP15ciKWGtb4
	S4gcy/0EsoKsBkC0p5RVyThzBYIFKNbkFBwHNNwRrGtGvPr0e+4FyaDneAKOrPoJmAVbMuDWI/zLi
	uCZk5o5LCizb2UE0j1I6TiA3YNhxqDKFolj/FcvUy9VPKc0UUHBmrEzc8WsTfI9MZZ54ITqnrIycC
	fI2AxaiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqtq2-00000003WGQ-2ZrL;
	Fri, 13 Feb 2026 14:08:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqtpz-00000003WFm-3y3r
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 14:08:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vqtpq-00019q-F4; Fri, 13 Feb 2026 15:07:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vqtpo-000adM-2v;
	Fri, 13 Feb 2026 15:07:54 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vqtpq-0000000FOgG-0l8D;
	Fri, 13 Feb 2026 15:07:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
References: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
Message-Id: <177099167417.3669753.6320092937366185083.b4-ty@pengutronix.de>
Date: Fri, 13 Feb 2026 15:07:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_060803_992600_29337068 
X-CRM114-Status: UNSURE (   9.28  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/13] bootm: prepare loadable abstraction rework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 09 Feb 2026 19:10:39 +0100, Ahmad Fatoum wrote:
> v1 -> v2:
>   - Dropped "efi: payload: bootm: fix memory corruption on initrd load error":
>     Sent out separately
>   - Dropped "bootm: cache os_file for appendroot purposes"
>     Preparatory patch that has been superseded for the second part of
>     this rework
>   - Move memory_bank_lookup_region() closer to the bootm_load()
>     functions, and make sure same argument are used for both.
>   - Switch over efi_loader_bootm as well by using bootm_load_os
>   - In fit_open, propagate error for short reads correctly
>   - add kernel-doc for open_fdt, resize_region,
>     file_read_and_detect_boot_image_type
>   - export file_read_and_detect_boot_image_type for future use
>   - fix intermittent regression for initrd loading
>   - resize_region: return error on resizing to 0 size (Sascha)
>   - resize_region: check that there is no conflict with child resources
>     (Sascha)
> 
> [...]

Applied, thanks!

[01/13] FIT: implement fit_count_images
        https://git.pengutronix.de/cgit/barebox/commit/?id=78ab21a74771 (link may not be stable)
[02/13] FIT: add image index argument to fit_open_image
        https://git.pengutronix.de/cgit/barebox/commit/?id=5b0796484a85 (link may not be stable)
[03/13] resource: implement gap-aware lookup_region
        https://git.pengutronix.de/cgit/barebox/commit/?id=81bf39698226 (link may not be stable)
[04/13] bootm: give bootm_load_ functions an end address
        https://git.pengutronix.de/cgit/barebox/commit/?id=f048eaf9323d (link may not be stable)
[05/13] bootm: store separate image_type and kernel_type
        https://git.pengutronix.de/cgit/barebox/commit/?id=3b843b66e84d (link may not be stable)
[06/13] bootm: fit: move length calculation into fit_open
        https://git.pengutronix.de/cgit/barebox/commit/?id=cc202f94db33 (link may not be stable)
[07/13] libfile: factor out zero-page resistant read_file as __read_full_anywhere
        https://git.pengutronix.de/cgit/barebox/commit/?id=56832e6dbbab (link may not be stable)
[08/13] resource: implement resize_region
        https://git.pengutronix.de/cgit/barebox/commit/?id=7cd4ea927438 (link may not be stable)
[09/13] bootm: rename image_data::os/initrd with _uimage suffix
        https://git.pengutronix.de/cgit/barebox/commit/?id=fe3b12b27cd3 (link may not be stable)
[10/13] uimage: record original file name in uimage_handle
        https://git.pengutronix.de/cgit/barebox/commit/?id=d540a886bd78 (link may not be stable)
[11/13] bootm: factor out file detection into helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=9be5e29c7262 (link may not be stable)
[12/13] efi: payload: bootm: add dry run support
        https://git.pengutronix.de/cgit/barebox/commit/?id=12cfd35f6619 (link may not be stable)
[13/13] efi: initrd: make efi_initrd_register initrd pointer param const
        https://git.pengutronix.de/cgit/barebox/commit/?id=f4d060f1b563 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



