Delivery-date: Tue, 11 Apr 2023 14:36:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmDEw-00HX5l-Qy
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 14:36:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmDEw-0000hA-Ic
	for lore@pengutronix.de; Tue, 11 Apr 2023 14:36:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QbxfP2MGY/zkVPf/QVJl7xyzI9AqWLfHoO4tcOHadyo=; b=gPyCxSEmtynQJV0ByG2Rl4/BNg
	NhAAI3E/1W61qBPx0jEYB8gmn/ZQbXxQZt+M6EwRin+ywUAgKWihA8YsNMWg3zXQnPWRKvVKsorU4
	rt09AUWhuviuRl8Ng7OysYJKzLjAZTNEYQCIyf44xc8IXgWTiOSa48mZt0QHxg/7jceo9S6PNuTe9
	l5sM0EgiN9+rkDdcQ/t8BoDw2ndIaczHh5ayvjXiOpanfdc0SNu3+uzgoWbASrP5jh1EWkEZ3fDQv
	o96sK4fj5ou2gORc5jeT+MtLhejdB5VROd2vDKQkCB0QFFPLk8VNSPwwAeVDQPkgyS57er5dgq73Q
	nxExEelg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDDp-00HZCG-2v;
	Tue, 11 Apr 2023 12:35:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDDl-00HZBR-2y
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 12:35:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmDDk-0000R8-Hk; Tue, 11 Apr 2023 14:35:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmDDk-00005z-BK; Tue, 11 Apr 2023 14:35:36 +0200
Date: Tue, 11 Apr 2023 14:35:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20230411123536.GL19113@pengutronix.de>
References: <20230313144220.1689252-1-a.fatoum@pengutronix.de>
 <a4ce283b-8b12-3a42-71cf-ad2acc99db15@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a4ce283b-8b12-3a42-71cf-ad2acc99db15@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_053537_954624_BCC71565 
X-CRM114-Status: GOOD (  29.02  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/3] boards: qemu-virt: support passing in FIT public
 key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 11, 2023 at 12:00:18PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> please drop 
> 
>   a9d3244883d7 ("boards: qemu-virt: apply overlay at postcore_initcall level")
>   e664ca8f7c35 ("boards: qemu-virt: compile overlay as such")
>   224b5ef1da4c ("boards: qemu-virt: support passing in FIT public key")
> 
> again. I had been testing with ARM qemu_virt64_defconfig, but now that
> I tested on RISC-V, I notice that non-qemu-virt platforms also execute
> the initcall when they shouldn't and that DTC_CPP_FLAGS wasn't defined
> for overlays leading to broken state there.
> 
> I'll send a revised version, but please drop the current one for now.

Ok, did that.

Sascha

> 
> Thanks,
> Ahmad
> 
> On 13.03.23 15:42, Ahmad Fatoum wrote:
> > FIT public key is usually passed in via board DT. Usual way to use
> > barebox with QEMU Virt however is to use DT supplied by Qemu and apply
> > overlay to it. mkimage doesn't generate overlay DTB though. To make
> > barbebox Qemu Virt behave like other boards, let's define a dummy DT
> > that includes CONFIG_BOOTM_FITIMAGE_PUBKEY, which is merged with the
> > barebox live device tree.
> > 
> > This replaces v2 of the series available in next and fixes the
> > regressions I introduced for deep-probe systems that ensure probe in
> > other devices.
> > 
> > I dropped Jan's Tested-by, because the differences warrant it, but
> > I tested locally that a RSA key was registered as before.
> > 
> > v2 was here:
> > https://lore.barebox.org/barebox/20230210165353.3601175-1-a.fatoum@pengutronix.de/
> > 
> > v2 -> v3:
> >   - drop "support of_ensure_probed for top-level machine device"
> >   - switch from board driver back to initcall
> > 
> > v1 -> v2:
> >   - support of_ensure_probed for top-level machine device
> >   - ensure qemu board driver is probed at postcore
> > 
> > Ahmad Fatoum (3):
> >   boards: qemu-virt: apply overlay at postcore_initcall level
> >   boards: qemu-virt: compile overlay as such
> >   boards: qemu-virt: support passing in FIT public key
> > 
> >  common/boards/qemu-virt/Makefile              |  2 +-
> >  common/boards/qemu-virt/board.c               | 52 +++++++++++--------
> >  common/boards/qemu-virt/fitimage-pubkey.dts   |  7 +++
> >  .../{overlay-of-flash.dts => flash.dtso}      |  0
> >  4 files changed, 38 insertions(+), 23 deletions(-)
> >  create mode 100644 common/boards/qemu-virt/fitimage-pubkey.dts
> >  rename common/boards/qemu-virt/{overlay-of-flash.dts => flash.dtso} (100%)
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


