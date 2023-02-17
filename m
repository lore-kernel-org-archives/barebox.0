Delivery-date: Fri, 17 Feb 2023 10:00:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSwbc-00A0Da-5T
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 10:00:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSwba-0001Dk-Sv
	for lore@pengutronix.de; Fri, 17 Feb 2023 10:00:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TQjlTUNbrejV/CY1b6Crw+/z2Q/WB6lLP/+07/IW1kA=; b=loLLI1AARwp90EM9oA2GROnbbc
	id8mlWf5fnPDqwsb6ADrvnHrErmAry7UEn3SEY+00J3PD3mhN/8ON1uwVOcn2TvQDQWmNi1YWBQYS
	Ha5XEsZvdFHyn+2Y3sq9PFNXtOpjkF+MYk6naI10vqX0bZwc3wShqA7LHJiBobWAWC2cAynVlNTMN
	U4AJKlpqAgm5on7risOYxdM4QduECfP9DlXnViAxy3bG3IIe4CnTtT653MxiQR4PFKmtM/yO9vTkd
	85s6apaMXKGprB6j6LZWiaktqgK4EcsRRL1O92jYUObLWy/0hnNtY+FuqSuD60vsNQUInYAZq6gnA
	Y4fF5jCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSwa5-00DNoH-Ra; Fri, 17 Feb 2023 08:59:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSwa0-00DNmt-Aa
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 08:58:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pSwZw-0000mh-J8; Fri, 17 Feb 2023 09:58:52 +0100
Message-ID: <99a13ddf-b3ef-d34f-ed1a-b2d9e054bc7b@pengutronix.de>
Date: Fri, 17 Feb 2023 09:58:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: "Klotz, Oliver" <Oliver.Klotz@knorr-bremse.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <VI1PR04MB5007D429B9FDF43D49A6CC99BFA19@VI1PR04MB5007.eurprd04.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <VI1PR04MB5007D429B9FDF43D49A6CC99BFA19@VI1PR04MB5007.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_005856_387551_EC2B0638 
X-CRM114-Status: GOOD (  21.45  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: SPI NOR w25q128 "flash operation timed out"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oliver,

On 17.02.23 09:22, Klotz, Oliver wrote:
> Hello,
> 
> I am using an am335x based SOM with SPI NOR flash.
> Recently the SOM vendor replaced Micron n25q128a13 with Winbond w25q128.
> 
> Winbond works fine with barebox-2016.07.0, but fails with barebox-2023.01.0, barebox-2022.09.0, barebox-2021.07.0.

Can you use git bisect to narrow down the commit that caused the regression?

Cheers,
Ahmad

> 
> Although the device is properly detected as “m25p80 m25p80@00: w25q128 (16384 Kbytes)” – INFO(0xef4018).
> erase and mw commands end in "flash operation timed out".
> 
> I tried w/wo CONFIG_MTD_SPI_NOR_USE_4K_SECTORS and with 24/48MHz SPI clock.
> 
> I have added some trace messages for read_sr() and run “erase /dev/m25p0.bareboxenv” (partition size = 128 Kbytes, sector size = 64 Kbytes)
> 
> read_sr() returns 0x00 0x03 0x03 0x03 0x03 0x03 0x03 and then it is stuck to 0xff and this is causing the timeout.
> 
> When running the same binary on the Micron-SOM then I get 0x00, a bunch of 0x03, 0x00, a bunch of 0x03 and finally 0x00 as expected for erasing 2 sectors.
> 
> 
> Is anyone facing similar issue with w25q128?
> 
> Any idea what might be the problem here?
> 
> 
> Thanks and best Regards
> 
> Oliver Klotz
> 
> 
> Kiepe Electric GmbH
> Firmensitz:  Kiepe-Platz 1, D-40599 Düsseldorf
> Geschäftsführer: Alexander Ketterl
> Registergericht: Düsseldorf HRB 34306
> Zertifiziert: DIN EN ISO 9001:2015
> 
> This transmission is intended solely for the addressee and contains confidential information.
> If you are not the intended recipient, please immediately inform the sender and delete the message and any attachments from your system.
> Furthermore, please do not copy the message or disclose the contents to anyone unless agreed otherwise. To the extent permitted by law we shall in no way be liable for any damages, whatever their nature, arising out of transmission failures, viruses, external influence, delays and the like.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



