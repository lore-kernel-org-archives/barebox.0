Delivery-date: Tue, 02 Sep 2025 11:04:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utMwC-007Dyv-0v
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 11:04:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utMwB-0001V2-1Z
	for lore@pengutronix.de; Tue, 02 Sep 2025 11:04:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kM30tW+ehzHHb+e8/TvWPb6kyZxxagZgJEaEKR/d6Vw=; b=u8IAiGIuNdIAqtJLExPtEiM2K7
	E6FH+M9PvaODFJyuM6bVre0r2T+/1Mnua7aBOmSLS4P+TYVjAHsYU+ubwEOSME/g9+6dT4crY4JPG
	eXeevBRpe0xLloVqT5BUB64Q9yWvtVoETezd2UgBSa2V/ZOjx0+lmxlvBoiOuFN33ZKiLXApHErBI
	V4fK0zlF34PBoy/idl3I4rYneh67L3Qo+efhmSefPMApH71v/0rmWnOoDw7k/Sm1JZaPTizRRhKB5
	RMZTsnQkOJjlSlc2mh0lIYKxJuTXotgleHnzvKn60oiNR8QSFpCXG6MXTBp6KYZsRew1iGTbLJyrQ
	t6tUr3OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utMvI-0000000GF84-1auC;
	Tue, 02 Sep 2025 09:03:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utMZL-0000000G7Fm-0ZNV
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 08:40:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1utMZH-0005k3-IF; Tue, 02 Sep 2025 10:40:43 +0200
Message-ID: <7c59b735-a223-47a3-99ae-227617aee4fa@pengutronix.de>
Date: Tue, 2 Sep 2025 10:40:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <aLFk86Wk1uSR0JQl@pengutronix.de> <87h5xo3p9r.fsf@waldekranz.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <87h5xo3p9r.fsf@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_014047_182818_1E7EFE2B 
X-CRM114-Status: GOOD (  21.36  )
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
Subject: Re: [PATCH 0/5] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 8/31/25 9:48 AM, Tobias Waldekranz wrote:
> On fre, aug 29, 2025 at 10:29, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> We are sort of in the same boat. We wrap our rootfs in an FIT header,
> just because that is the only format U-Boot knows how to verify. After
> verification, we strip off the header, mount it, and then sysboot from
> it, with the kernel and DTBs in /boot on the squash.
> 
> Just shipping the fs with verity data (+ possibly FEC, in the future)
> and a signature would be _so_ much nicer.

FEC with verity indeed sounds interesting. Apparently, it can go beyond
fixing occasional bit flips on read to even recover completely lost
blocks[1].

For the latter case, someone will need to implement some "blkhealthd"
that reads regularly and fixes up bit errors in the backing device.
Would also mesh nicely with retention on the medium itself as it gives
e.g. the eMMC a chance to correct ECC on infrequently used data before
it's completely irrecoverable.

[1]:
https://android-developers.googleblog.com/2016/07/strictly-enforced-verified-boot-with.html

>> Well I am very open for adding DM and dm-verity support to barebox. We
>> would likely have done it anyway at some point, but that could have
>> taken some time.
> 
> Cool! I did a toy implementation in Python yesterday, just to convince
> myself I understood how it works, and it was actually very straight
> forward. So if this series is eventually merged, I hope to follow up
> with an implementation of dm-verity pretty quickly.

Did you consider porting dm/dm-verity from the kernel instead and
decided against it?

I imagine there's a lot that would need to be dropped/adapted, but
having the same general structure may prove useful in future when adding
new device mapper targets. I can understand though, that for dm-verity
it may turn out to be easier to reimplement the functionality (which is ok).

Cheers,
Ahmad



> 
>> Sascha
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



