Delivery-date: Fri, 19 May 2023 08:54:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzu0k-006OSs-HS
	for lore@lore.pengutronix.de; Fri, 19 May 2023 08:54:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzu0i-0005UQ-A3
	for lore@pengutronix.de; Fri, 19 May 2023 08:54:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=klopZo7kiGPHpGNUc3T1DuC2idt31BhsjV5dWUc/nog=; b=WIc781yn1y4JZUC7obeo93hqDX
	P2fY8hhsHV4nNkOxBntel3vuYVtVvAMKTgsvZD+BzUHGEwCaPnP0UBX+8LXQ87EK2nl3Alf5QIPBm
	ONSMkJ2GoOi7pKRC6H6vrJikbOHw+ZAyroVa0lad4lER4wgXI1dnegM8ySc5Dq2+QoWVqt6rN3ngM
	SP7BpujBVEpTxjlRB79M+9I8OYY3c2nCzyFtlaZQRLsCoiTjoKJzi57QulAQHRTSzytus7EDi778n
	Pdp5UkBn3ZnWbxVgivAljDxjzY9fgnEGExfh090pCZukFvZ+iHVqN0FWp5/Pz6udWmAfel2gbAfG1
	Io6PwsDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pztze-00FIxY-2r;
	Fri, 19 May 2023 06:53:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pztzc-00FIx2-1f
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 06:53:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pztzb-0005RT-8E; Fri, 19 May 2023 08:53:35 +0200
Message-ID: <8d824d8d-91d2-e0dc-ddb5-f51b7ea9fccc@pengutronix.de>
Date: Fri, 19 May 2023 08:53:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-32-s.hauer@pengutronix.de>
 <aa3708dc-e7eb-ec08-8607-2eaf0780a5ee@pengutronix.de>
 <20230517143935.GB29365@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517143935.GB29365@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_235336_556419_2C75FE66 
X-CRM114-Status: GOOD (  17.76  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 31/34] ARM: mmu32: read TTB value from register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 16:39, Sascha Hauer wrote:
> On Wed, May 17, 2023 at 03:58:01PM +0200, Ahmad Fatoum wrote:
>> On 17.05.23 11:03, Sascha Hauer wrote:
>>> Instead of relying on a variable for the location of the TTB which we
>>> have to initialize in both PBL and barebox proper, just read the value
>>> back from the hardware register.
>>
>> Why not initialize on first call to get_ttb()?
> 
> get_ttb() doesn't have access to endmem which we would need to get the
> address for the ttb.
> 
> Also we have the value in the hardware register, why not use it?

I meant initialization using the hardware register.

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



