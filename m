Delivery-date: Thu, 05 Dec 2024 14:41:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJC6V-004LJ5-2Y
	for lore@lore.pengutronix.de;
	Thu, 05 Dec 2024 14:41:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJC6V-0006Rh-NQ
	for lore@pengutronix.de; Thu, 05 Dec 2024 14:41:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:Cc:To:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2sz9nSdiCvTVqMQZQNxusWHZRuUFCBFXPCeg4n1FqSU=; b=THbYEjZJzdTLIDjSUBo6C8KKs5
	pDTGbCA/j+3l0WmswWK2fCyLOhx027ytkmvlx9yiU1VVOZEPbnJwGXZGq7TuxvzdNZ+nBTu1d51dn
	p739JmKF4j38Y6+5rALKSyvQxOidcJcexwHD2Oc4FCbpHPg79ZsJVTYFrszITIJhO6ivjA/HWgT25
	N4/6jT1P1f20yOColuR3RdcUeqN0p8j1wbkdDvp9ZvFQD/dvBEz4cNILJsWpsueQFnbD6S8O7HoyL
	cnx1gQuJaVF9qJ2+pp/9tQ27BVugwK1VY3ECdBfA3s/dNIxHOY5FAJHlXedcwJOHh14Z/iRRLZGrF
	aEjBKDMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJC5v-0000000GC0Z-1Iis;
	Thu, 05 Dec 2024 13:40:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJC5s-0000000GC08-2CLH
	for barebox@lists.infradead.org;
	Thu, 05 Dec 2024 13:40:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tJC5q-00064N-4F; Thu, 05 Dec 2024 14:40:34 +0100
Message-ID: <e81f5b48-02e9-423c-984e-b7dfa7753f27@pengutronix.de>
Date: Thu, 5 Dec 2024 14:40:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Oleksij Rempel <ore@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_054036_564457_09632270 
X-CRM114-Status: GOOD (  12.51  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: AXI ID 0x5c8 on STM32MP13
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

After a kernel update to v6.13-rc1, we have been increasingly seeing
following occasional OP-TEE (v4.2.0) panic:

  E/TC:0   dump_fail_filter:425 Violation @0xce01b000, non-secure privileged read, AXI ID 5c8
  E/TC:0   Panic at core/arch/arm/plat-stm32mp1/plat_tzc400.c:30 <tzc_it_handler>
  E/TC:0   TEE load address @ 0xce000000

This happens at kernel boot time, when loaded by barebox. The probability that
this happens, seems to be inversely proportional to how long the system
was powered off prior to Power-on reset...

The kernel /reserved-memory entry has a no-map entry for OP-TEE, so this
looks correct.

barebox maps the OP-TEE range as uncached and with eXecute Never set.
Indeed, if we jump to the OP-TEE memory directly, we get a prefetch error
from within barebox without hitting the firewall as expected.

If the barebox MMU is disabled and we try to execute from 0xce000000, we
get an expected panic from OP-TEE:

  E/TC:0   tzc_it_handler:26 TZC permission failure
  E/TC:0   dump_fail_filter:420 Permission violation on filter 0
  E/TC:0   dump_fail_filter:425 Violation @0xce000000, non-secure privileged read, AXI ID 4c0
  E/TC:0   Panic at core/arch/arm/plat-stm32mp1/plat_tzc400.c:30 <tzc_it_handler>
  E/TC:0   TEE load address @ 0xce000000

Note that this is a different AXI ID (0x4c0) than the one we see related
to the spurious read (0x5c8).

In order to further debug this, it would be useful to know which AXI master
has ID 0x5c8. The reference manual (RM0475) has Table 20. "NSAID and AXI_ID
mapping" in RM0475 but it contains no 0x5c8. 0x4c0 is expectedly the CA7
itself.

Can someone from ST please chime in with the information what AXI master
ID 0x5c8 maps to?

Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



