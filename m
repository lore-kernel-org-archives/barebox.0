Delivery-date: Tue, 23 May 2023 09:28:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MRn-00AUth-KR
	for lore@lore.pengutronix.de; Tue, 23 May 2023 09:28:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MRk-00041E-ST
	for lore@pengutronix.de; Tue, 23 May 2023 09:28:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=93tq2vqDCnvwwzMSBy+S+FPeDEXw+g6PlYijV3irS6A=; b=ZYsxf3Fqqbt9uCKUY9UbNvp0Xu
	TpZYIy5VYM1W7FUVJzQxLkQlAXa908DI8UD/Ox5jY0Sz/prZlucV+tx/mRY6pO73Tzj3x2jr0l1th
	CBSCFyDFghlnhu/05X07/ytBIBmGmpCGS3OV+qiZ51ZwdBAbWN89drteNmjnd8wqZpPZV9BPxhixV
	BNU/DA7ySQJHOJEwboYhmUm61SuEOxIRAjJFBTalQvVAHYEx6s473EMW3vyB0hqt0hSerkfm923NA
	5QU70US2ZjRuXYdTnf5ygTFnNme3vnzBsh7TtcWYmrZqwIGbqSuR6GAlYxYZJcbBWVFR4HOCqvAFv
	KGjQwBVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MQT-009DXk-15;
	Tue, 23 May 2023 07:27:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MQM-009DWu-3A
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 07:27:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1MQI-0003ww-EQ; Tue, 23 May 2023 09:27:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1MQH-0002e5-Fn; Tue, 23 May 2023 09:27:09 +0200
Date: Tue, 23 May 2023 09:27:09 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, rcz@pengutronix.de
Message-ID: <20230523072709.GG17518@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
 <20230522052835.1039143-3-a.fatoum@pengutronix.de>
 <20230523071753.GD17518@pengutronix.de>
 <c97b168b-a703-a0fa-ed71-cb3d298d6b95@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c97b168b-a703-a0fa-ed71-cb3d298d6b95@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_002715_044869_4B14DC25 
X-CRM114-Status: GOOD (  27.04  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 02/11] mmu: add physical address parameter to
 arch_remap_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 23, 2023 at 09:21:03AM +0200, Ahmad Fatoum wrote:
> On 23.05.23 09:17, Sascha Hauer wrote:
> > On Mon, May 22, 2023 at 07:28:26AM +0200, Ahmad Fatoum wrote:
> >> ARM32 has map_io_sections for non-1:1 remapping, but it's limited to 1M
> >> sections.  arch_remap_range has newly gained support for 4K granularity
> >> remapping, but supports only changing attributes and no non-1:1
> >> remapping yet. In preparation for adding this missing feature, adjust
> >> the prototype.
> >>
> >> No functional change.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  arch/arm/cpu/mmu_32.c          | 25 ++++++++++++++-----------
> >>  arch/arm/cpu/mmu_64.c          |  8 +++++---
> >>  arch/arm/include/asm/mmu.h     |  2 +-
> >>  arch/powerpc/cpu-85xx/mmu.c    |  7 +++++--
> >>  arch/powerpc/include/asm/mmu.h |  2 +-
> >>  include/mmu.h                  |  9 ++++++---
> >>  6 files changed, 32 insertions(+), 21 deletions(-)
> >>
> >> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> >> index e4607d99fd2a..68336fc68be0 100644
> >> --- a/arch/arm/cpu/mmu_32.c
> >> +++ b/arch/arm/cpu/mmu_32.c
> >> @@ -253,20 +253,23 @@ static uint32_t get_pmd_flags(int map_type)
> >>  	return pte_flags_to_pmd(get_pte_flags(map_type));
> >>  }
> >>  
> >> -int arch_remap_range(void *start, size_t size, unsigned map_type)
> >> +int arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
> > 
> > The prototype is changed here, but not its caller in the same file.
> > Fixed that up.
> 
> I don't have a caller in the same file. Everything should have been switched
> to remap_range by now, except for remap_range's implementation itself.
> 
> If you added another arch_remap_range callsite in your MMU patches, please
> change it on the previous commit.

Yes, right. I changed that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


