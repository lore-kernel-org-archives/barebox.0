Delivery-date: Thu, 16 Jan 2025 12:16:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYNr4-000ZoA-3C
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 12:16:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYNr5-0007PW-48
	for lore@pengutronix.de; Thu, 16 Jan 2025 12:16:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PEjnTrQo8Bf5haN3LVmE71C4XAa6iwSRoTwOh2E0ciQ=; b=B32nkCSr+tH48Wpxg7uw2/Lt1N
	jejIS0sFY1V75fBipQQYusbb5BUkf3aCi8FXRWcvlW5RUFUGVvScRsyPDnnQNB2t3rERfUaETp7TG
	GSI4deMJJT7L2tAHm/6SkTh1rCy1Ya6GAkiflksKynIfeTi+DoQZ47G3K/Pm973Z+zLzHvES93E1n
	Mcu112RjCfi2s1i2paR6QHUR/qOslMNFVSFzBcp7m6y5N+o4blikk3MpAkHUj44WL0IR0it1zD5wY
	hky84ZzPC3Z/j/d1xrA24Kq89cbvWu/ZcTdYfHnniSW58Z/4AGz44mvVe7WdERlok+M/54ng/PNL2
	yzrV9hoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYNqg-0000000Ei0D-2Qs2;
	Thu, 16 Jan 2025 11:15:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYNqd-0000000Ehzk-1GEn
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 11:15:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYNqc-0007M3-33; Thu, 16 Jan 2025 12:15:38 +0100
Message-ID: <367c134c-8614-47a0-8e84-0ccda8d01b62@pengutronix.de>
Date: Thu, 16 Jan 2025 12:15:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <DM5PR07MB3532F89A244DCCEEB887707DEC1A2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <DM5PR07MB3532F89A244DCCEEB887707DEC1A2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_031539_344460_4653F7DB 
X-CRM114-Status: GOOD (  16.23  )
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
Subject: Re: Subject: [PATCH 0/1] Initial NVME storage erase operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Renaud,

On 16.01.25 11:52, Renaud Barbier wrote:
> This patch introduces the erase entry point for the NVME storage.
> It uses the nvme sanitize command 2 for a low level block erase
> of the entire device as start and end blocks cannot be specified.
> 
> Note that in the current state, the user should first remove existing
> partitions with the command 'parted rmpart' as they will stay dangling
> in barebox device nodes and mount points.

Thanks for your patch. Your mailer seems to have mangled the series
a bit:
   - The patch is not a reply to the cover letter
   - "Subject: [PATCH 0/1]" ends up in the commit message title

I think Sascha can fix it up on apply, but jfyi, you can use b4 with barebox
now, including the kernel.org web relay:

https://b4.docs.kernel.org/en/latest/contributor/send.html#authenticating-with-the-web-submission-endpoint

This takes care to send patches unmangled by corporate IT.

Cheers,
Ahmad
  

> 
> Renaud Barbier (1):
>   nvme: add erase operation through sanitize command
> 
>  drivers/nvme/host/core.c | 82 ++++++++++++++++++++++++++++++++++++++++
>  drivers/nvme/host/pci.c  |  2 +
>  include/nvme/types.h     | 38 +++++++++++++++++++
>  3 files changed, 122 insertions(+)
>  create mode 100644 include/nvme/types.h
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


