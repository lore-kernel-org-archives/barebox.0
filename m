Delivery-date: Thu, 13 Oct 2022 11:05:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiu9t-007BSB-2q
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 11:05:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiu9q-00032h-Rb
	for lore@pengutronix.de; Thu, 13 Oct 2022 11:05:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=s1bhxvPjxRcriZlr5bihR8WAc3GYpTHIdTNuPvd6a2k=; b=44sXtM9o4dvNqlrYMfMBOKfLqr
	+URPdMUIrXRVCszx98rZQFlAGIv6oL7j8kaKYrIEKQZAd6OK3uC3GkOOUuMchk1Bosg+zkFDoLK5i
	lRVyVjdf9AmYpGafpC2I3+CNReJhwipNrHjEcL6kMo8GVB6zNmRYOKAO6zzskCLrtf/nTvIh/4plS
	uZ8ERGHq7bFaJVgV5psrelzIR9vZREhSOG6rIWWt8Ui9DoVngpSedYIMQMF6xf42oG7zDbHyi/qU2
	/TKuKMthuYbrH0v86ppXfOXIoZy354genwvvz1OoTzLffHTtaUvfVNzTvUY567pr/ACKVz/HRjghu
	FRfwB/oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiu8J-00BCY9-0u; Thu, 13 Oct 2022 09:04:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiu8E-00BCWH-BV
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 09:03:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oiu8B-0002Yz-8Q
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 11:03:55 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oiu8A-001FrE-HT
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 11:03:54 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oiu89-002X07-U8
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 11:03:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Oct 2022 11:03:49 +0200
Message-Id: <20221013090352.562170-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_020358_432984_C18FF2AC 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 0/3] Fix GCC 11 THUMB2 relocate_to_current_adr miscompile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

TL;DR: GCC can prove that variables aren't supposed to overlap and as
such it generated code than readded get_runtime_offset() on top of an
already relocated linker-defined variable's address.
See PATCH 2/3 for a disassembly of the affected code. Board code can
be similarly micompiled, but that's a fix for another day.

I am not so sure about the name of the new macro. I chose
get_unrelocated for similarity with get_unaligned, but it doesn't
dereference the argument, just get its address. Looking at it that way,
it's just a UB-infested way to say & (address-of). Perhaps just
call it runtime_address()? After all, it works before and after
relocation. We can change that later though, once I get around
to patch board entry points.

Ahmad Fatoum (3):
  include: asm-generic: reloc: implement get_unrelocated()
  ARM: cpu: add compiler barrier around unrelocated access
  RISC-V: add compiler barriers around unrelocated accesses

 arch/arm/cpu/common.c             | 11 +++--
 arch/arm/cpu/uncompress.c         |  4 +-
 arch/riscv/boot/uncompress.c      |  4 +-
 arch/riscv/include/asm/sections.h |  2 +-
 arch/riscv/lib/reloc.c            |  6 +--
 include/asm-generic/reloc.h       | 68 +++++++++++++++++++++++++++++++
 6 files changed, 81 insertions(+), 14 deletions(-)

-- 
2.30.2



