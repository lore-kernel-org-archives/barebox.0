Delivery-date: Mon, 24 Oct 2022 11:05:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omtOm-000TCV-LI
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 11:05:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omtOl-0002Zm-Eg
	for lore@pengutronix.de; Mon, 24 Oct 2022 11:05:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mctW6GY77+jlwoR52QlxJBOS7cWvqRfSD8l+bCQFlZ4=; b=kqIRupeDPqfJeFIAbrCp53K/78
	uHKwlf3mXFtIfsqZR6oACDrEIByBElLZt23wAQc/XPV5pEYMzO/VLf7ijddQOThOfxEdeBoE2QUQu
	seBjqqhovZVOqBp+mR0iFfqPWo9/PRDzRpBLoMfwJTYTfihDQTfPZ/aLjjFWbPuxEqbA4obOJIKq1
	dSWC3h1I/qQU+s1r2JQSUmr9o6qpwJorhkbCyb/MjWNL1/mDcVELj65Yw0KVnBwpruguOnMzMn70B
	5fSNWdmpPrC2GnSh+gfZz5EfJWvnQhsW217eOUZleCoCbvisa0PHlUJ/h0EACJejdr81j+ts9bajU
	ApaSnCZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtNX-000HEm-KI; Mon, 24 Oct 2022 09:04:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtNT-000HEM-PJ
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 09:04:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omtNS-0002Ly-H5; Mon, 24 Oct 2022 11:04:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omtNR-000802-Ff; Mon, 24 Oct 2022 11:04:09 +0200
Date: Mon, 24 Oct 2022 11:04:09 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221024090409.GL6702@pengutronix.de>
References: <20221019135322.2283270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221019135322.2283270-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_020411_835927_08DADB80 
X-CRM114-Status: GOOD (  17.63  )
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
Subject: Re: [PATCH master v2] Kbuild: disable ARM64 pointer authentication
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 19, 2022 at 03:53:22PM +0200, Ahmad Fatoum wrote:
> The aarch64 cross-compiler built with Yocto's kirkstone release
> configures -mbranch-protection=standard as default.
> 
> The resulting PACIASP/AUTIASP instructions are interpreted as NOPs by
> existing CPUs, but they increase image size and misalign the barebox
> header in ENTRY_FUNCTION(). Also on ARMv8.3+, where they serve a
> purpose, we wouldn't benefit from them as we don't setup any pointer
> authentication keys. Thus disable it.
> 
> The misaligned barebox header caused is_barebox_arm_head to fail,
> breaking all code that verified barebox' header, like i.MX8MM
> imx-usb-loader barebox-side support and barebox_update for
> some ARM64 SoCs without a SoC-specific header.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> This is a workaround. ENTRY_FUNCTION() should be rewritten for ARM64,
> so we don't expect function prologue to be exactly two bytes long.
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> v1 -> v2:
>   - revised commit message after understanding ramification better.
> ---
>  Makefile | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


