Delivery-date: Mon, 13 Jan 2025 10:22:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXGeO-000XiL-0o
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 10:22:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXGeN-0004Lv-Nu
	for lore@pengutronix.de; Mon, 13 Jan 2025 10:22:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wjH+OkXr5Bg794tr1faQnEva+o1D0QCSpJBKiXRHmh4=; b=VTU2zyhYrnLqZHGkY7oeH+3JoL
	XliLYQGVx46JoHzdzMgE+MCwn5Hx1rwPPzzbyxy/wYe89YuJ6zLQEaOxy5zQapmzHIq7JRADyoxLv
	TjA23E+ssV+ZUAMSB2Fhr2HGJVAD2sU+ixrqzAgWWoukY0yG5AIHIw//n5JXusqAYzVXbQNnq7JFN
	hRsaQnBTHEhItV/HRD37rr4iJjDYWN9yg+g0opPM3j5wnDY+Pfi+cZ3SCfOgeDvyY+mg8Yuny4i1j
	CtS+JpnHRd2XIkWpYHpP7pjU6Z7+Ri0PnvilFhhac6Gy42kwh1n2z0arWo5azdzbKoUDWgVO2mOPm
	uG70A5Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGdh-00000004aEM-0AGs;
	Mon, 13 Jan 2025 09:21:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGXj-00000004YxG-3QHY
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 09:15:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXGXh-0003PK-4O; Mon, 13 Jan 2025 10:15:29 +0100
Message-ID: <3e4b8561-9216-406d-b227-fcb2953cfaaf@pengutronix.de>
Date: Mon, 13 Jan 2025 10:15:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <DM5PR07MB35326945A0F013DF45CE9C77EC132@DM5PR07MB3532.namprd07.prod.outlook.com>
 <2aa13c0d-1820-4f9a-a52e-95917f19f632@pengutronix.de>
 <DM5PR07MB3532C9D58C2D8848C7F08136EC1C2@DM5PR07MB3532.namprd07.prod.outlook.com>
 <f8c0ecb3-6c8e-4d09-b258-8f898ec744f1@pengutronix.de>
 <DM5PR07MB35323C5ACC09A936C91F8450EC1C2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <DM5PR07MB35323C5ACC09A936C91F8450EC1C2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_011531_857331_1B664031 
X-CRM114-Status: UNSURE (   8.78  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: parted crash on NVME storage on LS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Renaud,

On 10.01.25 17:50, Renaud Barbier wrote:
> All good now:
> barebox@LS1046A RDB Board:/ parted nvme0n1 mklabel gpt
> Created new disk label with GUID 00dc0465-aa1f-ad4d-9ada-e5ac1b1e5f13
> barebox@LS1046A RDB Board:/ parted nvme0n1 unit MB mkpart linux ext4 1MB 1026MB
> barebox@LS1046A RDB Board:/ parted nvme0n1 print
> Disk /dev/nvme0n1: 447.1 GiB
> Partition Table: gpt
> Number      Start           End          Size     Name
>    0            1MB        1025MB        1024MB   linux

Thanks for reporting the breakage and testing the fix.

Cheers,
Ahmad


> 
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


