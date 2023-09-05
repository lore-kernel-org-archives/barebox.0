Delivery-date: Tue, 05 Sep 2023 10:27:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdROz-004kIU-CW
	for lore@lore.pengutronix.de; Tue, 05 Sep 2023 10:27:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdROx-0008Ca-F7
	for lore@pengutronix.de; Tue, 05 Sep 2023 10:27:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sv+rkY6Dcg35ltaywqf5qrxrUrMNmTozTIN2L1iaODI=; b=On/eDjqmpw0s0doocLWK5ePoL/
	4WtTbpo94w8h3WkYQ+KaB+NDBn8v/7PJWUjLEJdqB+JZlpnBlhE6vLgbxfOL5YZ+hw0BqCEiuU1fY
	+seOLMRgB22TLUuTOkyO2cfADIeaLo/GQ7iov1/ijv9zuWrr5s84nibDNLq71pnK0Cy8d01TpCdsX
	IZltKuO9b8zmGLkHH5MtiIcr5VlySl99lZaMXApiKOXrREIFO2hDGthojGxRUk9/m3tPWLt6lzys+
	TB45Li/fKOpAbCSGsVQEf1V0+IQCXQWqoC4V9uZtK39xiYTZmZ3vClvljH/BM0VCS2XgpLiQmMlsa
	cDoqopOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdRNj-005WKp-1m;
	Tue, 05 Sep 2023 08:25:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdRNT-005WKN-1N
	for barebox@lists.infradead.org;
	Tue, 05 Sep 2023 08:25:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qdRNR-0007Ix-St; Tue, 05 Sep 2023 10:25:37 +0200
Message-ID: <e7894fe0-264f-93b1-b4b1-c4197a9b2400@pengutronix.de>
Date: Tue, 5 Sep 2023 10:25:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
References: <20230830104747.43193-1-eagle.alexander923@gmail.com>
 <20230830104747.43193-3-eagle.alexander923@gmail.com>
 <aa20d72f-8cb6-7b51-9ae6-2f8d15d6c690@pengutronix.de>
 <CAP1tNvQAWvbFSYe1MPa7f7RRB5PDOFP1EVvNF+ma3+dM5jPSdg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvQAWvbFSYe1MPa7f7RRB5PDOFP1EVvNF+ma3+dM5jPSdg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_012539_461225_BD5FBA4B 
X-CRM114-Status: GOOD (  18.40  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ARM: boards: Add MyirTech MYD-YA15XC-T development
 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 31.08.23 11:41, Alexander Shiyan wrote:
>>> +struct id_eeprom {
>>> +     u8 hrcw_primary[0x10];
>>> +     u8 pn[64];
>>> +     u8 sn[64];
>>> +     u8 mac0[6];
>>> +     u8 mac1[6];
>>> +} __packed;
>>
>> You could describe this as nvmem-cells in the DT and you'd automatically
>> get the MAC addresses assigned.
> ...
>>> +     if (!is_valid_ether_addr(eeprom.mac0)) {
>>> +             int i, j;
>>> +
>>> +             /* Make fixed MAC-address based on serial number */
>>> +             memcpy(eeprom.mac0, str, sizeof(eeprom.mac0));
>>> +             for (i = sizeof(eeprom.mac0); i < len; i++)
>>> +                     for (j = 0; j < sizeof(eeprom.mac0); j++)
>>> +                             eeprom.mac0[j] ^= str[i];
>>> +     }
>>> +
>>> +     eth_register_ethaddr(0, eeprom.mac0);
>> You could check if the nvmem cell exists and only do the fixup
>> if it doesn't. Check Marco's recent Debix patches for an example
>> of how to call nvmem from board code.
> 
> I can't find a way to know if an MAC address that was automatically
> assigned via nvmem is valid.
> So in this case we always need to use eth_register_ethaddr() manually?

You could fetch the nvmem cell and verify it yourself before MAC address
is assigned. What I'd like to have eventually is a Kconfig option to
generate a MAC address out of the serial number automatically if one was
set and if not, only then fall back to randomization.

I even have patches somewhere. Let me check.

Cheers,
Ahmad

> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



