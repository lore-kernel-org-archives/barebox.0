Delivery-date: Mon, 15 Mar 2021 18:05:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLqen-0001PE-3Z
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 18:05:29 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLqem-00049x-A3
	for lore@pengutronix.de; Mon, 15 Mar 2021 18:05:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b05BAVZmq+78ZqSGbjrYG1Bzwizk3rwDpEG7HGnOFdY=; b=cmWSjJl5Dly9W4lAU2f/6hN3B
	vNS7l6EpWgXYlFzazKXC5E0wRKEG/NO2eW8NmR98PCYIBx7Pd/4mMOtXxWXFf+mRLDn75xb4a/jH6
	hDZeIUHOwjvwRUjkjdzyPuLJvHpLZ8nqPKKZcZn4WQZg3TZ+SVTIf3JB/JWGD9VdV7eioLF8C3Tcj
	rxXS0lWOtFIIvbkPOvIBQo3+FvvHq8v7HO2J2n/7H3O5dXvyxwMMzfIAZVvUEGKirwAXuet83iAmW
	u9HU8qd+1FxKoD2jOk5TFC3+RSuCK4P1lelgoTpO09DOVntQUdy7EDN57rhaHX1XMb6O5u3jgwfXS
	2gvul2U/A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLqdV-00GRkQ-99; Mon, 15 Mar 2021 17:04:09 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLqdN-00GRd7-Ld
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 17:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1615827836;
 bh=Xv5aAfcNVyT18TYmPWQNZ+yY7BD2clWmvR7lChs/gKo=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Qs/+EdrTUwbnBjB0UI2+WAdZXoIHHl2TcOdNxx2wgyeOOXkjIRS1C75j8bRMC9VPJ
 3lndmobOrCo5/1ogwJMOiM3Ik7LunQjd2lHaXsbQaIp33wGSv2Pl20sBkrgLxzg/5M
 WLOrVgyQWqm3EXOnvhGpD1D82kbrWWxlC8pYNmsM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.44] ([95.91.192.147]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MTRMi-1l9re42cvM-00Tohi; Mon, 15
 Mar 2021 18:03:56 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Antony Pavlov <antonynpavlov@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
 <20210314122804.4128-15-a.fatoum@pengutronix.de>
 <20210315114353.c3bece8ebb5eae822e9349bd@gmail.com>
 <20210315114515.hcqboeb53otdums7@pengutronix.de>
 <20210315150834.2607507ef97f6a63d68494d4@gmail.com>
 <fbf9adbc-7ef5-61c1-60ac-91aa7ac38517@pengutronix.de>
 <20210315183737.22015972e2e058b32f21447c@gmail.com>
 <14b14f6b-a8ae-1b8b-c06a-73d909a4a9f7@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <2da18c76-a0f2-5ccc-f4bc-ff201be60ad3@rempel-privat.de>
Date: Mon, 15 Mar 2021 18:03:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <14b14f6b-a8ae-1b8b-c06a-73d909a4a9f7@pengutronix.de>
Content-Language: en-US
X-Provags-ID: V03:K1:WumMMV5TshQI4netzfVqlIwYgv23H1GZJhQQr5BtJUm5tgCaMk4
 pFvRtueoDcDyGkSJYGiA13y1t2O2ayFk0Y6Am4GqFFCQf1jVoXniJjXZbI5QqHm5ewI6wvm
 acwWq8Zj41dpXn9W3DpUPuMQe3Pn56e9w453y4EkZCeHndBAn+HI4N5Ro1NahylQH8BzH+8
 saUOb7rA5JiWMpf9Ms0iQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:J0iTj1a9lwI=:ZGdw7kBVKl7r18B5BPdAcQ
 94eOpzku8N1NsLi0rlJwYApgyfYZkyHCD1EAaOfLpbFwOqBRi6222yoEeDnELKr8tR7iJ43mn
 mYzjaSoa4YNa/712+Ei0lve1Mx17/nhatMhu30UmOwJC9aATLiBWWiV2E0RFUwZAAMEGf8WX/
 cWCfvaraHypr3lxgWQkJb8bT9PqKj23CLMdngNqT04FXtRJpu8BPR0KXr5Go9NexL+wFt2M92
 6qIFOMzKVTG2K2Kyael+AlUMqu8FgQD2G9vmVEWboo9NP2B8tQXpViVCtKMPXjz4shhfRWmGq
 CgYJ6t5qwy2429JrM2l1vHSLeyS331iTzUQRkhkLIrJxK1rDa4oT/8nLrTFaS4fPDLzPdNwlP
 yiza9YQAD+AiQWLCuZZxNKi8OuMemY+RUqOYtVx+/MuSmYCly/FZWcwt7UHmqe/QvRrVZox1u
 qBFAOb8EtQL7YGfQG1VC4wkXpKSuujb38cFopeXZbqjMuPnOrduAvE+46HuZol+HXz2alRcWX
 8ERRwdWsZGa9kuO6YRv3qg/AAJT403cpjGsZpqhHn9n20/UEICFyMcewPn/WRcRF0+6DrvJXe
 7xaR5vPl0zF4zNZyfXlcQ1hPI6F0QlgxucYdWyDU9StBSESCXvXh8e4NrsvEI4j997arjIMET
 CSOwzzWmRMYpFo91YntWv2AtZOHT0EceXwZOoQkALssdOY+vE2Gn8/GLYxDJayrT1NMJ5x/OL
 mRL6QmSNkJEutB1DYzHb1C/uoi/vA7d1nIfchwsXQ+lDHLry9jwqKDXsfm9TLwKUTnOIiSD1/
 c8jx3OGSOhoZd5INLlLrG2+FfYZU3dYGPwqoPxKoMnbzmT+n85ea+rr7akcMNTdfeKk14IemG
 30pAeLN8x4wY4gxDZf0A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_170402_059593_625C3F10 
X-CRM114-Status: GOOD (  17.03  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: MIPS RELOCATABLE: [PATCH 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 15.03.21 um 16:46 schrieb Ahmad Fatoum:
> Hi,
>
> On 15.03.21 16:37, Antony Pavlov wrote:
>> On Mon, 15 Mar 2021 13:40:10 +0100
>> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>> Without having dug into the MIPS code, the main point of CONFIG_RELOCATABLE
>>> is that PBL can check for it to decide where to copy barebox proper to.
>>>
>>> This is very relevant if there's no TEXT_BASE that works for all boards
>>> that you need to support with your multi-image barebox.
>>
>> So CONFIG_RELOCATABLE can be very helpful.
>>
>> At the moment MIPS barebox is always relocatable.
>> Sometimes it's useful to run barebox from fixed TEXT_BASE (e.g. during gdb debug session),
>> so this fixed TEXT_BASE behaviour can be introduced for CONFIG_RELOCATABLE=n case.
>
> With the pbl break stuff, you could in theory already flip a config option
> and have a gdb script that computes your load address from the address of
> your breakpoint. That would be nice to have as a ready-to-use script.
>
> I recall Oleksij and Michael did something in that regard.
>
> Benefit is that the break is an actual machine code nop when inactive,
> so binary size/layout shouldn't change, unlike with flipping CONFIG_RELOCATABLE.
> For RISC-V, I see no good reason to allow CONFIG_RELOCATABLE=n right now.
>
> Cheers,
> Ahmad
>

If i remember it correctly, this two patches are needed, to make
relocatable barebox debugable with openocd and gdb

https://git.pengutronix.de/cgit/barebox/commit/?id=c37cc2d725a496551113f4ebb1d116823eb0dbd1

https://git.pengutronix.de/cgit/barebox/commit/?id=d71573a006a2fc2b83c076c556b88166f4e3dec3

For the MIPS and RISC-V we would need similar helpers.

Regards,
Oleksij

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

