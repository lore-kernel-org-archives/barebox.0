Delivery-date: Tue, 10 Feb 2026 10:03:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpjeS-0007NN-2o
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 10:03:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpjeO-0008RC-JI
	for lore@pengutronix.de; Tue, 10 Feb 2026 10:03:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uooj7lYYM4PVMuTUHrFzvdPc5YZHGA2jQRTglkJmars=; b=kXVEKqwDf4yR+adwo9CxbXzR5a
	BAQdm1pF7a0otiPVmXeuEnJFgPdsyAZbgQXFdxDC5RFV44gfhHSXCWNZkjWuPnjgbMPrFSW6Zt8pW
	u5n+SOJFdExxXqH0rC8Ur02H/34F8SSo7XJ+ef+jUxpsFtqQrvTlHNTr2FgczKfi+9m3BKv9xfH0a
	1OQ2xboD2NG+QC8QomrtoxNAIoOkIAzVy6WMNBVQ5g1IXtaMIdTMlcD4QIJnOyxdnamNXAGCAouCC
	k3iv8ldZR9fAzJO8o3L2XF7hhlxTcnUYO5oPoAuBkRooxuygdhxonnN3BYIh2GhkR44r4X2aeyIlF
	4IQZiZ8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpjdY-0000000Gitn-3hmS;
	Tue, 10 Feb 2026 09:02:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpjdR-0000000Giso-23Ov
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 09:02:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjdP-00084F-RH; Tue, 10 Feb 2026 10:02:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjdP-0003Hg-0A;
	Tue, 10 Feb 2026 10:02:15 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjdP-00000003buW-2VuU;
	Tue, 10 Feb 2026 10:02:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
Message-Id: <177071413559.860699.8864706695055249671.b4-ty@pengutronix.de>
Date: Tue, 10 Feb 2026 10:02:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_010217_530672_58768C0E 
X-CRM114-Status: UNSURE (   9.78  )
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
Subject: Re: (subset) [PATCH 00/15] bootm: prepare loadable abstraction
 rework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 27 Jan 2026 09:39:10 +0100, Ahmad Fatoum wrote:
> Despite previous work to move out uImage and FIT-specific parts out of
> the bootm code, common/boot.c still has a number of places where code
> checks if it's a FIT image, a uImage or a plain file.
> 
> This series lays the groundwork for a second series that will:
> - Introduce the concept of a loadable for deferred boot component loading
> - Switch all code to generate loadables once at the start and then
>   extracting them later on, irrespective of their origin
> - Implement a more robust and powerful override mechanim, where
>   individual loadables can be switched against each other
> 
> [...]

Applied, thanks!

[01/15] FIT: implement fit_count_images
        (no commit info)
[02/15] FIT: add image index argument to fit_open_image
        (no commit info)
[03/15] resource: implement gap-aware lookup_region
        (no commit info)
[05/15] bootm: store separate image_type and kernel_type
        (no commit info)
[06/15] bootm: cache os_file for appendroot purposes
        (no commit info)
[07/15] bootm: fit: move length calculation into fit_open
        (no commit info)
[08/15] libfile: factor out zero-page resistant read_file as __read_full_anywhere
        (no commit info)
[10/15] bootm: rename image_data::os/initrd with _uimage suffix
        (no commit info)
[11/15] uimage: record original file name in uimage_handle
        (no commit info)
[12/15] bootm: factor out file detection into helper
        (no commit info)
[13/15] efi: payload: bootm: add dry run support
        (no commit info)
[14/15] efi: payload: bootm: fix memory corruption on initrd load error
        https://git.pengutronix.de/cgit/barebox/commit/?id=57468d3c67f9 (link may not be stable)
[15/15] efi: initrd: make efi_initrd_register initrd pointer param const
        (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



