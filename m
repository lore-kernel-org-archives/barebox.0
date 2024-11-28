Delivery-date: Thu, 28 Nov 2024 10:24:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGakv-001Obd-1j
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:24:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGakv-0004L1-Do
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:24:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+6MuXAaFpup97SE42izQDFdAb8Bk3d9Facbd9QV5raw=; b=fAg+GzoM77qlEf6FFqL8ARbR1O
	IM88vE5B6rA27Bmoun5fBXxJ3EwNx4Cn2JG5NoiNPMZOoBRF0yuP3HiUYqcWbdMb4drrgIQoEjmmB
	5sC3R48WQC5bBhUomn1CofTbpqvSKIJBQB5IkxTIhIGj89KOYzYf1bO3ToGRNJDYn0vmhp14BGlHf
	cI7XeGlUqdAocVn8cVmwSxSf1ixd782jLNdx8pPpi2WRVLryOyL52wPDA34F9K2jRjMptmnQpa/qF
	2pv5JXyoR+n9IId/Rktf5SC5+TzmDLn5PSMEy6WDoQoMjyqxmMgGORh/DSl1Ok8e6gmIDfB8fiUgn
	D4Maky4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGakV-0000000F8Iq-0Ybq;
	Thu, 28 Nov 2024 09:23:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGakS-0000000F8Hy-2wG2
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:23:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tGakR-0004C4-Cn; Thu, 28 Nov 2024 10:23:43 +0100
Message-ID: <73aa9481-8c76-4aee-a1dd-76959582988c@pengutronix.de>
Date: Thu, 28 Nov 2024 10:23:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20241125152024.477375-1-a.fatoum@pengutronix.de>
 <20241125152024.477375-3-a.fatoum@pengutronix.de>
 <Z0gzAEmURo3Iv5Cn@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z0gzAEmURo3Iv5Cn@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_012344_740373_41A17A75 
X-CRM114-Status: GOOD (  17.20  )
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
Subject: Re: [PATCH 2/5] hardening: support zeroing all malloc buffers by
 default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 28.11.24 10:08, Sascha Hauer wrote:
> On Mon, Nov 25, 2024 at 04:20:21PM +0100, Ahmad Fatoum wrote:
>> dummy malloc doesn't free and all allocations are in freshly sbrk()'d
>> memory, which already zero.
>>
>> +config INIT_ON_ALLOC_DEFAULT_ON
>> +	bool "Enable heap memory zeroing on allocation by default"
>> +	depends on !MALLOC_LIBC
>> +	help
>> +	  This has the effect of setting "init_on_alloc=1" on the kernel
>> +	  command line. This can be disabled with "init_on_alloc=0".
>> +	  When "init_on_alloc" is enabled, all page allocator and slab
>> +	  allocator memory will be zeroed when allocated, eliminating
>> +	  many kinds of "uninitialized heap memory" flaws, especially
>> +	  heap content exposures. The performance impact varies by
>> +	  workload, but most cases see <1% impact. Some synthetic
>> +	  workloads have measured as high as 7%.
>> +
>> +config INIT_ON_FREE_DEFAULT_ON
>> +	bool "Enable heap memory zeroing on free by default"
>> +	depends on !MALLOC_DUMMY && !MALLOC_LIBC
>> +	help
>> +	  This has the effect of setting "init_on_free=1" on the kernel
>> +	  command line. This can be disabled with "init_on_free=0".
>> +	  Similar to "init_on_alloc", when "init_on_free" is enabled,
>> +	  all page allocator and slab allocator memory will be zeroed
>> +	  when freed, eliminating many kinds of "uninitialized heap memory"
>> +	  flaws, especially heap content exposures. The primary difference
>> +	  with "init_on_free" is that data lifetime in memory is reduced,
>> +	  as anything freed is wiped immediately, making live forensics or
>> +	  cold boot memory attacks unable to recover freed memory contents.
>> +	  The performance impact varies by workload, but is more expensive
>> +	  than "init_on_alloc" due to the negative cache effects of
>> +	  touching "cold" memory areas. Most cases see 3-5% impact. Some
>> +	  synthetic workloads have measured as high as 8%.
> 
> These verbatim copies of the kernel help texts do not seem appropriate
> for barebox.

Agreed. I was intending to change them, but forgot about it :/

Will fix in v2.

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


