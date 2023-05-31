Delivery-date: Wed, 31 May 2023 09:28:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4GG2-003wZy-2s
	for lore@lore.pengutronix.de; Wed, 31 May 2023 09:28:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4GFz-0007Dr-Lc
	for lore@pengutronix.de; Wed, 31 May 2023 09:28:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yXz7HvOBD2G/puZ3Qj+d6Y4cedzAc1339ewptq8LVrs=; b=4ciTkfs/O8RHVfo9RLtD54icyt
	z8AFAfhNXZ2Rs7xo5fo/QUxiqdaZr4H0+i1Lp3omkiSxbbs5Vh1KNp0WPV4SiWxz7v4V/vjMDnnEF
	nl5naxvIVRrz2UJMQKXdDd7IRiPhBg1z0foU2h8TlyC0InI0CwuKdey5B7i+8cT1muuDCYzemeG81
	oH/A+5GWc+tSsEuLeVk/GqgkDAFg/3PUemUAqz386621Co9WQI2HRX7W/K+tqgxliTVXVPhCl+jGF
	oFkAJI4n59uuzq+OiwDOVvkJ/AmkpTFelxVHWZHbEgRWbur2BB88QjE5JZlFPH1Tq10YQxyVi0Dkg
	tTLGIpHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4GEr-00GQzq-1W;
	Wed, 31 May 2023 07:27:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4GEo-00GQyB-0b
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 07:27:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4GEj-00073m-N6; Wed, 31 May 2023 09:27:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4GEj-0001zl-CT; Wed, 31 May 2023 09:27:13 +0200
Date: Wed, 31 May 2023 09:27:13 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230531072713.GE17518@pengutronix.de>
References: <20230523094035.3452447-1-a.fatoum@pengutronix.de>
 <20230530123845.GA15436@pengutronix.de>
 <CAK7LNAQ1jB-r+gKtL-=+dKZ=7jz3yB0BD4vuS4YWOcya=NDw7g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAK7LNAQ1jB-r+gKtL-=+dKZ=7jz3yB0BD4vuS4YWOcya=NDw7g@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_002718_221167_AF4E6A4B 
X-CRM114-Status: GOOD (  19.09  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] efi: payload: iomem: add commented out #define DEBUG
 1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 31, 2023 at 12:38:20AM +0900, Masahiro Yamada wrote:
> On Tue, May 30, 2023 at 9:38 PM Sascha Hauer <sha@pengutronix.de> wrote:
> >
> > Picked some outdated address from Masahiro, so once again:
> 
> 
> The macro name is misleading - perhaps, it should have
> been named as __is_defined_as_1().
> 
> I do not know if __is_defined() is future-proof.
> IS_BUILTIN, IS_MODULE, etc. are official,
> but __is_defined() is internal.

Yes, it looks like __is_defined() is meant to be used internally by
Kconfig, nevertheless it's getting more users in the kernel:

arch/arm64/include/asm/cpufeature.h:408:        return __is_defined(__KVM_VHE_HYPERVISOR__);
arch/arm64/include/asm/cpufeature.h:414:        return __is_defined(__KVM_NVHE_HYPERVISOR__);
arch/arm64/include/asm/kvm_nested.h:9:  return (!__is_defined(__KVM_NVHE_HYPERVISOR__) &&
arch/powerpc/include/asm/vdso/timebase.h:54:    if (__is_defined(__powerpc64__))
arch/s390/include/asm/nospec-branch.h:17:       return __is_defined(CC_USING_EXPOLINE) && !nospec_disable;
arch/s390/kernel/nospec-branch.c:67:            if (__is_defined(CC_USING_EXPOLINE))
arch/s390/kernel/nospec-branch.c:70:    } else if (__is_defined(CC_USING_EXPOLINE)) {
drivers/crypto/sahara.c:356:    if (!__is_defined(DEBUG))
drivers/crypto/sahara.c:408:    if (!__is_defined(DEBUG))
drivers/crypto/sahara.c:429:    if (!__is_defined(DEBUG))
drivers/usb/host/sl811-hcd.c:1290:              if (__is_defined(VERBOSE) ||
include/linux/pgtable.h:1605:#define mm_p4d_folded(mm)  __is_defined(__PAGETABLE_P4D_FOLDED)
include/linux/pgtable.h:1609:#define mm_pud_folded(mm)  __is_defined(__PAGETABLE_PUD_FOLDED)
include/linux/pgtable.h:1613:#define mm_pmd_folded(mm)  __is_defined(__PAGETABLE_PMD_FOLDED)
security/smack/smack_lsm.c:2911:                if (__is_defined(SMACK_IPV6_SECMARK_LABELING))

Maybe we should move __is_defined() somewhere else so that it can
officially be used.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


