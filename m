Delivery-date: Mon, 21 Oct 2024 10:56:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2oD7-0070Pt-15
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 10:56:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2oD6-0000G5-Oj
	for lore@pengutronix.de; Mon, 21 Oct 2024 10:56:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=138fDpA3xghjo2fXY/yEuUigMbd2h0cU2PnhEUfYZsg=; b=SMBT3gFkfbc5+p4lFBJ2xrKxgA
	FqJYggv2XV+YDWX5EaA+Z31se3KkLT+vzqnP6BAvsDm5O76Qmzl6LCT7oLru2ks5/IuqrUCddWWu0
	2jZgQODnSRsXzyhvIu9KJOAFx9ccwOq7XWMsPySJAMH5d0+WCabcrY0DA7Vk/+CinMuWT/Tsk0QLy
	EYyyjEwRs012ZZ9iFXc3a2qFyuoynEG4PTxWc6o2IHwlKOybkjwcEC/WE940oYTJZpLNp2IBJWspO
	AluyX4w6QSzREG6PVrWt4GerCKbM6p+0vqmeVeNI/7AAkqMeuaNyIO/Ad/9SGy2DfNZnYudZDxm/L
	pDVZO/ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oCd-00000006dGM-0OS8;
	Mon, 21 Oct 2024 08:55:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oCa-00000006dFg-0bZu
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 08:55:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2oCY-0000CA-31; Mon, 21 Oct 2024 10:55:46 +0200
Message-ID: <e0b3f2b7-d023-4dfd-b04b-f6c93247baab@pengutronix.de>
Date: Mon, 21 Oct 2024 10:55:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-8-0980697b6f66@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241021-arm-layerscape-tfa-v1-8-0980697b6f66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_015548_219403_D6A54939 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 8/9] ARM: Layerscape: LS1046a: remove PPA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 21.10.24 09:21, Sascha Hauer wrote:
> Both LS1046a boards supported by barebox have been switched to TF-A, so
> drop no longer used PPA support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-layerscape/Kconfig     |  12 ---
>  arch/arm/mach-layerscape/Makefile    |   1 -
>  arch/arm/mach-layerscape/ppa-entry.S |  32 --------
>  arch/arm/mach-layerscape/ppa.c       | 147 -----------------------------------
>  firmware/Makefile                    |   1 -
>  include/mach/layerscape/layerscape.h |  10 ---

generate-dummy-fw.sh still has a firmware/ppa-ls1046a.bin
reference.

> -static int of_psci_do_fixup(struct device_node *root, void *unused)
> -{
> -	unsigned long psci_version;
> -	struct device_node *np;
> -	struct arm_smccc_res res = {};
> -
> -	arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, 0, 0, 0, 0, &res);
> -	psci_version = res.a0;
> -
> -	for_each_compatible_node_from(np, root, NULL, "fsl,sec-v4.0-job-ring") {

The TF-A doesn't expect one of the job rings to be for its own use?

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


