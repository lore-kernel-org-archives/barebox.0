Delivery-date: Wed, 25 May 2022 10:53:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntmmE-008SZ7-8c
	for lore@lore.pengutronix.de; Wed, 25 May 2022 10:53:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntmmC-0000f7-H0
	for lore@pengutronix.de; Wed, 25 May 2022 10:53:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXQ+4C/MutjqSFYkejMf6aOxv0Pf8gc22y01UMGjwOw=; b=h8OX19ifObi81i
	5Wuwa+mcLAmL7l20l6QYPRNhXufK5Kz2bMDn83bef83XqnxCwnNcnnPKKB5RJL/Sa2G47SqMthDo0
	MbxOlUEdZv0EnwbqV9oPyG8z+wCPFdUSmqt36TTjCVJu0zBiyLeGx4oSGGhcf/70gba6hSZk96aJr
	Z3YgVDsxtXwp8w7F8Hd6wI2mPjZqS86TbrCnVgD0Xxdvf7FemhcQuDljxeT3gnbDIDIAL08HtlASy
	0paQj/jSLsosqXs/SVnlVX7xlCvq5eK2JiMVxV//gY0zavrDzlhz21BKP3xjT2rh9GnHblfi9wdUF
	GcJfeeNZ5Zib49m8jImg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntmks-00AUUH-42; Wed, 25 May 2022 08:52:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntmkn-00AUTd-In
 for barebox@lists.infradead.org; Wed, 25 May 2022 08:52:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ntmkl-0000ZP-Tr; Wed, 25 May 2022 10:52:27 +0200
Message-ID: <2219b846-67e1-ba45-cca2-11d304e55bcd@pengutronix.de>
Date: Wed, 25 May 2022 10:52:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20220524073048.18467-1-eagle.alexander923@gmail.com>
 <76dbfceb-1651-2659-7209-2c37c3f8f7d5@pengutronix.de>
 <CAP1tNvQVWjG1=jsJRh-eCpHzUPOct1BysgXQy-MxDvYkHFY6wg@mail.gmail.com>
 <1db17488-d759-712a-6014-8d2cde412474@pengutronix.de>
 <CAP1tNvTqa-qVTBCR1QQptsfvgTWsWNCEGSFG+ZnvNrBT62cabg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvTqa-qVTBCR1QQptsfvgTWsWNCEGSFG+ZnvNrBT62cabg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_015229_665672_71E6FE77 
X-CRM114-Status: GOOD (  14.13  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: DTS: myir-x335x: Add GPIO aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Alexander,

On 25.05.22 10:33, Alexander Shiyan wrote:
>>> Most likely this is the result of double inclusion of the file arm/am33xx.dtsi,
>>> first time from "am33xx.dtsi" and second from arm/am335x-myirtech-myd.dts.
>>
>> Hi, you need to include if after the upstream DT. That's why it doesn't have
>> a /dts-v1/;
> 
> Yes, if "am33xx.dtsi" is after <arm/am335x-myirtech-myd.dts>, it compiles fine.
> But in this case, upstreaming <arm/am33xx.dtsi> (from local
> am33xx.dtsi) overwrites
> any binding changes from the board file.

Argh. Other platforms (e.g. imx6q.dtsi) intentionally skip dts/ includes to avoid
just that... One could remedy that at the cost of annoying out-of-tree users, but
that's not something that you need to do IMO.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

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

