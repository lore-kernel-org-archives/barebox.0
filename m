Delivery-date: Thu, 30 Mar 2023 13:46:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phqjy-002hXD-A7
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 13:46:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phqjx-0002fw-VB
	for lore@pengutronix.de; Thu, 30 Mar 2023 13:46:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nxy4/pw7LB2jOsuvJLT92Zk7Aiw1fNAUDlKMFchnNQo=; b=bKJAQcOKo4BksWMTBToaYH9Bwi
	lP19eZ1cho0NChNlIyND75tOoNJeS4XcPoMIJhKHZSBLATavjUxe9GjLNj/gU9x7TPlUjLD+YaXUb
	7GhnNZfRzFPO+VFgGBS32hQElRrp8csz2VZEbN9jAKPOjfoDEqJGl3gvwlpjlwFffuRyVx/a8zyQH
	No/BmzURPqtpbHUA30J3RDwpWbDmFn+AK0g10U5w90OGx5s0iGCkO7zTFtP20/q9yDnEFq388ffMv
	Z699rrwQzpzcx62978bWBWf8mlVniPbNjPmI+L7kbdoPLSvagew+UJNckvJ+/XntvffGCmZXPHFy/
	RxbgbCsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phqiu-003fir-2y;
	Thu, 30 Mar 2023 11:45:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phqis-003fhV-0v
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 11:45:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1phqiq-0002NH-PD; Thu, 30 Mar 2023 13:45:40 +0200
Message-ID: <9b5975a7-8b1d-0861-ce01-9206a3ddfc7d@pengutronix.de>
Date: Thu, 30 Mar 2023 13:45:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <BL0PR07MB5665003604A904B8AFBEB466EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <BL0PR07MB5665003604A904B8AFBEB466EC8E9@BL0PR07MB5665.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_044542_327551_7B896D08 
X-CRM114-Status: GOOD (  16.73  )
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
Subject: Re: LS1021A performance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,


On 30.03.23 13:34, Renaud Barbier wrote:
> Hello,
> I am looking into the performance of the LS1021A between Linux and Barebox and a PPC P1014

> On Linux:
> [root@openware]# time md5sum /tmp/mtd0
> 26d8158619e5791859519654557aeeba  /tmp/mtd0
> 
> real    0m0.029s
> user    0m0.025s
> sys     0m0.001s
> 
> This is almost a 20 fold difference.
> 
> From my In-Circuit-Emulator, the cache is enabled on both Linux and Barebox. My guess it that it comes down how the MMU is used.
> Any input on how to speed up the boot loader would be appreciated.

Can you compare SHA256 instead and see if the difference is still as stark?
Make sure that CONFIG_DIGEST_SHA256_ARM is enabled.

Do barebox and Linux run at the same CPU frequency?

Cheers,
Ahmad

> 
> Cheers,
> Renaud
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



