Delivery-date: Wed, 10 Apr 2024 13:52:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruWUy-005zdc-1P
	for lore@lore.pengutronix.de;
	Wed, 10 Apr 2024 13:52:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruWUx-00067J-RY
	for lore@pengutronix.de; Wed, 10 Apr 2024 13:52:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yr0zmSN85XCpcIT08Xh6lFRs+OjyHml2NT4C4jd0bGY=; b=jIKLwLD5B0YJbZZrYsB1w0XEkN
	n09tuDkkwz5SRT1PmNIcQRqlyhvZVyy7IJaIvrkMEP7QmTpWb94O1RrWpSzy+NzSD+3oq7G85vdh9
	9t8QN2UEtmkPz/WX1zNCA9XgSdhjGVGiee2moqIKud5wLKdKdh9GWLnkIGRarN1eVJYU25K2Wm67n
	oUQGX174rUhy4bmGCe9Av2aqgNJiW27REy8LJoWmO9ecjhbehVOUVE+a9iciGm8euCK3NAx0O6vZX
	JF8NXUIpSODN/lW/eIgJjgLF4nW+2G3siAAjHf8DJY7Q3oeEGUDhAIA2N7HHSdZyeDRkCxJDT4l1C
	FTpWOYZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruWUL-00000006jTd-3lWU;
	Wed, 10 Apr 2024 11:51:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruWUH-00000006jQd-04cv
	for barebox@lists.infradead.org;
	Wed, 10 Apr 2024 11:51:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ruWUE-0005I0-H3; Wed, 10 Apr 2024 13:51:30 +0200
Message-ID: <9010811a-0bf2-45bb-8efa-7ad27f60f565@pengutronix.de>
Date: Wed, 10 Apr 2024 13:51:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jonas Richardsen <jonasrichardsen@emlix.com>, barebox@lists.infradead.org
References: <3e01cb35-858c-4aef-b0c6-564cc890086d@emlix.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <3e01cb35-858c-4aef-b0c6-564cc890086d@emlix.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_045133_106501_FF2906A3 
X-CRM114-Status: GOOD (  16.50  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: raspi: should vc fixups update properties of existing nodes?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jonas,

On 10.04.24 11:59, Jonas Richardsen wrote:
> Hi,
> 
> the function `rpi_vc_fdt_parse` in arch/arm/boards/raspberry-pi/rpi-common.c registers multiple fixups that take over nodes from the video core device tree. These fixups make use of the `of_copy_property` function to copy the properties of the respective node. In the case of already existing nodes (and properties), this function duplicates the properties instead of updating them.

Ouch.

> If the intention is to not override existing properties, one should probably check for the existence of each property before copying to avoid kernel warnings and misconfiguration due to duplicate properties.

I think that's the way to go. of_copy_property should maybe return
PTR_ERR(-EEXIST) if the property already exists. Users are free to
use of_delete_property_by_name beforehand if they want to remove
the content.

> If existing properties are supposed to be updated, this could be achieved by switching to `of_set_property` (or something similar). Note that this notion of overriding properties also exists in video core, see https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/broadcom/bcm2711.dtsi?h=v6.8#n412 for an example.

I think the default should be not to override and exceptions should
be done explicitly.

> I would be glad to submit a patch for either case.

That would be great!

Thanks,
Ahmad

> 
> Regards,
> 
> Jonas
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



