Delivery-date: Thu, 25 Feb 2021 11:50:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFEDn-00074h-05
	for lore@lore.pengutronix.de; Thu, 25 Feb 2021 11:50:15 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFEDm-0002lw-76
	for lore@pengutronix.de; Thu, 25 Feb 2021 11:50:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9KsNU70mwodMj7z4NAt6eSeb6EpVpPVOuA+tU9xGW28=; b=KyYAmf7zwi1BIb+7Yb8o17dth
	6zEyGnp4+Ff1Z5rGOFjqQCV2PBUKcuBDONYy9MdqtCatKoM6kW3VE6wX8eGV1k2PKm8fjK1XFNiwz
	r6+GcZINqy0uuuNYOJTGb06CZTncpDRZKkjhXioaqif0xE811J0UQB7sQtOC8YtbJ328Rvqap2Fmc
	neG+FBPK77qLuPXg4te5EcqPWul7fYa1iwqqnnT6Qvsu5g/HckC+w/0sSR80a4FOZIViAXwU9cIgT
	wHQ4lYaJlhwO48W/A4W69xWnhXe0i+0oaYBkXQIpOX4017jUfEtWMUDbEShm6MgP9wMCqjxT98loB
	0EUiWjG1w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFECj-0004yK-1e; Thu, 25 Feb 2021 10:49:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFECe-0004xI-TO
 for barebox@lists.infradead.org; Thu, 25 Feb 2021 10:49:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lFECc-0002VD-Ha; Thu, 25 Feb 2021 11:49:02 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>
References: <20210216200208.5275-1-a.fatoum@pengutronix.de>
 <20210219165623.17c97e29dc8c2149986a3946@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <74653ab4-4d6e-62ce-7019-da66f85ccf68@pengutronix.de>
Date: Thu, 25 Feb 2021 11:49:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210219165623.17c97e29dc8c2149986a3946@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_054904_982126_F5A4B5B6 
X-CRM114-Status: GOOD (  15.98  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] Support large files on larger ext4 partitions on
 larger still USB disks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 19.02.21 14:56, Antony Pavlov wrote:
> On Tue, 16 Feb 2021 21:02:00 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi!
> 

>> Stuff that newly works:
>>  - Accessing all of a 2 TiB USB drive
>>  - Having multi-TB ext4 partitions
>>  - Having ext4 files larger than 2G
> 
> It looks like that your patch can help to solve my SATA-related problem:
>    https://www.spinics.net/lists/u-boot-v2/msg33156.html

Ye, I think so too. I didn't test the SATA/IDE code though, so it would
be great if you could before this lands in a release. There might be other
limitations I am not aware of. For USB, new SCSI commands have to be added
to support the bigger LBAs. I just sent out a series to support USB drives
exceeding 2 TiB.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

