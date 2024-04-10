Delivery-date: Wed, 10 Apr 2024 12:00:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruUke-005sg3-27
	for lore@lore.pengutronix.de;
	Wed, 10 Apr 2024 12:00:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruUka-0004Ct-5F
	for lore@pengutronix.de; Wed, 10 Apr 2024 12:00:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0ua+OvM6D3xspLomMOS/EP5comrJYkCpwIBUklTpS6A=; b=DN51WWbNbbSOlx9rAyVwnh0Q2P
	kW/Xm7FdAj3E8G8Tkkww+ONIE8qeU4EN0B9Pm9qT34MhWzsvTMuvTHOwaCsVijRnqZ6LY/trWO4hr
	PEqLYRWWFKVtvfgRWxf2+cjTYQJYO91ziPhSrUDJcvhlw8eyuXj8Bh4lRPuUeTKmplwDOtWkw93HP
	rLPeOL6eJI1haiNzZ91eKQAhlz9L2wdjhFuRJq3ZeNTVEjwzwYyAj4yYj+q1invbTu95n8GjraGjQ
	MD4nY6mRQyf2tzJ3cvqeJdTTrkcPQopPspACTqnwQaJXl3hi93F5T+WcadJy3n3B7JBx6hVlpGr0M
	OQUZ5axQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruUjr-00000006GiF-41ur;
	Wed, 10 Apr 2024 09:59:31 +0000
Received: from mx1.emlix.com ([178.63.209.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruUjo-00000006Gfb-1MCb
	for barebox@lists.infradead.org;
	Wed, 10 Apr 2024 09:59:30 +0000
Received: from mailer.emlix.com (cr-emlix.sta.goetel.net [81.20.112.87])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.emlix.com (Postfix) with ESMTPS id 1B90F5F9F9
	for <barebox@lists.infradead.org>; Wed, 10 Apr 2024 11:59:22 +0200 (CEST)
Message-ID: <3e01cb35-858c-4aef-b0c6-564cc890086d@emlix.com>
Date: Wed, 10 Apr 2024 11:59:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: barebox@lists.infradead.org
From: Jonas Richardsen <jonasrichardsen@emlix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_025928_606563_036BDA31 
X-CRM114-Status: UNSURE (   7.93  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: raspi: should vc fixups update properties of existing nodes?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

the function `rpi_vc_fdt_parse` in 
arch/arm/boards/raspberry-pi/rpi-common.c registers multiple fixups that 
take over nodes from the video core device tree. These fixups make use 
of the `of_copy_property` function to copy the properties of the 
respective node. In the case of already existing nodes (and properties), 
this function duplicates the properties instead of updating them.

If the intention is to not override existing properties, one should 
probably check for the existence of each property before copying to 
avoid kernel warnings and misconfiguration due to duplicate properties.

If existing properties are supposed to be updated, this could be 
achieved by switching to `of_set_property` (or something similar). Note 
that this notion of overriding properties also exists in video core, see 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/broadcom/bcm2711.dtsi?h=v6.8#n412 
for an example.

I would be glad to submit a patch for either case.

Regards,

Jonas



