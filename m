Delivery-date: Fri, 17 Jun 2022 11:00:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o27pg-0051mF-7k
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 11:00:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o27pg-0005Wj-0Y
	for lore@pengutronix.de; Fri, 17 Jun 2022 11:00:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fzUMTUJAz3CWIyNZCDGVj05mjrQKHo2BziafYu5ec2w=; b=Bjeji89GHpuZOFqC6jOrEBRp9R
	ZzZVM1S9TAtRyTP5v/iXDyw8d8oVaBPcZ7ij81gom/yq5qIyDO8y4lNcLxGfNh5PPCmz6zVyQBEix
	x8XeJOOZBUkGhIK+f83PZHv09IOlRUMWceqVao3F0melsQCItp9Ym/kgQ9oMfFgeoZkbnGUuh0OZ1
	EEx4FpYDIrvzFRSf01HImlUdVu4Gaz3V4gJPQf3gEHEMxfAbRRTb4eKAGa7WsNxEG9tdJLhWYagz0
	TQmmjlLiGTtSrU37xqGoxJ4XCIub9vMexJNucaAnaVwMYcfat65Qs3IZrMNVx5801+uxbiOCIuTaP
	ngaKb8eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27oI-006X8S-GC; Fri, 17 Jun 2022 08:58:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27lH-006VVR-EV
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 08:55:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o27lF-0004Ws-Se; Fri, 17 Jun 2022 10:55:26 +0200
Message-ID: <bf7af9b5-51f7-0c9a-4c51-47ce042e1585@pengutronix.de>
Date: Fri, 17 Jun 2022 10:55:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: =?UTF-8?Q?Daniel_Br=c3=a1t?= <danek.brat@gmail.com>,
 barebox@lists.infradead.org
References: <20220615184147.365-1-danek.brat@gmail.com>
 <f5eb7b28-fa80-99bd-f75d-3cd48391e38f@pengutronix.de>
In-Reply-To: <f5eb7b28-fa80-99bd-f75d-3cd48391e38f@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_015527_571343_CAE55CBF 
X-CRM114-Status: UNSURE (   9.45  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3] ARM: rpi: parse useful data from vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 17.06.22 09:08, Ahmad Fatoum wrote:
>> +		pnum = xmalloc(sizeof(u32));
>> +		*pnum = num;
>> +		globalvar_add_simple_int("vc.boot_partition", pnum, "%u");

You could use setenv() with a format string instead, see Sascha's change to
the mailing list, this would simplify this chunk here.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


