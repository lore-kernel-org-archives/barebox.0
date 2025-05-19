Delivery-date: Mon, 19 May 2025 21:57:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uH6cZ-000bkV-2z
	for lore@lore.pengutronix.de;
	Mon, 19 May 2025 21:57:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uH6cZ-0005vz-DC
	for lore@pengutronix.de; Mon, 19 May 2025 21:57:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AQIXfkuICY8RsnRv00NH48jVLminvn1On8XYHKiMY9A=; b=t2JACitUzFS42tZP+23SzxH/j+
	yBPf3aiWKkZ9dQQB5H/KC1FeOiNaBHRwgLUjHEqWZEaVdtSuPxLZCkP5KCfeZ7IaVZV8jvdjtbHvu
	pk+curbNevcgIdjinNMR+jyjLmIUnTOUd8/Zyb2Hagpduzuf9V8lY9OPbaQk8orL4fuUFeSCQ7wgI
	1CWIIHF4inKn08SYhrHogfY+dDilYFBnzZCJLdRpRnWaMrRbFiVVPkZemyaTHxdRjwmVCeyO+C6W6
	zasz/Tm1Mmm3s8MmwxGEIqbPLRRlyQ5oAZZ4dN2S1ESmBQ6NdGksLyOr9oRUZx1uEAuBL9958O5Dr
	jfDhgX3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH6cB-0000000AL91-09QK;
	Mon, 19 May 2025 19:57:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH6b3-0000000AJVF-2ea4
	for barebox@lists.infradead.org;
	Mon, 19 May 2025 19:56:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uH6b0-0005Ci-FL; Mon, 19 May 2025 21:56:22 +0200
Message-ID: <3be696b6-944c-4524-ad26-bf4c23484331@barebox.org>
Date: Mon, 19 May 2025 21:56:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Roith <johannes@gnu-linux.rocks>,
 Michael Graichen <michael.graichen@hotmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
 <DB7PR02MB4332F692229D1F189B11EC49ABF00@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <aCeMAO9MFhGJBStt@Precision-T3610>
 <9babe122-45a3-4843-a2bb-178979164339@pengutronix.de>
 <aCoTbGjxgymNPSQF@Precision-T3610>
 <VI1PR02MB4429AA325D9A08D898319A40AB9CA@VI1PR02MB4429.eurprd02.prod.outlook.com>
 <aCt7Z5Dw3QhPgTNg@InfinityCube>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <aCt7Z5Dw3QhPgTNg@InfinityCube>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_125625_915215_1FE47CD3 
X-CRM114-Status: GOOD (  16.20  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Barebox for Zedboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 19.05.25 20:41, Johannes Roith wrote:
> Am Mon, May 19, 2025 at 06:50:23AM +0000 schrieb Michael Graichen:
>>
>> Dear Johannes et al.
>>
>> i'am using
>>
>>
>> for an PS<->PL FIFO.
>> But this is not used within barebox in my case. It's only there because barebox passes it's devicetree to the Linux Kernel. I only do the programming of the FPGA in barebox within my init script by
>>
>> firmwareload -t zynq-fpga-manager /mnt/boot/design_1_wrapper.bit
>>
>> I will send the latest version of my zynq-fpga-manager to the mailing list soon. 
>> Please feel free to pick it up and finish my work since i did not do it since 2020.

Thanks for sharing, Michael!

Cheers,
Ahmad

>>
>> Best Regards, 
>> Michael
>>
>>
> Dear Michael,
> 
> thanks for sharing. The patch worked on my board just fine after
> increasing the timeouts a little bit :)
> 
> If you don't mind I can take care of the patches and incoperate the
> feedback from the barebox maintainer and try to bring them upstream.
> 
> Best regards,
> Johannes
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


