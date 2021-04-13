Delivery-date: Tue, 13 Apr 2021 21:12:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWOT4-0008Kn-DR
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 21:12:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWOT3-0001IN-LO
	for lore@pengutronix.de; Tue, 13 Apr 2021 21:12:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oJ4yI1vz0ysqvp3E5rZJyucoB/wKDQ3AbuKIcKGaOww=; b=TlCL//LSFBRK6JG537uHHMe5I
	vHSJ47j8wuHaHzYnaW9AU0lfsWOuFgLK6WxVquqV7o/g2rbl74W0xH18rFNx2LlwNEdQqlX5qES8u
	EYM2rjP8dFjTJQhB7aUMSqxDO78JrI4A/mrIHQ75pkcoKjY+DMG1r/ivg9aqarE18A4stfBRtyxlo
	+f3PMJU5u+5/osQdEuzdCQZh1p3T5eySk7AQhxvhoAY1lobvpHHV6/9VgYqA6vIztiE6mZaVsONz1
	C8U9a/c2Na4/12WLpVG6cJtZ3BZNcss4gFHfRMNyoYjEIbnycNMd5V1WHxRMUnL/meeIzOy4+suM0
	Is7k4oFUQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWORm-00ADpH-6P; Tue, 13 Apr 2021 19:11:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWONT-00ADGA-2C
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 19:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=OT5TTva05mwWslJypV8NCFRs47GZiTGSVk35iE84+Lc=; b=w85WfinowWRQfs5E9w/zQTQnqN
 Uw43nZanc1u8OQALG4fHgpVkxuer0GuBGwyp2COw8iAb2Il8EDr/h1HHAErGRCpha8LYGu/Md04+3
 +nv68jnojMshoC8iDuzaGgdDZaM5+lBofnBllO6pEyWw3V/eIXsjrD1022LwtL2YKoIDib9L/kupu
 gRAnDkIYQ7PuPytWZeCherKzUxwATroXGETVzfiR0yy8RtesvgS0GbJ7z/+M304MRHJIltbqJJYLr
 ISUmCB9aZ/g7KgdcCPeI3yU+cICZxZ7j78oVdOPOg6R2UcDZfEVRBYuFuDsue9tDYE8v3HjCc/5ly
 rMIX2j4g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWONQ-007Gxu-0G
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 19:07:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWONO-0000Zu-1w; Tue, 13 Apr 2021 21:07:06 +0200
To: Neeraj Pal <neerajpal09@gmail.com>, barebox@lists.infradead.org
References: <CANi4_RVykfmmyPAcDbBAz2O134kB8d7h0nzPr7H1o92jWBe6Ow@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <acf0a309-ab9c-c082-ccc1-358216a68232@pengutronix.de>
Date: Tue, 13 Apr 2021 21:07:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CANi4_RVykfmmyPAcDbBAz2O134kB8d7h0nzPr7H1o92jWBe6Ow@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_120708_097905_0FDAAC2F 
X-CRM114-Status: GOOD (  22.41  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: network configuration setup - dhcp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 13.04.21 19:07, Neeraj Pal wrote:
> Hi all,
> 
> I read the readme but not able to configure the barebox DHCP network.
> Tried setting up some environment variables like nameserver,
> server.ip, etc but not successful.

There is more documentation besides the README. For networking see
https://barebox.org/doc/latest/user/networking.html

> I have compiled and executed the barebox binary with or without root
> (through sudo) on Ubuntu 20.04 focal LTS
> 
> I was thinking to configure manually in the sdcard just like uboot
> setup then check for the network but still, this work is in progress.
> 
> Could someone please point in the correct direction where I just
> configure the DHCP and it will automatically load the network?
> So, that I can start using NFS.

The default barebox boot target is to net boot. It'll try to get
a DHCP address and then load some predefined files over TFTP
(If it fails, it'll tell you which ones).

If that didn't work, you'll need to tell more about your setup?
What board are you using barebox on?

Part of the question reads like you are using it while Linux is
running (sandbox) and some other like you'd run it directly as
bootloader. Also what kind of errors do you get, can you copy them here?

Cheers,
Ahmad

> 
> 
> thanks,
> Neeraj
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

