Delivery-date: Fri, 20 Dec 2024 07:13:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOWG7-00AL7E-21
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 07:13:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOWG7-0000jr-Jv
	for lore@pengutronix.de; Fri, 20 Dec 2024 07:13:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q2rCcF7Dp821ryiBQc9g7uqt5ug2l/BPGfiIADEe3kc=; b=SnpFvMZInAFvxPEKIJMPAfN+1S
	Ogqa8LXQD/zR2ruVXBCOJ0IQRkzS10zZ4ixXkmNbwgpcO7LTZAjkfmPTpjj7p5lnEP9kohp3mz+/Q
	ghyx9ryip1R26psRNXikPZ6XKgHfnQ8SDnL9TheO9cr4R+USYmU2LolKuo5cYy38greq565aPJDG4
	O7U58RSSA9JTHYHebdYLvZ5BvRh+ZJrcLZmHj3R4ZyTDA62H7iqU5DuTZOYgeYpaQL2+Kk0h+WE7k
	qqNzxAlgWWEac1KF8mfm0h81zxAzuiJEdyjO1QAmWaqHwnKy6o3pLBJHdNlClXVQ2YhVPM4HQhBGo
	9KsDpB7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOWFY-000000043PG-3vBI;
	Fri, 20 Dec 2024 06:12:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOWFX-000000043Oq-0B7w
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 06:12:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOWFT-0000WU-TS; Fri, 20 Dec 2024 07:12:31 +0100
Message-ID: <30375711-d4a8-4e53-a804-a721d45e0ac1@pengutronix.de>
Date: Fri, 20 Dec 2024 07:12:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ye Li <ye.li@oss.nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 dl-uboot-imx <uboot-imx@nxp.com>, Steffen Trumtrar <str@pengutronix.de>
References: <8074530f-720b-4aea-934b-c0643c356617@pengutronix.de>
 <PAXPR04MB8459A8BB89FAB50D6871EA9388762@PAXPR04MB8459.eurprd04.prod.outlook.com>
 <2200ece8-593b-4ac3-be3e-b05570165e5e@pengutronix.de>
 <d4acb710-7c80-4b71-862e-cee0a16d8cba@oss.nxp.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <d4acb710-7c80-4b71-862e-cee0a16d8cba@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_221235_084930_A9DD4B87 
X-CRM114-Status: GOOD (  12.41  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: i.MX8/9: question about unused DDR PHY trained CSR board array
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ye Li,

On 20.12.24 02:58, Ye Li wrote:
> On 12/19/2024 6:27 PM, Ahmad Fatoum wrote:
>> On 30.09.24 08:38, Peng Fan wrote:
>>>> I now have the DDR settings for an i.MX9 LPDDR4 board in front of me
>>>> that has different contents for struct
>>>> dram_cfg_param::ddrphy_trained_csr than the default.
>>>>
>>>> I will inquire how that came about, but in parallel I wanted to ask you if
>>>> this is supposed to happen and to alert you to this issue.
>>> Thanks for raising this issue. I think board specific csr should be used.
>>>
>>> I will check with DDR TOOL owners on this.
>> Did you hear back in the meantime?
> 
> We have discussed this internally. The DDR tool may generate different board specific csr. Currently in DDR retention, because we load csr + ddr_phy_pie, so it is safe to use this global csr.

So ddr_phy_pie contains the firmware to the DDR PHY µC and it will
train the PHY and thus will iron over any missing entries in the
stored CSR? Is my understanding correct?

> But we agree this global csr is confused and waste some memory. It is better to switch to the board csr.

Thanks for the confirmation.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


