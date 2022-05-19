Delivery-date: Thu, 19 May 2022 11:27:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrcRo-001u9c-NW
	for lore@lore.pengutronix.de; Thu, 19 May 2022 11:27:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrcRn-000630-FO
	for lore@pengutronix.de; Thu, 19 May 2022 11:27:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWT8u2rFtOaB6mwyp/gTAUUZQL9Yo0GqG1Of7e6lUHM=; b=zRTrhbzlo+ick4
	TC6V6kQCCJOzOAjU4G+KmXZHUdhryiEqN1pn+2DgrmzUAwZN3cSJUySN7ZHfwjNIjDbPsoON7IReD
	8/empbKHs94sxB4p7ysUqtXUz6W2nKJ+bV9CXv6O07OvKwxrh+fG56R6+ZwC1UkR+2FYHrG5Ix3Em
	+jPZ+SN09qPM8+VlNYEZ2nv4UgFe1ufV1wPqB8lyt/NLNyPzMjAj/CKX1AXewdZekJnYg0yrYA1Ax
	vL9Mzz2HcIoduiUTbEAUWsd0ZF2WYObhnxftopdMtU0hWDtkFAfr1/StizPFd09ez3jkcMk9IKIo1
	oIvHRkcjfxZgKGdqHTew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrcQ7-0066TM-2n; Thu, 19 May 2022 09:26:11 +0000
Received: from lx20.hoststar.hosting ([168.119.41.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrcQ1-0066Fl-6Y
 for barebox@lists.infradead.org; Thu, 19 May 2022 09:26:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=emfend.at; 
 s=mail;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References
 :Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JIYctlXtvKgZVPJoisdzkB6hufyYPzFLj9AyW+zEzmo=; b=m6pKXu2IF9M7XxNeOlhAes8y/T
 E25/yjF46UrUbe91m6zYzSZWVA4sW3uhmox7t1Mtmd6d2tAnWuRKTTZFYtN9RmQwEIq4yxtvb2vBX
 dVXU9rRhT+y/+8mx91ltrqbaILixJ/2HecOldlbVgOtMQ8tZ+t/TREEcbaaNsKNGQMow=;
Received: from 194-208-208-245.tele.net ([194.208.208.245]:53200
 helo=[192.168.100.101])
 by lx20.hoststar.hosting with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 (Exim 4.93)
 (envelope-from <matthias.fend@emfend.at>)
 id 1nrcPX-000rcu-Oy; Thu, 19 May 2022 11:25:36 +0200
Message-ID: <9f5d781d-452e-28fb-bc5b-413313439fc0@emfend.at>
Date: Thu, 19 May 2022 11:25:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: de-DE
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <1607cab4-d2d3-b5be-99f1-f9f7347d1888@emfend.at>
 <20220513110055.GE25578@pengutronix.de>
 <a73d1cf7-7548-3439-4369-8da061fad5ca@emfend.at>
 <20220516080753.GG25578@pengutronix.de>
From: Matthias Fend <matthias.fend@emfend.at>
In-Reply-To: <20220516080753.GG25578@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_022605_598710_7015FAE0 
X-CRM114-Status: GOOD (  18.54  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: One barebox image for multiple boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I was pleasantly surprised to get so many comments on this topic.
Thank you everyone for your input!

Since I want to avoid duplicating the i2c bus driver in a PBL capable 
version, I decided to have a common barebox device tree for all boards.
This means that the detection takes place in the board init code and 
then prepends the compatible with the matching board-specific entry.

If at some point the hardware no longer allows this approach, I still 
can switch to the i2c-early solution.

Thanks
  ~Matthias

Am 16.05.2022 um 10:07 schrieb Sascha Hauer:
> On Fri, May 13, 2022 at 02:10:32PM +0200, Matthias Fend wrote:
>> Hi Sascha,
>>
>> Am 13.05.2022 um 13:00 schrieb Sascha Hauer:
>>> Hi Matthias,
>>>
>>> On Fri, May 13, 2022 at 10:55:02AM +0200, Matthias Fend wrote:
>>>> Hi,
>>>>
>>>> I'm looking for a solution to support multiple boards with just one barebox
>>>> image. The few core components that are relevant for barebox are the same on
>>>> all boards, so that the same barebox image runs on all boards. It is
>>>> possible to dynamically detect the board type inside barebox, but as this
>>>> requires some infrastructure it is not possible during lowlevel init. So
>>>> basically Barebox should boot with a minimal core device tree, detect the
>>>> board type and then use the corresponding device tree of the detected board.
>>>> Something similar to arch/arm/boards/stm32mp15xx-dkx/lowlevel.c but not at
>>>> low level.
>>>
>>> Do you even need the full device tree in barebox? The minimal core
>>> device tree might be enough for barebox and only the kernel is then
>>> booted with the full device tree.
>>
>> If there is no trick to changing the used device tree at boardlevel init,
>> then this might be a possibility.
> 
> Replacing the live tree after it has been partly probed already is
> dangerous and barebox is not really prepared for that.
> 
>> The core device tree might not be as minimal then and in exceptional cases
>> minor fixups in the board code will be needed, but I think it could work.
>>
>> In such a case, how should one ensure that the appropriate blspec entry is
>> booted? Maybe by simply replacing/updating the compatible string in the live
>> device tree after the board was detected?
> 
> As it happens Oleksij has just introduced of_prepend_machine_compatible()
> exactly for this usecase. You can find it in current next branch.
> 
> Sascha
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

