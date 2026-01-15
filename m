Delivery-date: Thu, 15 Jan 2026 11:47:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgKsg-001Z1v-0F
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 11:47:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgKsf-0000Nu-3A
	for lore@pengutronix.de; Thu, 15 Jan 2026 11:47:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=864gnJw4z3qESROSVnlfH9GluofAIj187C7AakvC76U=; b=Q9VOklAfh5aG/s+FyPgQvSJePw
	3wKo3TQju9vQQalk0XP78KFpL+P3OPMJS6FWUiV3Mx4kc2q5o5ajBltXq3evpxx4jH5ySpyGbOhQc
	tce3hlqLReXz1nWs/e8CSmHy2nI6CcE+p2DTeNUZU+R5Gtdl625iknGpWRg0GBSSQf9HYD00daXrL
	DIqCqUa9Dl6ZzShuwn750ZK8T4E7AczcMpPv7E+V5vCwO2h6NqE4+ec/wXKTUQl29gC54ysuc1GjB
	0OgIpghREO8qA1ap2OeJOFHwQJnyATWoOQ5V1eyx8KK4XFYVQugKfBDjTnkLfLpyU2LlZ6StsRZ2/
	mMcP1ECQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgKsC-0000000CB2A-0391;
	Thu, 15 Jan 2026 10:46:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgKsA-0000000CB1h-0WJI
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 10:46:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgKs8-0000JE-Ej; Thu, 15 Jan 2026 11:46:36 +0100
Message-ID: <beb2d064-bd5a-4d97-91be-55af7d81ecd2@pengutronix.de>
Date: Thu, 15 Jan 2026 11:46:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>,
 Barebox List <barebox@lists.infradead.org>
References: <OR4V8T.50BC0FSNYML@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <OR4V8T.50BC0FSNYML@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_024638_167483_2D02B4B4 
X-CRM114-Status: GOOD (  16.81  )
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
Subject: Re: [RFC] board imx8qxp-mek
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Stefano,

On 1/14/26 5:35 PM, Stefano Manni wrote:
> Hi,
> 
> I'd like to add the board imx8qxp-mek from NXP.
> Since the SoC is already supported by barebox, it should be quite
> straightforward
> to add the new board but I need to understand if the starting point is
> u-boot [1]
> or something else.
> 
> Any comment and recommendation is appreciated.

I think you may have been misled by NXP's naming scheme.
barebox indeed has good support for the i.MX8*M*, including
i.MX8MQ, i.MX8MM, i.MX8MN and i.MX8MP.

i.MX8Q (no M!) is a different SoC: It has different CPUs and importantly
for barebox, very different startup than the i.MX8M as its internal
Cortex-M4 (the SCU) is what first boots up in this SoC and one would
first need to teach barebox how to communicate with this process as well
as implement the new boot image format that is required.

AFAIU, the Linux upstream situation for these other i.MX8's is also
worse than for the i.MX8M.

Cheers,
Ahmad

> [1] https://elixir.bootlin.com/u-boot/v2026.01/source/board/freescale/
> imx8qxp_mek
> 
> Thank you.
> Best,
> Stefano
> 
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



