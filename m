Delivery-date: Tue, 06 Jan 2026 09:02:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd21E-001otw-39
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 09:02:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd21E-0008RT-EQ
	for lore@pengutronix.de; Tue, 06 Jan 2026 09:02:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c0U2nMHfnA3cljLtNM8z1D4Kk8kDM7fxxOJrU6dFxeY=; b=VNGPjwa/WYmbVtzs/fLGi93lWZ
	CpIOAqSbl0rNfP7dCejMHSHVBtQBqa4vgShR7TgGOmwvnmf74SYKAVGjkNt73OYJK609zGZk+LpZn
	N44mJKZ7j/bxYJscLd+15Sa1aVHz70kcXK+kGf+0R7KSbmbXlJohxVMEqXp7YX63ZEbIrU8WYit4B
	Rtv8L3zB9qLBObhUuOhvlWgzIFd2spINipmcpbJA6OME+jPPakslBAf2Jt26C7QGbSnTCC2WOD9MJ
	bCywdOe15cbWHYyrbtK/GhP4vhaHJC2zwpjqRFETcI0MjvYSbO1hvU8G4W6nnggi/4se8TwFUa6Du
	KHvF95Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd20d-0000000CaJ3-2drW;
	Tue, 06 Jan 2026 08:01:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd20V-0000000CaIc-3iKQ
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 08:01:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vd20U-0008Km-DQ; Tue, 06 Jan 2026 09:01:34 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd20R-009JM5-1m;
	Tue, 06 Jan 2026 09:01:31 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd20R-00EGmm-1K;
	Tue, 06 Jan 2026 09:01:31 +0100
Date: Tue, 6 Jan 2026 09:01:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: zhengxiaojun <zheng.xiaojun@foxmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <aVzBW_WDMIKKM84I@pengutronix.de>
References: <tencent_A811AA5F980ABDFC4D4DF8D73132B8D22506@qq.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <tencent_A811AA5F980ABDFC4D4DF8D73132B8D22506@qq.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_000141_567461_3F54AE0B 
X-CRM114-Status: GOOD (  15.99  )
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
Subject: Re: The non-removable option causes an MMC initialization error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Tue, Jan 06, 2026 at 03:37:03PM +0800, zhengxiaojun wrote:
> Hi,
>    The macro MMC_CAP_NONREMOVABLE defines the same value as
> MMC_CAP_1_8V_DDR, which is causing the error. I've noticed that the
> MMC_CAPS_* values are quite different from those in Linux, I'm wondering
> which value for MMC_CAP_NONREMOVABLE would be appropriate, or if we should
> ensure these values consistent with Linux.

Being consistent to Linux helps avoiding a similar issue later. I'd say
we should make two patches, one for master just redefining MMC_CAP_1_8V_DDR
to a non conflicting value and another one for next for making them
consistent to Linux.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


