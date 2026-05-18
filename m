Delivery-date: Mon, 18 May 2026 13:00:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvhf-0016gz-0E
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 13:00:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvhe-00010R-99
	for lore@pengutronix.de; Mon, 18 May 2026 13:00:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZ2tWb4Tjnh0WKpGs0WWI1r1pX1FsVihMOBOlP6rswc=; b=BcTUByQwmRBKpz
	YmBt7ikRw3kcp9j8VTAwsjcxyEcmFM0YeQm2ry7h3dbzyCVc6RTHiNp8uQH7lC5HsuwKSIGnHpj2z
	DawJgwnMarp1j4nFf4xxTMHGoilkiJ8U8vBdX+kC7nLDMqZq2Tsr8nDm5pEDCoELnEsShYSP7mWP2
	/D4haPUG+C79+/yB5GLjouZa8wrDE+LnW+9to8sKIFQVANYqgIwj0nwnOInmUT88Yu5LtAcZVuEBz
	gLgb1i24adwuD0t2ONDfSDv6FAVovnKrXKVtacFGYdsx3nX/eVbFDxSLRdPf4Me70A0lE89HySfT7
	rVPnbq0zIgQVEohgAPYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvgX-0000000FLiD-1nOs;
	Mon, 18 May 2026 10:58:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvgW-0000000FLhh-0llD
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 10:58:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=BZ2tWb4Tjnh0WKpGs0WWI1r1pX1FsVihMOBOlP6rswc=; b=j2w8YkD96bGC8E94HEANCcUM6R
	HPI5kzEjAQyHjINFD9liJuoOA7b5KSMbAV+W7B1Xopa0q+dY4cx8PB+zxGT/g8XJ647celnlNPpEF
	5bMk7PN8Mx3sH+1X5JdfjQpgWDpnp+WuQ5Av6ZZpv94bmJbHPPg1eOYuUJ2G3SyfhPyNXdsCYsu2S
	6mbQqxqFsOWz4PtFwAD0bF6g98uNvWWZtqqIHI22mnWhbbW+0p+l8IDEniHehucext48JZl8TM0za
	9CIowShUjRDIe6ENaRWxXs/KcuoxrtZY6vyQvH60k9vHLuHYglay7V/msxPnU9sBW9AtBeJC/opYG
	Adc58z8g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvgR-0000000AqfS-36c8
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 10:58:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOvgR-0000qp-1K; Mon, 18 May 2026 12:58:51 +0200
Message-ID: <341bb5e6-2977-491b-9076-8d5bedf85c03@pengutronix.de>
Date: Mon, 18 May 2026 12:58:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mark Diener <markdiener10@gmail.com>
References: <CAC3g_BFiUrH19_yab4Bn+jNAH9akcupYAvvbzbZh++SiDap4Ng@mail.gmail.com>
 <32dbf417-df9b-4084-914a-37216e2ea64f@pengutronix.de>
 <CAC3g_BGjw58QYiEbTEqrZtm-qZ78ireKAk_2yWArYWkd4VoDJQ@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAC3g_BGjw58QYiEbTEqrZtm-qZ78ireKAk_2yWArYWkd4VoDJQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_115852_323927_85ADD031 
X-CRM114-Status: GOOD (  33.06  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: ENV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 5/18/26 12:50 PM, Mark Diener wrote:
> Hello Ahmad & Sascha:
> 
> I am able to boot bzImage, but I cannot get it past the root= error
> 
> My disk (USB, ssd, etc) is partitions with vfat32 (EFI/ESP) and ext4
> (rootfs)
> 
> My bootscript has:
> 
> global.autoboot_timeout=5
> global.bootm.verbose=1
> global.bootm.earlycon=1
> global.bootm.image="/mnt/disk0.1/boot/bzImage"
> global.bootm.boot_dev=PARTUUID=12345678-1234-1234-1234-123456789ABC

global linux.bootargs.yourroot="root=PARTUUID=12345678-1234-1234-1234-123456789ABC"

provided that's indeed a correct PARTUUID.

If you want to use global.bootm.boot_dev, set it to a barebox device path
(e.g. /dev/usbdisk0.1) and additionally enable global.bootm.appendroot=1,
so barebox dynamically determines the correct PARTUUID.

> global.linux.bootargs.myroot="console=tty0 earlyprintk rootfstype=ext4

Drop the first . as to use the global command which creates new variables.

global.x=y -> sets existing variable x to y
global x=y -> creates new variable x and sets it to y


Cheers,
Ahma

> rw rootwait"
> 
> Cannot seem to get past /dev/root: Can't open devblock error
> 
> PXL_20260518_100418240.jpg
> 
> Any guidance appreciated,
> 
> Mark
> 
> 
> Mark Diener
> LinkedIn <https://www.linkedin.com/in/markdiener/>
> 
> 
> On Mon, May 18, 2026 at 4:53 AM Ahmad Fatoum <a.fatoum@pengutronix.de
> <mailto:a.fatoum@pengutronix.de>> wrote:
> 
>     Hello Mark,
> 
>     On 5/14/26 11:53 PM, Mark Diener wrote:
>     > Is there better resources to detail how to properly understand the
>     > details behind /env/  (its creation and components)?
> 
>     What are you missing in the official documentation?
> 
>     > I cannot get the barebox.efi to actually execute the /env/bin/init
>     script.
> 
>     Scripts in /env/bin are added to PATH, so you can execute them by just
>     their name (instead of their full path), but they are not automatically
>     executed.
> 
>     If you want a script to be executed automatically at init time, add it
>     into /env/init/.
> 
>     > bareboxenv seems like a utility that would be involved.
> 
>     If you want to modify the script from Linux, yes. bareboxenv is also
>     used by barebox itself during the build process and can be used to bake
>     a built-in environment into barebox.
> 
>     That's the preferred way of shipping the default environment.
> 
>     What do you want to do in your init script?
> 
>     > Also, when I bootm my bzImage, it hangs up and seems to lose track of
>     > mounting the storage so it just stops processing.
> 
>     Hanging as in seeing a
> 
>       Kernel panic - not syncing: Attempted to kill init
> 
>     ?
> 
>     If so, you must have barebox add a root= option to inform the kernel
>     where it can find its rootfs.
> 
>     You can try it out manually using:
> 
>     global linux.bootargs.myroot="root=<insert your root device or PARTUUID,
>     ..etc. here>"
> 
>     > My barebox.efi is launching, but tripping on properly have the
>     > /env/bin/init directory established
> 
>     /env/bin/init is an optional init script you can provide. I just Cc'd
>     you on changes to the docs that make this clearer.
> 
>     Putting your init scripts in /env/init/ is what you are likely after.
> 
>     Cheers,
>     Ahmad
> 
>     >
>     > Any comments appreciated,
>     >
>     > Marco
>     >
>     >
> 
>     -- 
>     Pengutronix e.K.                  |                             |
>     Steuerwalder Str. 21              | http://www.pengutronix.de/
>     <http://www.pengutronix.de/>  |
>     31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>     Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



