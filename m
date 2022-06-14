Delivery-date: Tue, 14 Jun 2022 12:35:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o13ts-002771-DN
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 12:35:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o13ts-0000nn-DY
	for lore@pengutronix.de; Tue, 14 Jun 2022 12:35:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZfMHApSbXicGonMlZINOYXlrTyDRsxv6Z7FYUQYCxNM=; b=IRaDfdlAqtFDUaautwt+7uDVtE
	xX6TmimfIHM4+zivPT7bb5YjlgMmaKbPza7Mj9ioYjeH3Mbz1LOMPuxcv2dMZMRoC4fCHGL3m8fse
	4g4jikZGsFSqu+upEYj/cRBz79M0oeyWMdvegDxAVgIPgHlQbsHXdqgzZH/z/t4s1YwoAA9vtaaxl
	gg/+P3mV2Ka/v16D/6hxp6FClhcph2TUnb+QILAJAtlHD6VV8SeQU9xXGLdN2W38OD80Qd1Zrorcu
	33+6Lh01tdyx4c5OV4vAImwSe27tinIrXZWjRa+gd0rTv9bnMiSnchycu2mjItcEqbxwgUMyB8Aw2
	XIkClrdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o13sE-0093m4-Gv; Tue, 14 Jun 2022 10:34:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o13sA-0093lN-RY
	for barebox@bombadil.infradead.org; Tue, 14 Jun 2022 10:34:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ZfMHApSbXicGonMlZINOYXlrTyDRsxv6Z7FYUQYCxNM=; b=qO7NiibKClAkUJ0ALiq8+HCX2J
	3k0J80CZqBDF7v3B8PtazXCfJakb0BoS6nwV5xfg/GiApx7Hm9aKqFM4dMnNEXW8O4ku9bk8jhltr
	22VrYxX6XEfEr7RPIVZrt6X+GNw/xtSkaDEhbbMwHGKyttvoIPj0Qa/Y7QdDOmxUE4G2SLl6b+aTG
	RaIbmnuFqWtLpSLcdaXCgrHjxSON7yoKM/mGEpjCBznKFOmFHawicHvocBk/04YpTM6e4dkJ5kEgB
	/QAEoxiLjyhzWGCVbz9Hg5Sm90cOuiOfsbZ4XZWrAKZFyMOH8hco0lka3Mm4U42VqG1l7bbgwsaFZ
	zuABWY+Q==;
Received: from smtp-cpanel.siel.si ([46.19.9.86] helo=cpanel.siel.si)
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o13rz-007pgq-IY
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 10:34:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZfMHApSbXicGonMlZINOYXlrTyDRsxv6Z7FYUQYCxNM=; b=WZltKjyvccu55r5QjNo3Vy2sdO
	JANogjfTe4JlaPVLT5EtgdjvxKyi2IWH5wxB6wE0MKXtygN+bV8DMspBzw49DQIp+Tkczl1xH+/g1
	WZutMHAUHP9Z5WI/5MXqZmmXHBN1lrCVceCqvDiRgRSRen+8pfDdBJnRadwsuK4CPY/E+pi1iXKXt
	aIUwhYlcvL1mPKwsNrZ+Kw5aD6UEXZWlhZSqi8YYZ2Vx4B6UblQyEuPTY95AyhD87Nf9uN4jatNEx
	zHsXt5X9t996h84LcSxhztoEm4ipsiiuPNB7MLeBPUzAQ8DCdzxuyf6+FISs3qa6I3uS+okkuHw7o
	BbleMp+g==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:43624 helo=[192.168.69.86])
	by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.95)
	(envelope-from <andrej.picej@norik.com>)
	id 1o13rk-001NVE-Na;
	Tue, 14 Jun 2022 12:33:44 +0200
Message-ID: <2962db0d-44a9-9a52-ef5d-e357aee5a3ae@norik.com>
Date: Tue, 14 Jun 2022 12:33:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-GB
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <c51b2c94-61b7-df44-5d4c-025d18c4b24f@norik.com>
 <20220614082711.GQ1615@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <20220614082711.GQ1615@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_113403_749905_15EB9D88 
X-CRM114-Status: GOOD (  18.59  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Ethernet reinit on phyCORE hangs the device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 14. 06. 22 10:27, Sascha Hauer wrote:
> On Tue, Jun 14, 2022 at 09:12:23AM +0200, Andrej Picej wrote:
>> Hi all,
>>
>> when testing barebox ethernet on i.MX6 (phyCORE) we encountered a bug:
>> the ethernet re-init on barebox doesn't work! If we do:
>> $ ifup eth0
>> $ ifdown eth0
>> and then:
>> $ ifup eth0
>> $ ping HOST_IP
>> the device hangs and can only be saved by resetting the board manually.
> 
> I can confirm the behaviour is the same here.

Great.

> 
>>
>> We narrowed the problem down to the "fec_tx_task_enable". It seems that
>> enabling tx task with writing to TDAR reg hangs the device shortly after.
>>
>> Did you guys maybe encounter something similar on i.MX6 boards or on any
>> other boards?
>>
>> I guess this is a really specific problem as people don't normally do
>> ifup/ifdown with ethernet in bootloader :D.
> 
> Nope :)
> 
>>
>> Do you have any idea what could be the reason or how could this be solved?
>> Any useful information would be greatly appreciated.
> 
> Part of the problem is that fec_halt() tears down the device completely.
> The counterpart of that is fec_init(), but that is called from during
> probe only. I think fec_init() should be called from fec_open() as well.

Hmm I thought I already tried that, guess not...

> 
> A quick test revealed this is really only part of the problem. The next
> one is that fec_update_linkspeed() is not called on second open, so the
> fec speed registers will not get their correct value.

Ok, I'll check that out.
Thanks for your help so far.

Andrej


