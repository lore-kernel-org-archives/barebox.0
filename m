Delivery-date: Thu, 13 Mar 2025 09:35:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tse2W-00DUgx-37
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 09:35:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tse2V-0007bE-QH
	for lore@pengutronix.de; Thu, 13 Mar 2025 09:35:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:Cc:To:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5sus/GX7E9j3HiiTuXs0UmRHZaMZps1dyT/Km76kctw=; b=KQ1gEEV4fDpDpn7T1lmORolcq/
	paDj+Zucmam3EMTH5u8xl9LgbmSaBEAWQs62fIIMU3uJAAbv4y7sZz4mI4vYcoEe5FiSQUfBAZ8qq
	urRn8P9VWC1pImfl8y5LCYnANpctk1E22C18mZxpYDTCPg3AEG+YUZh/0XR2h2lkOeE30e2jMqpTX
	pBxbmB9QVtFZ8XWuGpAzy2Q8GzN0X65ASMH/AW7SoOz5/ySqZ4a2fBo0J/CgpiMn7THoKN4jheBuO
	2hDqlrqrFeEbaVWUVG1xHgdCOr3qsNOeu+t6XOtjUIBnOuf67p13xW4ywMPL7BWSh6TuKRn9nfwpP
	dRDVIIGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tse22-0000000AYuN-1Vee;
	Thu, 13 Mar 2025 08:35:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tse0N-0000000AYgr-1daH
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 08:33:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tse0B-00077f-6N; Thu, 13 Mar 2025 09:33:15 +0100
Message-ID: <7ba2e429-113d-4e1c-968b-ffbe65bcf9f4@pengutronix.de>
Date: Thu, 13 Mar 2025 09:33:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_013327_432152_584BF9B6 
X-CRM114-Status: GOOD (  10.95  )
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
Subject: [BUG] drm/rockchip: vop2: uninitialized variables passed to ilog2 and
 writel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Running clang-analyzer[1] on the VOP2 driver in barebox[2], which was ported
from Linux reports that following variables:

  dclk_out_div, if_pixclk_div, if_dclk_div

defined in rk3588_set_intf_mux() and passed to rk3588_calc_cru_cfg()
are given as uninitialized arguments to ilog2() and in some cases even
used afterwards unconditionally (outside of error cases):

  - dclk_out_div: is not initialized in the HDMI, eDP and DPI cases,
    but is passed to ilog2 unconditionally and the result is written
    into the RK3588_VP_CLK_CTRL register

  - if_pixclk_div: is not initialized in the DP and DPI cases,
    but is passed to ilog2 unconditionally.
    However, the result seems unused.

  - if_clk_div: is not initialized in the DP, MIPI and DPI cases,
    but is passed to ilog2 unconditionally.
    However, the result seems unused.

I checked against Linux v6.14-rc6.

I am not fully sure what a suitable default value would be for the first
case, which is why I report this without a patch.

[1]: https://lore.kernel.org/barebox/20250313080950.3222757-1-a.fatoum@pengutronix.de/T/#m78ca98c01b73ef7fe3316e73ce62cfe4b2c111d0
[2]: https://github.com/barebox/barebox/blob/v2025.02.0/drivers/video/rockchip/rockchip_drm_vop2.c

Thanks,
Ahmad
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



