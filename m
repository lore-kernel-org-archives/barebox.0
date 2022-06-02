Delivery-date: Thu, 02 Jun 2022 08:53:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwehj-000Hs1-Us
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 08:53:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwehi-00076L-Gp
	for lore@pengutronix.de; Thu, 02 Jun 2022 08:53:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYquBPZY/Em7FXyNolxUcZ/P/Wz0CGFvtzf0V+7hADE=; b=T1G5c+gQKH3ar2
	zArpGNXi9T48bcxTm3avO9fUf2O+MFIR2EH8XlF6H1W86WJa06Ikj5zX63nvj5KKStEz793JEbL6z
	w7ug452U4ZkbHm8/t5Artl5feIJTksDh+kpwhEUosGr7kQDMZ/nseVYlX9LXjquzNxlSdqHCBjO/y
	Wq5mLtygf9DPdcyGRf0mEBOLImGGgrDibEpQ25oinc9QqHY/Q6J/DGr0DOuy+ZM1IP1Yp06oii1ug
	EA50U3q2PEN6aGJUOo6c3mj5bJIsBJT1FI8k/82/YyE0bN60JFsQEeDEuzJqCnsfDbxijON457EJ0
	FLuW0jwUKUZKvvWWyoVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwegd-001tPN-0m; Thu, 02 Jun 2022 06:52:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwegX-001tNi-N1
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 06:51:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1nwegU-000704-NV; Thu, 02 Jun 2022 08:51:54 +0200
Message-ID: <ef1662e1-327e-3443-cc6e-7d956c55a5a2@pengutronix.de>
Date: Thu, 2 Jun 2022 08:51:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>,
 Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
References: <20220601060226.3756-1-eagle.alexander923@gmail.com>
 <20220601060226.3756-3-eagle.alexander923@gmail.com>
 <20220602064726.GD1615@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220602064726.GD1615@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_235157_847145_57330557 
X-CRM114-Status: GOOD (  17.56  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/5] ARM: boards: Fix unconditional compilation of
 imx51-babbage directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.06.22 08:47, Sascha Hauer wrote:
> On Wed, Jun 01, 2022 at 09:02:23AM +0300, Alexander Shiyan wrote:
>> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
>> ---
>>  arch/arm/boards/Makefile | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
>> index d303999614..042b27a804 100644
>> --- a/arch/arm/boards/Makefile
>> +++ b/arch/arm/boards/Makefile
>> @@ -47,7 +47,7 @@ obj-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		+= eukrea_cpuimx51/
>>  obj-$(CONFIG_MACH_ELTEC_HIPERCAM)		+= eltec-hipercam/
>>  obj-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3ds/
>>  obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3ds/
>> -obj-y						+= freescale-mx51-babbage/
>> +obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-babbage/
> 
> This change was intentional. The board code exports imx51_babbage_power_init()
> which is used by the zii-imx51-rdu1 board code as well.

FWIW, we have added common/boards/ since then, which can be used for
such functions.

Cheers,
Ahmad

> 
> Sascha
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

