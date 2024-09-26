Delivery-date: Thu, 26 Sep 2024 07:49:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sthND-002syP-2a
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 07:49:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sthNE-0000js-BE
	for lore@pengutronix.de; Thu, 26 Sep 2024 07:49:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a+SGnKoa7WTo4ElPIWWtnWLOJvDedS93AUm1Tpc0YDo=; b=MdV3YboBuFj0hy38T4i7x0o2As
	+uokqGW9bCbkrfuMk3CExLqJsdfyHZjd0qkVv2/+uksZQpHNByi643PHJJO00kv//MWMYv/uODDW3
	KqUsCFCCEWecDDVraBfEWDfS6YL9klq/nzoQlCXBPx3f9JdsAe3QjvDivTMukURg8GwWKfnGrInEY
	/QdyYKA5DrjdK1KYKPhgaBaFjKFl3J5s1ZHj1yKgjNB2YZVTuz4ffRmL1IWHXf39DEBLVPIp9AOYD
	qNb07d72P76ZBXqXJQVte/8wUTC/hxolM3QcpUA7290hQ0+dPO0ryJjKZCUpo9INoujEmgtFX87kn
	1MdepACA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sthMh-00000007GAC-3OFN;
	Thu, 26 Sep 2024 05:48:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sthMe-00000007G9p-3WNI
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 05:48:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sthMd-0000RP-HN; Thu, 26 Sep 2024 07:48:31 +0200
Message-ID: <9029ceab-9417-4340-8304-25500a1f4b64@pengutronix.de>
Date: Thu, 26 Sep 2024 07:48:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
 <20240925-arm-assembly-memmove-v1-10-0d92103658a0@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-arm-assembly-memmove-v1-10-0d92103658a0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_224832_916984_AC7AC179 
X-CRM114-Status: GOOD (  10.23  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/10] ARM: add optimized memmove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 25.09.24 15:55, Sascha Hauer wrote:
> Until now there has been no assembler optimized version of memmove() for
> ARM. Add this from Linux for both ARM32 and ARM64. This also updates
> memcpy() for ARM64 from Linux.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Small nitpick below:

>  /* SPDX-License-Identifier: GPL-2.0-only */
> -/* SPDX-FileCopyrightText: 2013 ARM Ltd. */
> -/* SPDX-FileCopyrightText: 2013 Linaro */

Can you restore the hunks related to SPDX-FileCopyrightText again?

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


