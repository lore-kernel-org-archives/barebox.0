Delivery-date: Wed, 29 Jun 2022 09:05:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6Rl6-000xUK-4A
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 09:05:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6Rl8-0002Xu-1a
	for lore@pengutronix.de; Wed, 29 Jun 2022 09:05:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rgfPdolrkX49/qRH/g6IvDHaGXp0oQUBdLqiIK3J22M=; b=jzzRUz2uuaP9Dj3XxtI5riktnk
	MleWV3gPoL/Eeybjr+5wbOgIt+4uQdPxNXUzkzOTsjJubIqYLBui0Kv1Y07NXcanQdgqdWCz4IkME
	wddMOKkPNkpLZgNKqFJHE8nIHtXwP53ovVi1vC3/ZJ7MTyBrMBGmgl9Dn9rqKnTZs2Txdmnw5ya+y
	Nk0a1NeP4qYC/KhgQ7MQwj5ShRRqGKp9SF+crf8Ms1HmfsD4hrJvfHcaSNQM4T7f0z9v6tDf2KSeW
	mINS4P7ZdirEnnuia1ml1oonaVUnhbTF9GmUTySAaBiUco1S5Y9krVMFXtDm0cfw+J4Q0X6XKaCF5
	+X5E1e/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rjo-009z8Z-2I; Wed, 29 Jun 2022 07:03:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rjj-009z70-Am
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 07:03:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6Rjh-0002Eg-HO; Wed, 29 Jun 2022 09:03:41 +0200
Message-ID: <fc07a9a9-3d78-7295-119a-e0b54d593237@pengutronix.de>
Date: Wed, 29 Jun 2022 09:03:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org, Ahmad Fatoum <afa@pengutronix.de>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
 <20220627102500.18427-5-eagle.alexander923@gmail.com>
 <20220629065251.GJ19026@pengutronix.de>
 <f565caf9-ecfc-04cd-d587-85728c9665e2@pengutronix.de>
 <20220629065951.GK19026@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220629065951.GK19026@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_000343_429758_50730732 
X-CRM114-Status: GOOD (  17.74  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/8] usb: gadget: Fix Kconfig dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 29.06.22 08:59, Sascha Hauer wrote:
> On Wed, Jun 29, 2022 at 08:55:46AM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 29.06.22 08:52, Sascha Hauer wrote:
>>> Without GLOBALVAR selected the USB gadget autostart stuff can be
>>> compiled, but without any functionality, as all functionality is
>>> behind globalvars, so adding this dependency mykes sense.
>>>
>>>>  	select SYSTEM_PARTITIONS if USB_GADGET_MASS_STORAGE
>>>
>>> I am not sure why SYSTEM_PARTITIONS is selected here. Maybe Ahmad can
>>> comment on that. From what I can see with USB_GADGET_AUTOSTART selected
>>> without SYSTEM_PARTITIONS we still get autostart functionality, but
>>> without global.system.partitions support which seems ok.
>>
>> Instead of adding yet another gadget-specific global variable,
>> the mass storage gadget only uses system partitions, so this
>> select makes sense IMO.
> 
> I would argument that USB_GADGET_AUTOSTART is functional without system
> partitions, and the additional support for system partitions can be
> manually selected by the user.

I think it's a bit surprising to enable USB_GADGET_AUTOSTART and then
see DFU and fastboot working, but not USB_GADGET_MASS_STORAGE.

If you have both USB_GADGET_MASS_STORAGE and USB_GADGET_AUTOSTART enabled,
the user implicitly agrees to waste some space on them working together.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


