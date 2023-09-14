Delivery-date: Thu, 14 Sep 2023 10:00:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghGu-00Elwv-2B
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 10:00:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qghGq-0006YI-Fh
	for lore@pengutronix.de; Thu, 14 Sep 2023 10:00:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=10PLe6nq+0yUFtd6qusVe/4bHStVt+2OuMOksiCpgMU=; b=t6iQJlt4oRVBdHQ6gfG0SPe0mt
	FMs3cdAcWk1qQYO7xrMX/T9HMGYcYwp0GDrb2+fnwDqEfhjq2g51l6+ppKl5KDJY42BpDPeVdFa5t
	4Nj6mXvGKuUdkUKuW6xANzezDca0LgenxkELQzBSy+6QnH9ZeZHTZ0hLIRlbK5G9roARnX/U1Kude
	elkBLha0DchQuH38ArrkxWdgrVOepwm8xweys4Um+d8X63Vz2cbptAyQmoK7q7oZ2oRr6cXVvl7aQ
	BIFNY0QX8UMJ4IxIaYug/uyD0TPa8tmVCmRSkTH2qlvLbVPP6/YvrR+tiTLVQ6sjbBLga2nlNQoVi
	+8MlHq5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qghFl-007dVa-13;
	Thu, 14 Sep 2023 07:59:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qghFi-007dV0-2E
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 07:59:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qghFh-0005tu-An; Thu, 14 Sep 2023 09:59:05 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qghFg-006FeC-Ui; Thu, 14 Sep 2023 09:59:04 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qghFg-006f0t-SN; Thu, 14 Sep 2023 09:59:04 +0200
Date: Thu, 14 Sep 2023 09:59:04 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230914075904.GK637806@pengutronix.de>
References: <20230913132456.2211919-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913132456.2211919-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_005906_728513_48C8BDFA 
X-CRM114-Status: GOOD (  19.37  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] firmware-zynqmp: add accessors for ggs/pggs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 13, 2023 at 03:24:53PM +0200, Ahmad Fatoum wrote:
> The ZynqMP features eight 32-bit global storage registers that are
> available for general use. Four of them have their values preserved
> after software reboots and four are cleared on software reboots.
> 
> In Linux they are accessed as:
> 
>   /sys/firmware/zynqmp/ggs[0-4]
>   /sys/firmware/zynqmp/pggs[0-4]
> 
> Allow reading and writing these parameters from barebox board code
> via exported functions and from barebox shell as well via device
> parameters:
> 
>   echo ${firmware:zynqmp-firmware.of.ggs0}
>   firmware:zynqmp-firmware.of.pggs0=4
> 
> Because the name is a bit unwieldy, use the device alias support added
> in this series to make the variables more compact:
> 
>   echo ${zynqmp_fw.ggs0}
>   zynqmp_fw.pggs0=4
> 
> Ahmad Fatoum (3):
>   driver: add support for device aliases
>   firmware-zynqmp: export functions for setting GGS/PGGS
>   firmware-zynqmp: add device parameters for ggs/pggs

Applied, thanks

Sascha

> 
>  arch/arm/mach-zynqmp/firmware-zynqmp.c | 133 +++++++++++++++++++++++++
>  common/complete.c                      |  14 ++-
>  drivers/base/driver.c                  |  46 +++++++++
>  include/driver.h                       |   7 ++
>  include/mach/zynqmp/firmware-zynqmp.h  |  33 +++++-
>  5 files changed, 222 insertions(+), 11 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


