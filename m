Delivery-date: Thu, 19 Dec 2024 11:28:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tODln-00A06A-3A
	for lore@lore.pengutronix.de;
	Thu, 19 Dec 2024 11:28:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tODln-000107-RJ
	for lore@pengutronix.de; Thu, 19 Dec 2024 11:28:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ib2p7Nbbsj7xOceOPdYwLgcR+CRmF1QUwaRJ7fTZ5wI=; b=iw1JXp5a1aZa6xgUrXiwm0/0q5
	qSZ/t7lxVU3ou0mcg+91Ax5CZjl9XNxxzyByx70WVkNye6lGulLf3696ajkY57T/g0Li9jArMPrNS
	b1vAg/tx6hQytyuLEy57LG5LE5ya7zKJJvV+K64OifU91MwbQrOOHP2c9taLJwdnXcJ+zMRRrsXDM
	RihPaBnvIk9+w/SuTdnCpJqzSNoqXuhIMnie8q1TeUb+3HzBCM9ZpxNUooAmGbc4z1VwDH6sgSjZ+
	W2miuprF3nB9kMR45KmJH1SZtfyWVw2hZt1GwDZ2b/3narxWUFEWdEkStYReRy5Lr2Mx4w3JDWec5
	LV6B7bdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tODlA-00000001XxW-1S99;
	Thu, 19 Dec 2024 10:28:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tODl6-00000001Xwm-30ir
	for barebox@lists.infradead.org;
	Thu, 19 Dec 2024 10:27:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tODl3-0000n4-4d; Thu, 19 Dec 2024 11:27:53 +0100
Message-ID: <2200ece8-593b-4ac3-be3e-b05570165e5e@pengutronix.de>
Date: Thu, 19 Dec 2024 11:27:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Peng Fan <peng.fan@nxp.com>, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 dl-uboot-imx <uboot-imx@nxp.com>, Steffen Trumtrar <str@pengutronix.de>
References: <8074530f-720b-4aea-934b-c0643c356617@pengutronix.de>
 <PAXPR04MB8459A8BB89FAB50D6871EA9388762@PAXPR04MB8459.eurprd04.prod.outlook.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PAXPR04MB8459A8BB89FAB50D6871EA9388762@PAXPR04MB8459.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_022756_759877_9FDB2CB3 
X-CRM114-Status: GOOD (  19.62  )
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

Hello Peng,

On 30.09.24 08:38, Peng Fan wrote:
>> Subject: i.MX8/9: question about unused DDR PHY trained CSR board
>> array
>> Looking at the DDR setup code for i.MX8M and i.MX9 that you had
>> contributed, I am wondering about struct
>> dram_cfg_param::ddrphy_trained_csr and the global
>> ddrphy_trained_csr array.
>>
>> struct dram_cfg_param::ddrphy_trained_csr is presumably generated
>> by the i.MX DDR tool and it seems populated by all the i.MX8M/9
>> boards in U-Boot.
>>
>> This struct member is wholly unused though and instead a global
>> ddrphy_trained_csr is used.
>>
>> What I wonder about is whether it's possible for the DDR tool to
>> generate a different ddrphy_trained_csr than the default:
>>
>>   1) If yes, we should drop the global ddrphy_trained_csr and actually
>> use
>>      the board-specific array
>>
>>   2) If not, we should drop the board-specific array and perhaps ask for
>>     the DDR tool to be changed
>>
>> I initially assumed 1) and because all boards supported by barebox had
>> a board-specific ddrphy_trained_csr that's identical to the global
>> ddrphy_trained_csr, I dropped the unused array[1][2].
>>
>> I now have the DDR settings for an i.MX9 LPDDR4 board in front of me
>> that has different contents for struct
>> dram_cfg_param::ddrphy_trained_csr than the default.
>>
>> I will inquire how that came about, but in parallel I wanted to ask you if
>> this is supposed to happen and to alert you to this issue.
> 
> Thanks for raising this issue. I think board specific csr should be used.
> 
> I will check with DDR TOOL owners on this.

Did you hear back in the meantime?

Thanks,
Ahmad

> 
>>
>> The way things are, this is either a bug or a missed space saving
>> opportunity for U-Boot.
> 
> Thanks,
> Peng.
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


