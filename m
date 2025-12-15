Delivery-date: Mon, 15 Dec 2025 13:25:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7du-00Bk21-16
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 13:25:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7dt-0005D4-Nf
	for lore@pengutronix.de; Mon, 15 Dec 2025 13:25:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FUDQ+66jtVIub7YlyOkVfnHCaWZsJ5O9svqS8Knz5nw=; b=QApKgWCGuR631MakI5uiXVESl8
	vpS5d/n1Rju0VBRnCXjNE0TIiJ+J6NB64wrve+HC+Algo3w9+rlKk3GldAzEIVAWQ2fvP0F4Jp+lT
	ODyyxY/iXns0LQAVeF58YqttZU69/X6t0M+lcXx2M4GqdOXEOfXi7/z9h1wLQQMzYpu5+P0pxnrkc
	YkefCs/eT7sV/vLgIEol6zHL1rHBggWvlU4LZK8QfTA23y28/SE6DHOA4v0DKZLwHQKaHAgQ18nxG
	TqP29jxB22dreLkLTmEKykizl3XAnk5qPhigaywiaRS/6jSF6VW1ZIFwjIhSWUc3U5gqeUTVyf08j
	3IOG2oog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7dU-00000003bxN-0i32;
	Mon, 15 Dec 2025 12:25:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7dR-00000003bwp-0GkS
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 12:25:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV7dP-00056L-GV; Mon, 15 Dec 2025 13:25:03 +0100
Message-ID: <5df77d14-0dcd-4349-b7ab-ed797f03b4ef@pengutronix.de>
Date: Mon, 15 Dec 2025 13:25:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
 <176579746741.354794.15681124579401216876.b4-ty@pengutronix.de>
 <4cfc991a-29b1-41b2-8fe7-a3f944ec0b14@pengutronix.de>
 <aT_91YmT0W8Jo9Ns@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aT_91YmT0W8Jo9Ns@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_042505_110777_741BEFD5 
X-CRM114-Status: GOOD (  15.34  )
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
Subject: Re: [PATCH 1/5] net: 9p: fix variable name in BAREBOX_MAGICVAR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/15/25 1:23 PM, Sascha Hauer wrote:
> On Mon, Dec 15, 2025 at 01:17:11PM +0100, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 12/15/25 12:17 PM, Sascha Hauer wrote:
>>>
>>> On Mon, 15 Dec 2025 08:58:57 +0100, Ahmad Fatoum wrote:
>>>> The variable is called global.9p.debug, not plan9debug.
>>>>
>>>>
>>>
>>> Applied, thanks!
>>>
>>> [1/5] net: 9p: fix variable name in BAREBOX_MAGICVAR
>>>       https://git.pengutronix.de/cgit/barebox/commit/?id=370f8098d2ab (link may not be stable)
>>> [2/5] bootchooser: inline document global.bootchooser.reset_priorities
>>>       https://git.pengutronix.de/cgit/barebox/commit/?id=473dec063496 (link may not be stable)
>>> [3/5] reset_source: inline document global.system.reset*
>>>       https://git.pengutronix.de/cgit/barebox/commit/?id=fe328bcb8a40 (link may not be stable)
>>> [4/5] Documentation: generate docs for magic variables
>>>       https://git.pengutronix.de/cgit/barebox/commit/?id=e3078309ff30 (link may not be stable)
>>> [5/5] Documentation: turn magic variables literals into references
>>>       https://git.pengutronix.de/cgit/barebox/commit/?id=ab1033dd5dff (link may not be stable)
>>
>> Thanks!
>>
>> Given that these are either doc fixes or additions, maybe a candidate
>> for master?
> 
> Yes, did that. Note that not all magicvar references you touch in 5/5 do
> already exist in master, so please rebase after the next release and
> send a patch for the missing places.

Thank you. Will do.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



