Delivery-date: Mon, 13 Jan 2025 12:18:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIT9-000Zm3-0d
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:18:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIT8-00051o-Jd
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:18:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kku+0OIIqRhZPXnsa0p+hUylEDv3aS3/wCp3RzA+pt0=; b=aFghTwpjkCPSWE5jPrS/CVRFXn
	BHjVvot8MCHxuL1a+ubwcXqspZuiBXCQ9CoJ5ZT6/gBww97C33L5TKCCM5ndpbOQQ+Ng6JJS9Vdek
	2KruPEGnz5mq9NJzncByNhsTeYwnqgKxpobcGsBLfIHNoJaj2Z8AHcMaRUa01HiOGvRCevtSMxYDi
	MZ+g7Q2KbdulwCNSSzsJpo1pCLsZfLXkrP+xiq809BFRsaoWEvTCrcsXJjATmJwU/xit6/Jl/uRfc
	Txq4u3No9B6Zn6UvCoUzSo4UC3cZtXPAlxoc54vc5QeswC/udIfHkieLvQb5NmvGxxdi8pSDgFKOC
	r8St3Rcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXISd-00000004sTq-48Yh;
	Mon, 13 Jan 2025 11:18:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXISa-00000004sTD-2nKi
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:18:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXISZ-0004wo-EE; Mon, 13 Jan 2025 12:18:19 +0100
Message-ID: <28c492e7-028f-4247-be7f-3edf699578fa@pengutronix.de>
Date: Mon, 13 Jan 2025 12:18:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <DM5PR07MB3532BD01391995069161C80BEC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <DM5PR07MB3532BD01391995069161C80BEC1F2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_031820_705923_34566BB5 
X-CRM114-Status: GOOD (  19.69  )
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
Subject: Re: nvme sanitize command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Renaud,

On 13.01.25 11:57, Renaud Barbier wrote:
> I would like to add a nvme sanitize command to the barebox. Something like "nvme sanitize" where at first the only option is block erase.

That would indeed be useful to have.

> I have a level of understanding on how admin commands are passed to the device through the /drivers/nvme/host/[core.c|pci.c.]
> Looking at the parted command, I am not sure how it goes from the command call to the partition layer support (EFI or DOS) to the driver.
> 
> I see that Linux make use of an ioctl to trigger the sanitize command. 

We do have ioctls on cdev in barebox, but we also have an actual erase
operation, so I prefer we use that instead.

> How would you approach the introduction of this new command?
> Any help is appreciated.

I did something similar recently with SD/MMC[1], which also have special commands for
erase.

In short, I would suggest you extend nvme_block_device_ops in drivers/nvme/host/core.c
with a new .erase operation and use that instead of creating a new ioctl.

Erasure is then possible manually via the erase command.

As second step, we can then discuss if we should call it automatically before
partition table write.

Note that the erasure types supported by barebox are currently:

  ERASE_TO_WRITE: Mainly applicable to raw flash
  ERASE_TO_CLEAR: Reading will return a fixed pattern and not any stale data

You may want to add a third option:

  ERASE_TO_DISCARD: A hint to the storage medium that we don't care for the data
                    in the erased region and reads from that region are allowed to
                    return arbitrary values until written again.
                    Useful for wear leveling.

I suspect that last erase type is what you are interested in (perhaps with a better
name?)

[1]: https://lore.barebox.org/barebox/20240731080510.364706-1-a.fatoum@pengutronix.de/

Cheers,
Ahmad

> 
> Renaud
> 
> 
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


