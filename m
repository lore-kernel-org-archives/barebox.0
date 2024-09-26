Delivery-date: Thu, 26 Sep 2024 13:10:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmOQ-002yPK-1H
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:10:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmOQ-0002Zs-U7
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:10:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4kXpY5/6c5i7TdzM3SJXmmU0o48gkxEwofg3TqC9sOY=; b=tuoXgdB3+47XKEas39OQpfqyGM
	PCTa8GjjXZq8q/PgUf2rOf0qXy/2lRLtu01tZuDY35v1JhhAizWapxqtKqdHeRhnJ8H4W0IjMJ6ig
	02u1RaHhHFj8FyPK/a6ii2vRhk9mIV5YvekXBNFc+rRk/s2V2biT6dOd93xo7bMh/FipI19pTQAY5
	r3wWarmS3eODJjGQhHuW4+JDpqwk8ZGDZeTHg0/yq6FkpJHo59NzVQP5Wz971vRXGne0jJcONVI/s
	CcPCliW0DLYfFYHBmlv2hmT7tfr9mxTDVEK4jtveJXsHIS27pua+21uG7Et66JiO5Y1imNm2tfIZj
	4jC8oO6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmNp-00000008BCk-0gGm;
	Thu, 26 Sep 2024 11:10:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmNl-00000008BBM-3wEk
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:10:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1stmNj-00027c-2R; Thu, 26 Sep 2024 13:09:59 +0200
Message-ID: <c59669cf-b20b-4c97-8f58-1f1787041260@pengutronix.de>
Date: Thu, 26 Sep 2024 13:09:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-arm-assembly-memmove-v1-0-0d92103658a0@pengutronix.de>
 <20240925-arm-assembly-memmove-v1-4-0d92103658a0@pengutronix.de>
 <828713ac-92e9-4e88-8ab1-a2b9d58c5d0c@pengutronix.de>
 <ZvUZsWI3ACtu86-S@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZvUZsWI3ACtu86-S@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_041002_043033_FE7DA880 
X-CRM114-Status: GOOD (  13.11  )
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
Subject: Re: [PATCH 04/10] ARM: update lib1funcs.S from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.09.24 10:22, Sascha Hauer wrote:
> On Wed, Sep 25, 2024 at 06:02:37PM +0200, Ahmad Fatoum wrote:
>> On 25.09.24 15:55, Sascha Hauer wrote:
>>> This updates lib1funcs.S from Linux
>>
>> Please mention what Linux version this was imported from.
>>
>>> -	moveq	pc, lr
>>> +	reteq	lr
>>
>> huh, what kind of instruction is reteq?
> 
> It's a macro introduced in the previous patch. It's 'ret'urn if 'eq'ual.

Ah, I see the .irp now. I was thrown off by reteq not appearing anywhere
in the patch.

Thanks,
Ahmad

> 
> Sascha
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


