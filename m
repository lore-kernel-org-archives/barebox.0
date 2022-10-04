Delivery-date: Tue, 04 Oct 2022 18:36:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofku3-005kq3-6B
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 18:36:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofku1-0003Rg-JF
	for lore@pengutronix.de; Tue, 04 Oct 2022 18:36:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m9h6QH7Lmwo1bZ3sYijXIUQMc/Q2Bl3ciAwq1wRXAgs=; b=yaBRE/MihC1yaij+bKobp2uqjS
	K5UhhK2DSLDR1IINYMpJr/KkKC1keHJ3yIlbaEbJ+H7y2IfC5TvTOWnWoa0EL4WzsRKfs2MlQ3FyL
	GjbVuTOvZldBYbTX0I1T+gQehwP1QiR33Kt9X5LorJuZNXhF1yCT1ZsxJ8YUQ+axKIPHR73+OAqff
	igYSxcuNBQo7aNUoA1fUzT4CZVjb0YcDZf0Fr4jydUVEIC0aYJGLgo8VqMoWsjdK154EHfP2sajK7
	IS72btUDvnlgs3QG8mmnJm0+uvZCB2u58rzxzEDDfaxNZ6GO/KxgwCko+QCKaWg7HDtZhtsKI+vBf
	QUcRmagA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofksh-00ADTM-9q; Tue, 04 Oct 2022 16:34:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofksc-00ADST-D3
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 16:34:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ofksY-00039r-RX; Tue, 04 Oct 2022 18:34:46 +0200
Message-ID: <d0ab47b8-dc15-f9e5-acb9-1f2f6dcbc98c@pengutronix.de>
Date: Tue, 4 Oct 2022 18:34:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
 <lyr0znzhfm.fsf@ensc-pc.intern.sigma-chemnitz.de>
Content-Language: en-US
In-Reply-To: <lyr0znzhfm.fsf@ensc-pc.intern.sigma-chemnitz.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_093450_501598_54E3E14D 
X-CRM114-Status: GOOD (  16.69  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] tlsf: use 8-byte alignment for normal malloc
 allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Enrico,

On 04.10.22 18:23, Enrico Scholz wrote:
> Ahmad Fatoum <a.fatoum@pengutronix.de> writes:
> 
>> TLSF currently uses only 4-byte alignment on 32-bit platforms, which isn't
>> enough for ldrd/strd on ARMv7. This series reworks TLSF a bit, so we always
>> have at least 8 byte alignment.  dlmalloc already has 8 byte alignment
>> minimum, so nothing to do there.
> 
> I am wondering whether alignment should be increased on 64 bit archs to
> 16 bytes as well.  ARMv8 spec [1] says
> 
> | exclusive pair access must be aligned to twice the data size, that is,
> | 128 bits for a pair of 64-bit values.
> 
> A github issue [2] mentions this alignment too.

Your quote is addressing exclusive pair access, which I think is something
a compiler would generate for lock-free __int128 access, not something that
we should encounter in barebox.

But yes, I believe we should have 16-byte alignment on 64-bit systems with
TLSF as we already do with dlmalloc, if only to be on the safe side.

This is unfortunately more complicated than what this PR does with 32-bit,
so I am leaving that as future exercise (or until we have a real world
example where this is required in barebox).

>> While this fixes real issues like what Enrico ran into, I'd suggest we only
>> this be taken into next only after v2022.10.0 is tagged,
> 
> This is ok for me; the issue disappeared with reverting the zstd patch.

Feel free to give it a test with the zstd patch reverted though. :)

Thanks,
Ahmad

> 
> 
> 
> Enrico
> 
> Footnotes:
> [1]  https://developer.arm.com/documentation/den0024/a/An-Introduction-to-the-ARMv8-Instruction-Sets/The-ARMv8-instruction-sets/Addressing
> 
> [2]  https://github.com/mattconte/tlsf/issues/16
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


