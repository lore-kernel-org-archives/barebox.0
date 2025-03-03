Delivery-date: Mon, 03 Mar 2025 09:58:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1dN-009Gln-2j
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 09:58:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1dM-00037e-JU
	for lore@pengutronix.de; Mon, 03 Mar 2025 09:58:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BMJKAyge6+HxqcEKc9jUx7TIibv3VVpvdUJaU2lR1y4=; b=UIYYVjskgKMG65BagL/vcJIevV
	7t4PWCzosTah8vGja4TsYSrymdPdvBt9dS6Hpn1yEo/7v9xTZvT1r9ffl7I6gKM0hy5eY3UnatTtz
	b89n2RkrtHe1Utj7rW/GTkpIGAGzPs8sHeD9LZZY/FMcCzuwML1WiyxPXb2Zwm0YQ97lYvKvuYx+R
	otzOslpzUeyB3JDGfxT3XIaMXDZwWiGR0+PxbKxqnnnxC43iu1MqRA+9GMzIdG2AWwCmPZYY8EVuu
	zwBhq1lJXYnO1U+em9+PFR4TbO7HawlqygTaSZt9Frkxrs3l9qqV8nVlsIF9rPEQMEqI3Up9ijOo7
	2uRUcTug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1cx-000000001v1-1Jpk;
	Mon, 03 Mar 2025 08:58:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1W6-0000000Hb7O-28gY
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 08:51:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tp1W5-0002C2-49; Mon, 03 Mar 2025 09:51:13 +0100
Message-ID: <0febcf92-f6b9-4717-a374-da93c1b4c205@pengutronix.de>
Date: Mon, 3 Mar 2025 09:51:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Jonathan Bar Or <jonathanbaror@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
 <174012323334.2354255.16758545638294107895.b4-ty@pengutronix.de>
 <CABMsoEGDcxSCSfdnV0B1dKvvJaQYBYhpAu2R_t31j5g_Q8fVBg@mail.gmail.com>
 <Z8AyD_cHzW_Wxcqz@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z8AyD_cHzW_Wxcqz@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_005114_546622_C3F5C29C 
X-CRM114-Status: GOOD (  18.54  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] Filesystem memory corruption fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 27.02.25 10:36, Sascha Hauer wrote:
> On Sat, Feb 22, 2025 at 12:46:18PM -0800, Jonathan Bar Or wrote:
>> Those are awesome, thank you.
>> We intend to publicly disclose March 19th, is that okay?
> 
> Well, this is a public list, so they are already disclosed...

In a way, yes, but most users will probably only find out about this
once their CVE tooling reports that they are using a barebox version
that doesn't fix e.g. CVE-2025-26722.

CVE-2025-26722 (and I assume the others) are reserved right now, but
lack a description of the issue and its possible security implications.

We should probably write down some extra policy here:

  - Should CVE numbers even be mentioned for yet-undisclosed issues?

  - An explicit policy about disclosure timeline. Bugs are fixed all the
    time and I think, it's desirable that disclosure is postponed until
    after a release, so users informed of the issue directly know
    what to do about it. For critical security issues, a point release
    can be done on short notice

@Jonathan, March 19th is ok for us, but we don't object to any earlier
date.

Cheers,
Ahmad

> Sascha
> 
>>
>> Jonathan
>>
>> On Thu, Feb 20, 2025 at 11:33 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>>>
>>>
>>> On Wed, 19 Feb 2025 15:18:39 +0100, Sascha Hauer wrote:
>>>> These are some fixes for memory corruptions that can occur on corrupted
>>>> or manipulated filesystems.
>>>>
>>>> In case you use one of the affected filesystems in a secure boot chain
>>>> you should apply these patches.
>>>>
>>>> Normally you shouldn't use a barebox filesystem in a secure boot chain,
>>>> but instead use FIT images on a raw partition. We never made this explicit
>>>> though. Ahmad has done this recently:
>>>>
>>>> [...]
>>>
>>> Applied, thanks!
>>>
>>> [1/5] CVE-2025-26722: fs: squashfs: Ensure positive inode length
>>>       https://git.pengutronix.de/cgit/barebox/commit/?id=6281a871e2c6 (link may not be stable)
>>> [2/5] CVE-2025-26724: fs: cramfs: fix malloc(size + constant) buffer overflow issues
>>>       https://git.pengutronix.de/cgit/barebox/commit/?id=f86e528c8fba (link may not be stable)
>>> [3/5] CVE-2025-26723: fs: ext4: fix malloc(size + constant) buffer overflow issues
>>>       https://git.pengutronix.de/cgit/barebox/commit/?id=51eea5c16fd2 (link may not be stable)
>>> [4/5] CVE-2025-26725: fs: jffs2: fix malloc(size + constant) buffer overflow issues
>>>       https://git.pengutronix.de/cgit/barebox/commit/?id=e7397340359d (link may not be stable)
>>> [5/5] CVE-2025-26721: fs: pstore: fix malloc(size + constant) buffer overflow issues
>>>       https://git.pengutronix.de/cgit/barebox/commit/?id=7563f5722dfd (link may not be stable)
>>>
>>> Best regards,
>>> --
>>> Sascha Hauer <s.hauer@pengutronix.de>
>>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


