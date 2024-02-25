Delivery-date: Sun, 25 Feb 2024 08:50:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1re9H1-006AI2-0s
	for lore@lore.pengutronix.de;
	Sun, 25 Feb 2024 08:50:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1re9H0-0002k9-NM
	for lore@pengutronix.de; Sun, 25 Feb 2024 08:50:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EnrpDSWmh0OSu0WTNG7dQRw95qxbO+zNVyORoLnDUAI=; b=BAhMpSD5v1pWwIT7hHOifhs1ab
	tOqT9l8AK3icJ8qHF/Hp3J0zlOzLE6DdkE6ubYhiVYCyzU/5qcPdunygo1y2UuetSCqReSqjc90vE
	xKFb/8lClNeBzUkk7V4TMUbLgbJ2bUw2gTavRxEnYDJTDiwgQxC3v847s8a7ORFrBM824O+y2vnpn
	o+XR/LG1dlkOn3hngj8LOAztJgZXOHAp6rdEj4JVEqoQ64+XcAvNlYkD5QkgBSYqTwS1myryWy1Mw
	/dYAdex/KlXL2o8v8iTuLs7FPWwvOqnvR9vJsNepUYRg7R5KPF59S4ouyqyGF01MDEsa+jo0mXCrm
	BM+29mAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1re9GG-0000000Edft-1TN1;
	Sun, 25 Feb 2024 07:49:24 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1re9GA-0000000EdfJ-35fq
	for barebox@lists.infradead.org;
	Sun, 25 Feb 2024 07:49:23 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 20D5F60002;
	Sun, 25 Feb 2024 07:48:53 +0000 (UTC)
Received: from peko by dell.be.48ers.dk with local (Exim 4.96)
	(envelope-from <peter@korsgaard.com>)
	id 1re9Fl-00E1zo-0q;
	Sun, 25 Feb 2024 08:48:53 +0100
From: Peter Korsgaard <peter@korsgaard.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: buildroot@buildroot.org,  barebox@lists.infradead.org
References: <20240219210628.407423-1-a.fatoum@pengutronix.de>
Date: Sun, 25 Feb 2024 08:48:53 +0100
In-Reply-To: <20240219210628.407423-1-a.fatoum@pengutronix.de> (Ahmad Fatoum's
	message of "Mon, 19 Feb 2024 22:06:28 +0100")
Message-ID: <871q91t256.fsf@48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-GND-Sasl: peter@korsgaard.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240224_234921_005334_40F53E95 
X-CRM114-Status: GOOD (  15.50  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] boot/barebox: install all barebox images if none were
 specified
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

>>>>> "Ahmad" == Ahmad Fatoum <a.fatoum@pengutronix.de> writes:

 > When selecting barebox in menuconfig, BR2_TARGET_BAREBOX_IMAGE_FILE will
 > be empty by default, which causes Buildroot to install whatever the
 > barebox-flash-image symlink points at for barebox versions >= v2012.10.0.

 > This is an outdated fallback, because barebox-flash-image is only valid
 > when the barebox build produces a single binary. Virtually all new
 > defconfigs added in the last couple of years are multiconfig
 > (CONFIG_PBL_IMAGE=y) however, meaning that a single imx_v7_defconfig
 > or multi_v8_defconfig will produce many images that support different
 > boards or even platforms.

 > As there is no single valid target for barebox-flash-image to point at
 > in this case, this symlink will point at a non-existing
 > 'multi-image-build' to alert the user to this fact.

 > As replacement for barebox-flash-image, barebox commit 550cf79c216a
 > ("Make list of flash images and fix link all single image cases") first
 > released with v2015.12.0 creates a barebox-flash-images file with a list
 > of all images built by barebox.

 > Have buildroot use that file as a fallback before trying
 > barebox-flash-image to have a fallback that works for any recent barebox
 > defconfig as well.

 > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Committed, thanks.

-- 
Bye, Peter Korsgaard


