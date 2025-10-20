Delivery-date: Mon, 20 Oct 2025 14:36:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAp87-009tSZ-2x
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:36:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAp87-0004uc-A8
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:36:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cRDRa6brccqfRQTZ0J9kW9/ip49o+cMIyqvWhSTht0Y=; b=yxeor1LT33O0dIhuFCivjoLrv0
	ahhuTG7Fp5IDJ1f9Mh+HZHheKJFHydWhA7VdyZ8N0hCs15WZOnnn0DNqUy/9wiRQerwvis6OtY/7b
	olCFhQfqeJ/jvDQSVPbOKfuWTAEJ5lFj0WcfteWlVs2jKkIJ3Qk7u1UXLZQuIHlEOKCzJQiTwvuSX
	02NNZDuv9TNN06SjFo91xoL7NhSymHmswcYMz7raIzHcY+bPT2mLgvDXOLnFuMIoXn09fPgBwp2oj
	EOu4tGvv8nS+h5RcBhnJadqUOkfuFtZXeq+wTQqvF/zmHyKe2UP3d30XMwuruzz8qACKQlRXgHn00
	fxJwsk0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAp7e-0000000DZfP-2x0N;
	Mon, 20 Oct 2025 12:36:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAp7c-0000000DZcP-1ptB
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=cRDRa6brccqfRQTZ0J9kW9/ip49o+cMIyqvWhSTht0Y=; b=JGd4OlaGXh1RFNHa5KaIca7Brc
	7JQIik9q6fU251xB3eQQeo86iWz7YrxN658Yrhnrmbhutoja2HaIIluKXK2ZcUXqE1xB2yQ+TPBmO
	gY0lwQB6vTzavCRuk3UejmmrcBNIVG3cSNktojlgweTQpFDTbeSp5j5Okc3Ezb+VLAVUZbFElXb2o
	R198J+bf25NliV2y68pKa4jOcIvyqLErAPGJlsOF+ojkw5wSlYO7HQe7VpDcX51Gt8pLprGh2F5bj
	kmVV/hKFtxHyIkE6eJMvW1Xddyy9q5U5orMlLW+WjxNlWOWUpoOl6+aDjnVlXLw+K7fr0V1zw7YzU
	9SD1x0lw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAp7W-00000007CX7-18iA
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:36:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vAp7T-0004il-V9; Mon, 20 Oct 2025 14:36:12 +0200
Message-ID: <f4c0e6e7-9725-414f-b405-c098b6459753@pengutronix.de>
Date: Mon, 20 Oct 2025 14:36:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251017-dmesg-v1-1-ac9c2fb021f6@pengutronix.de>
 <aPYCgfi-oX6zQgY-@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <aPYCgfi-oX6zQgY-@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_133615_545071_DAB7DE03 
X-CRM114-Status: GOOD (  15.46  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: dmesg: clear logbuffer fully if not requested
 otherwise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 2025-10-20 11:36, Sascha Hauer wrote:
>> If loglevels are selected using -l or -p in addition to cleaning being
>> selected using -c, only clean those messages shown by the loglevel
>> selection.
> 
> I find this behaviour rather surprising. The only useful thing I could
> think of we can do with this is "Discard unimportant messages", but only
> by printing them. It would be more useful if we had a -C (uppercase)
> option to discard messages without printing them. But even with that,
> there are many things we can do with this behaviour that are not useful
> and only a few that are actually useful. We could delete for example all
> "info" messages and keep the more and less important messages, but why
> would we want to do this?
> > I think you should rather use the filter options -l and -p to limit the
> output to the messages you are interested in and finally use -c to clear
> the buffer.

I think both behaviors could come as a surprise depending on how you
look at it but if no one raises another position, I can make sure that
in v2, -c will always clear all messages of all loglevels which is also
much closer to the current behavior. I'd then add a warning that in
these cases, filtered-out messages are cleared without being shown.

However I disagree about the -C option and the idea of clearing in a
separate step.

My concept of -c is that it 'consumes' the ringbuffer, a 'dequeue'
operation, if you will. This needs to be a single step to ensure that no
messages get lost or duplicated.

For example in some long-running test, you might run `dmesg -c`
periodically and store the output. It should be guaranteed that when
doing this, you never loose a single log message (if you clear often
enough to never fill/overflow the buffer). I think the prior
implementation couldn't guarantee that, but my patch changes that. From
that perspective, the option to clear the buffer in a separate step
would not help.

In a 'consume and filter' scenario, one should just use dmesg -c -r and
perform the loglevel filtering elsewhere instead of 'consuming' per
loglevel by mixing -c with -l/-p which is why I'm ok with the change.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


