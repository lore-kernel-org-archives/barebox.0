Delivery-date: Thu, 02 Feb 2023 10:48:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNWCX-00BEKt-M3
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 10:48:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNWCV-0002TQ-4f
	for lore@pengutronix.de; Thu, 02 Feb 2023 10:48:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a51LbPY5Foha4p7gcvDaNk3aqeHoPdLzlNrQAokMjHI=; b=oP30TpEPVQKLTamBxhd+PmVvCi
	q7r2xkV6Bl6T0xsfO8KxNIfOcvmYhhzczQxJeVLPGNFBq0nWQDudalgWMqqKjVgNDiwZKWTHFu7Hd
	oQY+c2QgXASbZyzpJQ/wgooepH2vkhMiH8Amr6n2dBWKTzWw/eTQVqBOBEY3LlUHt+r/9Bto0Ex+B
	P0SSsVU8QEPDjPGS802401RI1FDZphECNkdKnHW+v9QcnwV81kkFQ4aeENwCtezGER3Cfynzo+G2+
	0LzpC84l1AwTBH34oPPF/WpPHVyXY4t/TYFRTAUwxJKUxrbqsOhD73KZ2Bx6Zopg7aGqpzHIbT7LC
	5aSZ/CHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNWB7-00FEKE-Pb; Thu, 02 Feb 2023 09:46:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNW9T-00FDhU-SQ
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 09:45:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pNW9S-0001cW-4A; Thu, 02 Feb 2023 10:45:06 +0100
Message-ID: <3d53375e-2bdd-33e2-be09-6b6b0705105b@pengutronix.de>
Date: Thu, 2 Feb 2023 10:45:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Jookia <contact@jookia.org>, Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230201223404.1467998-1-contact@jookia.org>
 <20230202073948.GL13319@pengutronix.de>
 <Y9uDXGfxDzX5D9nz@novena-choice-citizen>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Y9uDXGfxDzX5D9nz@novena-choice-citizen>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_014507_967672_907D77DC 
X-CRM114-Status: GOOD (  18.55  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fs: nfs: Error if a port is unregistered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.02.23 10:33, Jookia wrote:
> On Thu, Feb 02, 2023 at 08:39:48AM +0100, Sascha Hauer wrote:
>> When this happens do we see a meaningful error message on the barebox
>> side? From a feeling I would say -ECONNREFUSED might be a better error
>> code, but I don't know if that's suitable for UDP connections.
> 
> Currently the error looks like this:
> 
> mounting failed with -110
> ERROR: nfs nfs0: probe failed: Connection timed out
> mount: Invalid argument
>     probe-> nfs0
> lookup mount port failed with -110
> ERROR: nfs nfs0: probe failed: Connection timed out
> 
> Now it looks like:
> 
> lookup mount port failed with -2
> ERROR: nfs nfs0: probe failed: No such file or directory
> mount: Invalid argument
>     probe-> nfs0
> 
> Not sure how this could be improved.

Add a pr_warn with a descriptive message?

> 
>> Sascha
> 
> John.
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



