Delivery-date: Mon, 28 Feb 2022 13:24:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOf4N-00DDwa-Fq
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 13:24:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOf4M-00019J-18
	for lore@pengutronix.de; Mon, 28 Feb 2022 13:24:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9s9MYrAxL0JoR6yd9Ic//7Rl/mQNfzaXH5aYeOF7VQg=; b=urdwOq3B3UQtvj
	UX8eTImXlMzSRhJ6kLZH4t/UG8RegaTk2gZwD7HvEAFsiNXLx33pgbiuIZ0F6ovT41kYm1Jt/zDbB
	trvANXW9Y/oY6/JsGD5EgOUa+GSPo0hBqqmc6D1lqihLNVrP8PhV7tJuyqhbRFlP5SOhYb8dcv4ew
	VtoaFX1j0gpo+MfShAVVrR3TUY8DDS7KbH4vS9VTonOvfkjj8DIwIdtqrIBZ4ZE3aPCSYDXWrUoE+
	EEUl4r50Y9B/VhUHlpmiqp6vz84KyPLLEreybF/jcSBXi78IqXsTDGZBXM7vMoCvyu3QG8RKIJvsp
	PXq9MkAP+pDj4vc6FVsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOf2a-00C9kI-G2; Mon, 28 Feb 2022 12:22:12 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOeOa-00Bwnh-J1
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 11:40:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZPJx0FrJd4P2u7x6qe8xyd/UTRL+IPtM6WzSEUarD2M=; b=Xg/6XUL3fkz4HfR1wtguNw3yV/
 +YWn6FKhaXTrD+H4qmqT6COjOIfDqc0Lo71PsotDLpOGu+TdbDNmSEXXl7OkKOt/5SueES6ybfcqU
 NDegf/zBPGeMajv5HlPmLVortNOTND5+lNxE35tDZbkOBf3ITH0+lR8jeFSF59G8SFGbuJ3DySmJg
 cIQD08faIIFffEC51ced7XNt6Q2sbA39/e0gJRDj99zkZFz+dMKSxGp2pIoNdlsH0F2iYeiwX1DL4
 gGfbwRRJvyVYwR0RlsZpyWLdqfNSVYgiUnb6IpEv9MXJU+tP1r6QLALraoP/nqT9EqoC3rkNZnvud
 3nYJl7pQ==;
Received: from [89.212.21.243] (port=33478 helo=[192.168.69.86])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1nOeOR-006ROq-0L; Mon, 28 Feb 2022 12:40:43 +0100
Message-ID: <6f8093c4-7f4e-c0ad-41d3-f358349a256f@norik.com>
Date: Mon, 28 Feb 2022 12:40:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20220211094230.1807262-1-s.hauer@pengutronix.de>
 <20220211094230.1807262-3-s.hauer@pengutronix.de>
 <2fc596cc-031c-0f53-4646-72ad03bbc8a7@norik.com>
 <20220228101634.GJ19585@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <20220228101634.GJ19585@pengutronix.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_034053_010480_79146033 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] Revert "scripts/common: fix write_file when opened
 with mmap"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 28. 02. 22 11:16, Sascha Hauer wrote:
> On Thu, Feb 24, 2022 at 02:22:12PM +0100, Andrej Picej wrote:
>> Hi Sascha,
>>
>> sorry for responding this late, but we are still getting the same errors as
>> before when using bareboximd with these three patches.
>>
>> Are you sure we can revert this patch? The file can still be opened in
>> bareboximd with mmap(), and then be written with this write_file(), which
>> fails with the same error:
>>
>>> Cannot write to barebox.bin: Bad address
>>> CRC: write crc token to barebox.bin failed: -14
>>> Bad address
> 
> Damn, my bad. It seems my brain was on vacation. I just created a fix
> for this, you should be on Cc.
> 

No worries, it happens :). Thanks for a quick fix. it works as intended :).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

