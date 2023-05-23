Delivery-date: Tue, 23 May 2023 09:23:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MMa-00AUc6-98
	for lore@lore.pengutronix.de; Tue, 23 May 2023 09:23:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MMY-0003LC-19
	for lore@pengutronix.de; Tue, 23 May 2023 09:23:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QRV8fNl+lNEThAVhsLhVGnYszQjpHEKS1arT94QetmE=; b=GhPJouLTyBcG9IUk4zDTNudS/7
	z/1cp0LmV2J+Dc/pKfrgccAfUqctyou263BIOnBIIGquVHT6mz2CmYk28qn0xpi37jrDN7Fox9BUl
	MxpKdbDmM6MJ9keoULO46PZ3hiDYIWhXydd5FZ57OYOK7V0/I9ljA0auUhfjXIoXEjP0YnZcT/h4D
	Z8Hei5+gLj6+M6cz/SFKoisArEtxaTO3TmJyMQWN5rjzt2h1oyq9Hq1sRet61ynZXVHkiAk5eeUsN
	cajyKTK5b74X1kiBFvNB8Iby03UlDZMN5Xj7I9C2l1HAuvWYCTIaOZynsueG3eFK3d2/jUvPefKxa
	FyVZcTBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MKV-009CgE-1x;
	Tue, 23 May 2023 07:21:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MKP-009CfI-2P
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 07:21:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q1MKO-00036K-6Q; Tue, 23 May 2023 09:21:04 +0200
Message-ID: <c97b168b-a703-a0fa-ed71-cb3d298d6b95@pengutronix.de>
Date: Tue, 23 May 2023 09:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, rcz@pengutronix.de
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
 <20230522052835.1039143-3-a.fatoum@pengutronix.de>
 <20230523071753.GD17518@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230523071753.GD17518@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_002105_785064_4BBCC9DA 
X-CRM114-Status: GOOD (  20.52  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 02/11] mmu: add physical address parameter to
 arch_remap_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23.05.23 09:17, Sascha Hauer wrote:
> On Mon, May 22, 2023 at 07:28:26AM +0200, Ahmad Fatoum wrote:
>> ARM32 has map_io_sections for non-1:1 remapping, but it's limited to 1M
>> sections.  arch_remap_range has newly gained support for 4K granularity
>> remapping, but supports only changing attributes and no non-1:1
>> remapping yet. In preparation for adding this missing feature, adjust
>> the prototype.
>>
>> No functional change.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/cpu/mmu_32.c          | 25 ++++++++++++++-----------
>>  arch/arm/cpu/mmu_64.c          |  8 +++++---
>>  arch/arm/include/asm/mmu.h     |  2 +-
>>  arch/powerpc/cpu-85xx/mmu.c    |  7 +++++--
>>  arch/powerpc/include/asm/mmu.h |  2 +-
>>  include/mmu.h                  |  9 ++++++---
>>  6 files changed, 32 insertions(+), 21 deletions(-)
>>
>> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
>> index e4607d99fd2a..68336fc68be0 100644
>> --- a/arch/arm/cpu/mmu_32.c
>> +++ b/arch/arm/cpu/mmu_32.c
>> @@ -253,20 +253,23 @@ static uint32_t get_pmd_flags(int map_type)
>>  	return pte_flags_to_pmd(get_pte_flags(map_type));
>>  }
>>  
>> -int arch_remap_range(void *start, size_t size, unsigned map_type)
>> +int arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
> 
> The prototype is changed here, but not its caller in the same file.
> Fixed that up.

I don't have a caller in the same file. Everything should have been switched
to remap_range by now, except for remap_range's implementation itself.

If you added another arch_remap_range callsite in your MMU patches, please
change it on the previous commit.

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



