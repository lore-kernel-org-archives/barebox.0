Delivery-date: Wed, 30 Aug 2023 16:26:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbM9Z-00EjFU-GV
	for lore@lore.pengutronix.de; Wed, 30 Aug 2023 16:26:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbM9W-0005nH-W7
	for lore@pengutronix.de; Wed, 30 Aug 2023 16:26:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tsa3P1CevVZI6oTWzWuS5zY+WXs4VOvU1LnNkxRbGn4=; b=0GUo2Lepm/JUffjjRNtriFSxva
	h7XsL3TXWnkBX8GrTqm6Em9gI5dHqrbOpOJZUeqgDDb9CS4HA/mN5/0wDc6YG36RhjndRWADEDZOW
	0yq2kuoNj79ZCFNuTeViTIeG+pzXb6vJWVF0X4dU3ECpWyhsj0DNJDhC4IF5C0I9rU//0+ZwYRlP9
	uQ4jxBtQMqN6Z77bQGWwMUxLTdWSq5Sfnt59b+FMZEVIZhcYg7YoffS0HfOJieKdZL1OA4vBNslQ5
	nqJLhJIQ+wX3M7QlRspxTaQZGLDcEuDc0hzC9mjVjex+RSDff+EMWWb5BpIeSHKF7VwIholfQxGQ+
	RhkAL15Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbM8G-00DfaN-2q;
	Wed, 30 Aug 2023 14:25:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbM8C-00DfZN-2o
	for barebox@lists.infradead.org;
	Wed, 30 Aug 2023 14:25:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qbM87-0005XJ-9T; Wed, 30 Aug 2023 16:25:11 +0200
Message-ID: <76a7bbec-5dff-c138-5c70-9b152558fe2f@pengutronix.de>
Date: Wed, 30 Aug 2023 16:25:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvThyufaTqyj8smDj89WeDeh-cggusnRYKMjB0ExAZ=94g@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvThyufaTqyj8smDj89WeDeh-cggusnRYKMjB0ExAZ=94g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_072516_930601_013B2DE8 
X-CRM114-Status: GOOD (  18.89  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: imx8mm & genimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Alexander,

On 30.08.23 16:02, Alexander Shiyan wrote:
> Hello.
> 
> I can't figure out how to correctly write the configuration for
> genimage for the imx8mm CPU.
> This way of writing works fine:
> dd if=barebox-nxp-imx8mm-mgqs.img of=/dev/sdc bs=1024 seek=33 skip=33
> 
> For genimage I use the following but it doesn't work...

What doesn't work? I would have assumed that genimage refused to build
an image with below description.

> 
> image imx8mm-mgqs-sdcard.img {
> hdimage {
> partition-table-type = "gpt"
> }
> 
> partition boot {
> image = "barebox-nxp-imx8mm-mgqs.img"
> holes = {"(0; 33K)"}
> offset = 0
> partition-type-uuid = 0fc63daf-8483-4772-8e79-3d69d8477de4

I don't think a GPT partition can exist at offset 0, because that would
overlap the GPT header itself. What you want instead is either:

  - add barebox in non-partitioned space outside of the partition table:
    That is done with in-partition-table = false, see e.g. DistroKit[1]

  - add barebox in a GPT partition at the correct offset (32K?) and strip away
    its first 32K bytes. The only way to achieve this currently with genimage
    is to add an explicit file rule and use
    exec-post = "dd ... of=$IMAGEOUTFILE.skipped && mv $IMAGEOUTFILE.skipped $IMAGEOUTFILE"
    It would surely be nice to give genimage a partition { skip = [...] } option,
    if you feel inclined :-)

For eMMC, the barebox update handler will take care to switch on the
eMMC boot and install barebox and do any skipping of bytes if necessary (e.g. on i.MX8MN/P).

[1]: https://git.pengutronix.de/cgit/DistroKit/tree/configs/platform-v8a/config/images/imx8m.config?h=next&id=d4e41181cc388d528bbccb5e9ba96a6120980a55

Cheers,
Ahmad
    

> }
> 
> partition env {
> image = "/dev/null"
> offset = 8M
> partition-type-uuid = 6c3737f2-07f8-45d1-ad45-15d260aab24d
> size = 32K
> }
> 
> partition root {
> image = "rootfs.ext4"
> partition-type-uuid = b921b045-1df0-41c3-af44-4c6f280d3fae
> }
> }
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



