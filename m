Delivery-date: Sun, 02 Oct 2022 09:17:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oetEK-0039Ms-9x
	for lore@lore.pengutronix.de; Sun, 02 Oct 2022 09:17:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oetEJ-0002QI-8a
	for lore@pengutronix.de; Sun, 02 Oct 2022 09:17:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r5YvOgpkJky0O9UIfjpxgl7DGN6Ash6L9ohxlXWlhsc=; b=DqsBCKt5roBDz3YQU06J7CnSjK
	k5wL8IZfOwFoAR7gSaPBziOZANDPPxbEKT4ZsRCDlSv8qEm9HE47PcVNMciVTFhcwbPry5TgBdnwL
	lAvfHjA25gaX9zx1j61bteu18uNnlZwwVOPlMQW54y0u5ZHBCSjT5NyGPSlR8/SVvhlhhh+BRV/ah
	s2rRJqtvKWlRibBlVblQZtfo1IHs10DzRx8Ao0K0PkibK+yI8G+nZVMdg/NLIEQrCQdlcm2A1ywUd
	V/u3Wd/3ntxAkKlfLESUIpxGRlHUcQjSjCXgPeuKiFQxAtv5OgKIgrn6pYGmXO6bU2A7NTY3ZK+am
	aRTb7X6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oetCR-000APv-RD; Sun, 02 Oct 2022 07:15:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oetCL-000AO2-TU
	for barebox@lists.infradead.org; Sun, 02 Oct 2022 07:15:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oetBv-00021X-Pp; Sun, 02 Oct 2022 09:15:11 +0200
Message-ID: <5da3593c-1607-9075-e1ac-1e384fd62b93@pengutronix.de>
Date: Sun, 2 Oct 2022 09:15:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Borislav Petkov <bp@alien8.de>
Cc: hpa@zytor.com, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Dave Hansen <dave.hansen@linux.intel.com>,
 x86@kernel.org, Jonathan Corbet <corbet@lwn.net>,
 barebox@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20220513143039.2065756-1-a.fatoum@pengutronix.de>
 <YzjDHOWkIoWF+h/R@zn.tnic>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <YzjDHOWkIoWF+h/R@zn.tnic>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221002_001537_956811_63A6C70A 
X-CRM114-Status: GOOD (  16.52  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Documentation: x86: boot: reserve type_of_loader=13 for
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 02.10.22 00:45, Borislav Petkov wrote:
> On Fri, May 13, 2022 at 04:30:39PM +0200, Ahmad Fatoum wrote:
>> barebox built as EFI payload has been booting Linux on x86 with
>> type_of_loader=0xff since v2015.09.0.
> 
> What is barebox?
> 
> That https://en.wikipedia.org/wiki/Barebox ?

Yes.

> 
> That version number v2015 - am I to understand it that it has been
> booting Linux since the year 2015?
> 
> In any case, it would be useful to explain a bit what it is here.

Release cadence is monthly. Starting with release v2015.09.0,
type_of_loader=0xff was being used. I figured it's about time, we
allocate an ID for it.

> 
>> Reserve 13, the next free id, so this can be used instead.
> 
> Sure, I guess, why not.
> 
> Thx.
Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


