Delivery-date: Wed, 30 Jul 2025 14:42:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh68h-005GLO-0r
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 14:42:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh68g-0006A4-Jz
	for lore@pengutronix.de; Wed, 30 Jul 2025 14:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T6Ohma9Itq4fCik/jPyxrxDkO9YytKbEgbD6kd0U7eQ=; b=a94Nm7k96zfBhMNrGm+se+PyCh
	szNGHEYXlGDDUlP0ppC2A3+b8ffxDTEQ+2IDO4UrXtgZkZzhIzsunsGjAfaBGt9b60Wpk9Gay7nya
	rFHG39Nq2NWsyMvDg3a5ON4NOLh2cIi2DwJ/Evp2LV6GM8rqW59sO+tY6Xgid2OeWCS5in88h9XBe
	Pued6AFwjXniWRJ0AjtMhqZLAFbyU3qOVFvD3ASNWDdyQZgDqoSN5WdPoNLuKtAhqo4N/iO68FdEU
	slvqIc0zGGyXmVInhbkftVaeF8k80s2UOXAfsyEMOLHCr50vdk/kwUzU68GLayQvtv3g+mcq7+J8Z
	6HowBYCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh68G-00000001UZp-0YI8;
	Wed, 30 Jul 2025 12:42:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh66Y-00000001UPl-2kO7
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 12:40:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh66W-0005ms-UP; Wed, 30 Jul 2025 14:40:20 +0200
Message-ID: <bbc6d12d-4c8a-463a-ae7e-8b2f36afebb9@pengutronix.de>
Date: Wed, 30 Jul 2025 14:40:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>,
 barebox <barebox@lists.infradead.org>
References: <8JK70T.9NOP3AIQTVWR@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <8JK70T.9NOP3AIQTVWR@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_054022_691902_494D334D 
X-CRM114-Status: GOOD (  21.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: fixed partitions issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Stefano,

On 7/30/25 12:45, Stefano Manni wrote:
> Dear all,
> 
> I'm encountering an issue with fixed-partitions on spinor with
> v2025.07.0 that
> was not there in v2025.01.0.
> 
> The partitions are configured as follows:
> 
> partitions {
>     compatible = "fixed-partitions";
>     #size-cells = <1>;
>     #address-cells = <1>;
> 
>     barebox: partition@0 {
>         label = "barebox";
>         reg = <0x0 0x0100000>;
>     };
> 
>     barebox_env: partition@100000 {
>         label = "barebox-env";
>         reg = <0x0100000 0x100000>;
>     };
> 
>     barebox_state: partition@200000 {
>         label = "barebox-state";
>         reg = <0x0100000 0x100000>;

The first cell is the start address, so this should be 0x200000, not
0x0100000.

>     };
> };
> 
> It seems to me the partition offsets (0, 0x100000, 0x200000) are not
> taken into account

The unit address in the node name is never parsed as address, neither in
barebox or in Linux. What's in reg is what matters.

> so the results is that all the partitions point to the same piece of
> memory. That's how I tested it:

The devinfo command without arguments will show you the start/end
address of all partitions.

> Do you have any hint? After the changes on drivers/of/partition.c
> between v2025.01.0 and v2025.07.0

I don't know how it worked before, but that DT description is buggy.
What changed is that barebox doesn't refuse identical partitions, it
just makes the dupes a link to the first registered.

Do you maybe have board code that calls devfs_add_partition()?

The output of devinfo in both versions would be useful as well to
understand this.

> shall I need to change something in my dts?

It should work after fixing the reg properties. There has been changes
around the partition handling stuff, but they affected only fixed
partitions in eMMC/EEPROM. The MTD binding is an upstream binding and no
intentional changes happened here.

Cheers,
Ahmad

> 
> Best,
> Stefano
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



