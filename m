Delivery-date: Fri, 16 May 2025 21:28:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uG0jh-006H77-1M
	for lore@lore.pengutronix.de;
	Fri, 16 May 2025 21:28:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uG0jg-00086o-Rj
	for lore@pengutronix.de; Fri, 16 May 2025 21:28:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VvfGtXaiHoBuwdLDvCTA6riO1fHK8tgH6rpOIiaAqlA=; b=fVpwovt8/pENn13GKE6Fofx12g
	yyHemzWBXE8pqYwyc7U7K5nutR1jP7jJv1T7V51VMGcrFv+bhNkL46J77XbZvlCpk+ExzfL3e9pHC
	L1FYBtwnNqbOJG+rtvtP5zioEueY/0OrLrS7WGm7uH7Z1K4U1QU4gpYT0KN2cMjLkdPpzxGlrGh+l
	JL3/vZuev3qLecE2ykZ20y/JVsuCIiu1TI5mlHkTUkdeF69HRcIZs/DPo4nW8xim1D0V9fn3GTw9J
	oQ6LbgPh7FBT6VxC7c91L1TLhOssK1goD/DhGgSKebRsjem65gMxFhE49xneyTGdSPNBy0GVyUVs4
	Q54v/xNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG0j7-00000004S2v-1Uf0;
	Fri, 16 May 2025 19:28:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG0j3-00000004S0l-2beU
	for barebox@lists.infradead.org;
	Fri, 16 May 2025 19:28:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uG0iz-0007gZ-8Z; Fri, 16 May 2025 21:28:05 +0200
Message-ID: <9babe122-45a3-4843-a2bb-178979164339@pengutronix.de>
Date: Fri, 16 May 2025 21:28:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Roith <johannes@gnu-linux.rocks>,
 Michael Graichen <michael.graichen@hotmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <DB7PR02MB43321CDF6386A16A725DC131ABF40@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <845b2228ae93d93e331556bb983f19cf67a025b8.camel@pengutronix.de>
 <DB7PR02MB4332F692229D1F189B11EC49ABF00@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <aCeMAO9MFhGJBStt@Precision-T3610>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aCeMAO9MFhGJBStt@Precision-T3610>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_122809_659884_CD1D2E89 
X-CRM114-Status: GOOD (  15.09  )
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
Subject: Re: Barebox for Zedboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Johannes,

On 16.05.25 21:03, Johannes Roith wrote:
> The big advantage of using such an approach would be support for similar
> devices (e.g. the UltraScale+ ZYNQMP devices) could be added easily by
> porting the Linux drivers to barebox.

I can't comment on the Zynq, but for ZynqMP, there is already a FPGA manager
driver in drivers/firmware/zynqmp-fpga.c. FPGA programming is also supported
for Altera SoCFPGA and are exposed over the firmware API.

Loading OF overlays can already load firmware that way.

Cheers,
Ahmad

>> That said I wouldn't mind helping with getting the missing bits added
>> by reviewing/testing patches. :)
>>
>> Regards,
>> Lucas
>>
>> Hey Lucas, 
>>
>> "That said I wouldn't mind helping with getting the missing bits added
>> by reviewing/testing patches. :)"
>>
>> Did you made any attempts to do this?
>>
>> As far as I can see there are basicly two ways.  
>> The "Xilinx-Way" by packing everything in Boot.bin.
>> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841976/Prepare+boot+image
>> and the "Linux-Way"
>> https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/18841645/Solution+Zynq+PL+Programming+With+FPGA+Manager
>> using the FPGA manager 
>> https://elixir.bootlin.com/linux/latest/source/drivers/fpga/zynq-fpga.c
>>
>> Best regards
>> Michael
>>
>>
>>  
>>
>>
>>
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
> 
> Best regards,
> Johannes
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


