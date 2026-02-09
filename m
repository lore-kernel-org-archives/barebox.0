Delivery-date: Mon, 09 Feb 2026 17:44:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpUN8-00AcON-18
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 17:44:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpUN7-0006jn-Ch
	for lore@pengutronix.de; Mon, 09 Feb 2026 17:44:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tpn8E76nSWuv6A/Xwi8L4fwxHew0sqGivPGdvQMVkF0=; b=laY49rWjk91/0YrXYc0G/iJ3cN
	WWTufkT9RM5QdFS4mVBw6y6w9UwsQyDXEx2Bfy/CqCoALpJXDWnsliijlH5a7ZOrt4neEXrSdYGQN
	95BaBV9FlVa8j0HtQJwQ10ovHAudgviDscTJAJeCOhYYCumqmOKHuFsrvvJfOmsmsWhgtwyLgMhvR
	oZVNGI88HYZlira5Ytuf9dJ9VVIQau8vyIPCLyo2Uch5UeIu+znOX36Y4trahQQzY2kmoXBy+g+j2
	BfJ88tuvrjZSuXD81BshI0tovHewFmjq2RCYW/Z8fsSCnVU/3cYASCllZRoCMK9kceW7y8KbAa3Hb
	MNR7PjLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpUMe-0000000Fi3S-2q17;
	Mon, 09 Feb 2026 16:43:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpUMc-0000000Fi31-0jv0
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 16:43:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpUMa-0006er-JP; Mon, 09 Feb 2026 17:43:52 +0100
Message-ID: <9c43e381-38cc-4c10-bf03-b874a6daba10@pengutronix.de>
Date: Mon, 9 Feb 2026 17:43:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Tretter <m.tretter@pengutronix.de>, barebox@lists.infradead.org
References: <aWEab3b5tMev5AU4@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aWEab3b5tMev5AU4@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_084354_218968_8E5A049D 
X-CRM114-Status: GOOD (  15.07  )
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
Subject: Re: Radxa ROCK 5T: SD card startup failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Michael,

On 1/9/26 4:10 PM, Michael Tretter wrote:
> It seems to me that the SD host controller fails to correctly initialize
> if the card detect it directly muxed as GPIO instead of muxing it to the
> SD host controller. At least that's what I understand from
> https://lore.kernel.org/linux-rockchip/4920950.GXAFRqVoOG@diego/.
> 
> May there be some configuration in the SD host controller that needs to
> be changed to ignore the card detect?

The driver didn't clear the card-detect bit in DWMCI_RINTSTS, which may
be the culprit.

Could you please give the potential fix at [1] a test?

If this doesn't resolve the issue, we will have to do revert the DT
change in arch/arm/dts before v2026.02.0.

[1]:
https://lore.barebox.org/barebox/20260209164045.1924618-1-a.fatoum@pengutronix.de/T/#u

Thanks,
Ahmad


> 
> Michael
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



