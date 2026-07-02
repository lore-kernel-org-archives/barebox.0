Delivery-date: Thu, 02 Jul 2026 16:04:15 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfI1X-00CHTi-1w
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 16:04:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6115720195E
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 16:04:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=31rEJkql;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y4egxMvCiO35SLStQ5cSSkkRxYge+Lsgpbetx1TTvlk=; b=31rEJkql1DEOVe8jIBm4RI6ZtH
	VlnKI1Z2cyW3lYPzmOMcA6Lc54AOBzymbSIxZp+i04fJYvmM6yNRy2ExaNEzv5E3wrvw/Wx0xg1p4
	PAsqhHjHHfMpfo06yBcin7O45AAxuvFlBGYTxQ3C+lcmExgK9Yfoqfk/gyL1OXGLda0HjCiSzFh+0
	oQBUjptM2+pb+nQk4+RJRFTibbavun551Ox2lqnY3hRcSMgJykBFxLlVXhilKHEcUyCfgWOSjQVpf
	2dk6Ituho9uTX4J/9jrNnP2Y+263rrdCH4yIB2ijm98887/pgOShLMses3wfACb2YVRa5rXkSQ/Zl
	lGUdZZew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfI0L-00000004aLH-1a8r;
	Thu, 02 Jul 2026 14:03:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfI0I-00000004aK3-1oDG
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 14:03:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wfI0G-0005xI-Nw; Thu, 02 Jul 2026 16:02:56 +0200
Message-ID: <21e82da4-3c8b-4bac-9ae8-7ca0974bfc12@pengutronix.de>
Date: Thu, 2 Jul 2026 16:02:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] restart: fix restart handler by name selection
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260622172121.1736295-1-m.felsch@pengutronix.de>
 <f81603e6-d35b-4b73-a113-21d7be6f1066@pengutronix.de>
 <lzvfqil7wcmv3rryrbfqqoanho4e4u45nmbggiahujctpl7gzl@ehv7yjsmig7v>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <lzvfqil7wcmv3rryrbfqqoanho4e4u45nmbggiahujctpl7gzl@ehv7yjsmig7v>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_070258_474139_D929B2BA 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 7/2/26 3:51 PM, Marco Felsch wrote: > On 26-07-02, Ahmad
    Fatoum wrote: >> Hello, >> >> On 6/22/26 7:21 PM, Marco Felsch wrote: >>>
    Commit d20a9a455d8d ("restart: allow selecting restart handler by [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Queue-Id: 6115720195E
X-Spamd-Result: default: False [-6.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ox4eyzub18qnh4q7yfw3qch41ph6ss7f
X-Rspamd-Server: mx1



On 7/2/26 3:51 PM, Marco Felsch wrote:
> On 26-07-02, Ahmad Fatoum wrote:
>> Hello,
>>
>> On 6/22/26 7:21 PM, Marco Felsch wrote:
>>> Commit d20a9a455d8d ("restart: allow selecting restart handler by device
>>> name") introduce a bug, while adding the support to select a restart
>>> handler by device name.
>>>
>>> The list_for_each_entry() loop should sort out all restart handler which
>>> don't match the user requested restart handler. Instead all restart
>>> handlers which don't have a device associated are honored as well
>>> because the if condition is always 0 in this case.
>>>
>>> Split the if to fix this and add a helper variable to make the code more
>>> readable.
>>>
>>> Fixes: d20a9a455d8d ("restart: allow selecting restart handler by device name")
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>
>> Why do we have restart handlers without a device name?
> 
> Because it's not required for them to have a device associated, e.g.
> each restart_handler_register_fn() user doesn't have a device set.

Ah, thanks for fixing.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>
>> Cheers,
>> Ahmad
>>
>>> ---
>>>  common/restart.c | 9 +++++++--
>>>  1 file changed, 7 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/common/restart.c b/common/restart.c
>>> index 391d7bd3773c..85519912170d 100644
>>> --- a/common/restart.c
>>> +++ b/common/restart.c
>>> @@ -117,8 +117,13 @@ struct restart_handler *restart_handler_get_by_name(const char *name, int flags)
>>>  
>>>  	list_for_each_entry(tmp, &restart_handler_list, list) {
>>>  		if (name) {
>>> -			if ((tmp->name && strcmp(name, tmp->name)) &&
>>> -			    (tmp->dev && strcmp(name, dev_name(tmp->dev))))
>>> +			bool found = false;
>>> +
>>> +			if (tmp->name && !strcmp(name, tmp->name))
>>> +				found = true;
>>> +			if (tmp->dev && !strcmp(name, dev_name(tmp->dev)))
>>> +				found = true;
>>> +			if (!found)
>>>  				continue;
>>>  		}
>>>  
>>
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



