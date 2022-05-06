Delivery-date: Fri, 06 May 2022 14:22:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmwym-003iRO-9R
	for lore@lore.pengutronix.de; Fri, 06 May 2022 14:22:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmwyk-0000OD-Nx
	for lore@pengutronix.de; Fri, 06 May 2022 14:22:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHJW66UUUrx0FyNRlyPytq2xF/eGTppC/VnqSGtjBTc=; b=LCpIUpC69KkCWO
	4GHnWgQfMnvCUt/KvCrnPicMOD4D2/d7LLTB2W0yUWFl3Bro9s5XGxvcitfkZqBZoWhdcb/4f+aV6
	+NlPt7dWpEVjCyDniCFX7PBThGUdAKwADuWUNnsEUJ4Hc6qwmgegUv9Q3M44sZ/YOXI4Jlh/04Cgn
	MkEloAg/ZbpTA42TxyE79oRCi45Ofq4pcccCyJs873o4kSWsa9u7k9D5NhyjStPC7JMkQPgh8bG45
	lH8qYvhiJUGpABiiD1UES7UseAuUeOQUNzJmiryTIM4j6F2eqrQ7QVrAqc5zAFQfkVlinhkB1nMXc
	/bPwcLvst6iiqe23f7lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmwwM-0038Pl-SE; Fri, 06 May 2022 12:20:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmwwI-0038Ok-Bm
 for barebox@lists.infradead.org; Fri, 06 May 2022 12:20:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nmwwG-0008Kz-QH; Fri, 06 May 2022 14:20:04 +0200
Message-ID: <4df2b2cc-8153-43f8-ee79-86f3423563d7@pengutronix.de>
Date: Fri, 6 May 2022 14:20:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <Ym6y6LXmdC9h3u4n@Hephaistos>
 <6d70e56b-1d6f-64dd-65f5-c8235803d6db@pengutronix.de>
 <YnE4zTD4Klact2eQ@Hephaistos> <20220505070602.GG4012@pengutronix.de>
 <YnN7wHE7AgE0FC0h@Hephaistos> <20220505082507.GM4012@pengutronix.de>
 <YnObAylvwzObEn+2@Hephaistos>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <YnObAylvwzObEn+2@Hephaistos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_052006_449114_48289520 
X-CRM114-Status: GOOD (  17.24  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Boot from SD if SD-Card is present - Beaglebone Black
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Konstantin,

On 05.05.22 11:38, Konstantin Kletschke wrote:
> On Thu, May 05, 2022 at 10:25:07AM +0200, Sascha Hauer wrote:
> 
>> Several partitioning tools set this automatically, but not all it seems.
> 
> I got it. The partitions are created via sfdisk. No PARTUUID.
> 
> If I change the disk identifier with fdisk afterwards, the partitions
> magically also get PARTUUIDs. This can be scripted (by me):
> Something like
> fdisk /dev/mmcblk1 
> x
> i
> 0xaffedead
> r
> w
> 
> 
> Problem solved, with this the bootloader spec is working and I will
> implement that!

Great that you got it working. I'd still suggest that CONFIG_MMCBLKDEV_ROOTARG=y
be used for new projects with new kernels an with the same aliases hardcoded in
barebox and Linux. PARTUUID might be the best thing you can on x86 without
an initramfs, but we have device tree, so why not make use of that to
be absolutely sure bootloader and Linux address the same partition.

Cheers,
Ahmad

> 
> Regards
> Konsti
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

