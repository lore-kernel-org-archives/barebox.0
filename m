Delivery-date: Mon, 19 Jan 2026 12:42:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnen-00315T-0c
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 12:42:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhnem-00063w-7e
	for lore@pengutronix.de; Mon, 19 Jan 2026 12:42:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1PZbGZLB3BzH0OEzJX4vvFirNEYwCb+xYE4/0VRn7AI=; b=NTTsC/DZgdnFw8iOjRy5z7MVkJ
	5CwBjAHbB0OcFvwRdNUv6+DaKWB5OuzCz9KkXVgzZxDXngaI1M/4Qp7Qvdpr923o6R0Sxm2KwWawz
	jFdIPBck+Qq1Iutx1QvEpOC9dUxMOUylS5chcNFVSJVT43hjLQfhHYEbOhL41gbMOdsH5FJQtHNbs
	lIRwDXOcTD/XvFNHp2kOtheXbSpzgJZnmt9/6QFfTcB2QfHt1ium+HGqyzS0ZGqm5ie4qzKGhcnTg
	EbtLtQSM3VCR9reLYxU5ISM8a7O3y4q/xNJUXTzVZsKHhGBU+8F2eLyLsm2AwaJ4qpimUDirXlotQ
	+MU+pO4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhneB-00000001ujI-0Q2J;
	Mon, 19 Jan 2026 11:42:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhne8-00000001uiv-1OLk
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 11:42:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vhne6-0005uL-Jr; Mon, 19 Jan 2026 12:42:10 +0100
Message-ID: <6841771d-0b43-4872-9aef-b2e63a837121@barebox.org>
Date: Mon, 19 Jan 2026 12:42:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260116101404.3954872-1-a.fatoum@barebox.org>
 <aW4U4_oW-TftHzGa@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@barebox.org>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aW4U4_oW-TftHzGa@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_034212_402340_A713DFAB 
X-CRM114-Status: GOOD (  11.80  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: py: add dry run check for FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/19/26 12:26 PM, Sascha Hauer wrote:
> On Fri, Jan 16, 2026 at 11:14:03AM +0100, Ahmad Fatoum wrote:
>> A dry run should not alter system state in a way that would inhibit
>> normal operation or repeated dry runs.
>>
>> The FIT image boot in the test suite, however, reduces the VFS root's
>> reference count beyond the initial value before the bootm.
>>
>> This leads to a warning on boot that can be reproduced by repeating the
>> dry run multiple times:
>>
>>   FAILED test/py/test_fit.py::test_fit_dryrun -
>> 	AssertionError: ['WARNING: at fs/fs.c:255/mntput()!',
>> 			 'WARNING: refcount for mount "/" becomes negative']
>>
>> Add a regression test for this issue.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>> ---
>> @Sascha, given that you introduced the warning, maybe you are interested
>> in looking into this? :-)
>> I am not sure if it's 9PFS related. It's reproducible with:
> 
> No, it's not 9pfs related. It's the O_TMPFILE creation that bites us
> here. I've sent a fix.

Thank you!
Ahmad

> 
> Sascha
> 



