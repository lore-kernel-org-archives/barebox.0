Delivery-date: Wed, 18 Oct 2023 11:08:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt2X7-00CoB9-QF
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 11:08:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt2X6-0002KG-KB
	for lore@pengutronix.de; Wed, 18 Oct 2023 11:08:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=00D3lfxGRPSRhmQfFCcro/WbJRMMY1/n4a+YqtiXdtk=; b=YLZ6ePwbzQns/w/fzB5nLiLSJH
	BP2Q1D0dyFVNH4E6pdmUGofdRC4j3eIZSLNCyyPq1AJE7vLXBboEcmr4OGo5amnOynzJX+QNOpa2D
	zfJD06dCNu0cHTkIWSRuHCn7TQVnY+BuBd19Tk+xmWF0ro+WPsCKZL3Fz8u3txmHQTvdmliQaD/Rg
	5kgwYesT5qzVABVurOdlk5N1fDqlWmCKQpYgLJBeX1Vi+1dvxxou50KOTzy8kJgsc4MDqGUrzEqCt
	iYRVkzlA5Z/j+xQBA7e72pBS+dO5cm8NxTZaTi2QNjggGu7EOPxQ9rM6atZiI9FG7XlPk3yQLgZf3
	RZ6EJEWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt2Vu-00EEj9-1W;
	Wed, 18 Oct 2023 09:06:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt2Vr-00EEiR-0B
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 09:06:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qt2Vo-00028U-WD; Wed, 18 Oct 2023 11:06:45 +0200
Message-ID: <52fa194d-441c-8827-00ac-49db2cd72661@pengutronix.de>
Date: Wed, 18 Oct 2023 11:06:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: =?UTF-8?Q?Hans_Christian_L=c3=b8nstad?= <hcl@datarespons.no>,
 Barebox List <barebox@lists.infradead.org>
References: <EE0A8E0F-465F-46D1-A366-676E9047EA0C@datarespons.no>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <EE0A8E0F-465F-46D1-A366-676E9047EA0C@datarespons.no>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_020647_116624_495B4711 
X-CRM114-Status: GOOD (  15.25  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: IMX8M and Optee support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Hans,

On 18.10.23 10:11, Hans Christian Lønstad wrote:
> Just reaching out to ask whether anyone has successfully integrated Optee on the IMX8M(P) platform.
> Our trials results in a crash when the ATF (NXP 2.8) does the handover to Optee (exit EL3).
> 
> In ATF it appears that BL32 is expected to load at 0x56000000 on IMX8MP while Barebox actually loads
> The Optee bin blob just below top of memory.
> (Patching Barebox to the expected ATF BL32_BASE does not resolve the issue)
> 
> Any help would be appreciated

I am using OP-TEE in an i.MX8MN project successfully. The hardcoding of addresses
is indeed unfortunate and it needs manual adjustment depending on the size
of available RAM.

The common configuration is to reserve secure memory at the end of DRAM as not
to split the RAM in half. You should thus change the BL32 address used in TF-A
in alignment with barebox CONFIG_OPTEE_SIZE, which is always relative to the end
of RAM.

Let me know how it goes.

Cheers,
Ahmad

> 
> Hans Christian Lønstad
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



