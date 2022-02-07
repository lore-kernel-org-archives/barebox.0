Delivery-date: Mon, 07 Feb 2022 09:24:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzKS-0084qP-M6
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:24:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGzKR-00074F-7B
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:24:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4A/dXmrT4DVlQJbgdxFJ+4obSmZAODDfOfBJUqim6k=; b=H9BMNAbVWlhPfd
	y0xHGfY0bihn7/oKy+HkqjjGMiLqg1QOBp0qX0OQz4fRW360yjJoAyYwG9Aac5yRoTrAzVMcamTji
	GWrCb5nAf7bHBLat8S9hySb8qeLvdO8Iqcu58xuOls1Bdvcgmb/LSlK0La4yB0nM4qTSWz9BJbAd7
	eGKnIXfa0+BroxzPnn69ct8l3CYe8T+pzM2DrMLPSULhO431MGuSxvu9p/pGxfTZzJXe+5NiD6e7y
	Km+JTwpHgc5U0p+ILvIatt3P5/RdhHnrijvXbIfyh8Bm/PD7kUI73pTRL9+YuBlDufVLsmm0UBncI
	oCfqfmS/8H346LkKbKvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGzJE-009KvN-1B; Mon, 07 Feb 2022 08:23:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGzJ7-009KuK-Pk
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:23:36 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nGzJ6-0006xh-Gd; Mon, 07 Feb 2022 09:23:32 +0100
Message-ID: <ca8dd95e-4baa-d525-3dd1-7e477be23a27@pengutronix.de>
Date: Mon, 7 Feb 2022 09:23:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220207075621.1014381-1-a.fatoum@pengutronix.de>
 <20220207075621.1014381-4-a.fatoum@pengutronix.de>
 <20220207081730.GB18637@pengutronix.de>
 <20220207082219.GC18637@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220207082219.GC18637@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_002333_867428_87E06409 
X-CRM114-Status: GOOD (  18.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/5] of: silence of_diff output for negative indents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.02.22 09:22, Sascha Hauer wrote:
> On Mon, Feb 07, 2022 at 09:17:30AM +0100, Sascha Hauer wrote:
>> On Mon, Feb 07, 2022 at 08:56:20AM +0100, Ahmad Fatoum wrote:
>>> Negative indents just led to strange behavior so far. Repurpose them to
>>> mean that the caller is not interested in console output. This makes
>>> them useful for negative tests (Sanity check that two different nodes
>>> are indeed different).
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>  drivers/of/base.c | 15 +++++++++++++--
>>>  1 file changed, 13 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>>> index 99be24254203..ffa79785f80e 100644
>>> --- a/drivers/of/base.c
>>> +++ b/drivers/of/base.c
>>> @@ -2087,6 +2087,8 @@ int of_diff(struct device_node *a, struct device_node *b, int indent)
>>
>> Can we add a
>>
>> 	bool do_print = indent >= 0;
>>
>> variable and use it for the tests below? I think this makes the code a
>> bit clearer.
> 
> Changed while applying, so when you agree with this we are good to go.

I'd have called it silent to avoid having negative conditions. I did the
change locally as well as fixed two typos. I will send a v2.

> 
> Sascha
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

