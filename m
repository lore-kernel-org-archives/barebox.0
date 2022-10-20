Delivery-date: Thu, 20 Oct 2022 15:34:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olVhB-001oNX-P0
	for lore@lore.pengutronix.de; Thu, 20 Oct 2022 15:34:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olVh8-0003uy-L9
	for lore@pengutronix.de; Thu, 20 Oct 2022 15:34:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x04+l0WjHJ6bNR2sLrcxVUbrAhSTIoNxZfGcm/Wv4dw=; b=TKNE7oVAIM6UNFKGDX+m59xZO/
	s9xMe9ZU9glScLsDdg76ekbLdlvs+i/zE8zj/ZLiTsma1c8h2ppqm0XGNuIY3vd+TUetuBzUwwmPO
	gps8SgS+QPlypMXhnvFA2mNcvRqCvMpy5NrMJWgj+4kVEy8TBWPTWacA54lRhJupRECZX+kvnAJKY
	ExahDHlv2AgIE9dYeER9Mb6T7rI2MFuVtWrdOGC+CmdrnoJChk6axi13r6KVpdof5F6P3BZ/oBjP4
	oFjsh3e0og2r/ulmedIfhjpKoNS/Uh8Z82XN4AtyrwWzPgyjwrSd9OLl4sU7rdp8Oas+GP2Ay1A8G
	jc+iliYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olVfH-00FVIc-Ew; Thu, 20 Oct 2022 13:32:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olVOF-00FKg5-IF
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 13:15:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1olVOC-0000lJ-M9
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 15:15:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1olVO9-000KdH-MF
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 15:15:11 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1olVOB-00Ffbt-6s
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 15:15:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 20 Oct 2022 15:15:07 +0200
Message-Id: <20221020131510.3734338-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_061515_644934_2A9CD16D 
X-CRM114-Status: UNSURE (   6.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 0/3] Fix GCC 11 THUMB2 relocate_to_current_adr miscompile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since a8b788ba61eb ("relocate_to_current_adr: hang directly on error instead
of panic()"),  GCC can prove that variables aren't supposed to overlap and as
such it generated code than readded get_runtime_offset() on top of an
already relocated linker-defined variable's address.
See PATCH 2/3 for a disassembly of the affected code. Board code can
be similarly micompiled, but that's a fix for another day.

Ahmad Fatoum (3):
  include: asm-generic: reloc: implement runtime_address()
  ARM: cpu: add compiler barrier around unrelocated access
  RISC-V: add compiler barriers around unrelocated accesses

 arch/arm/cpu/common.c             | 15 ++++---
 arch/arm/cpu/uncompress.c         |  4 +-
 arch/riscv/boot/uncompress.c      |  4 +-
 arch/riscv/include/asm/sections.h |  3 +-
 arch/riscv/lib/reloc.c            | 10 +++--
 include/asm-generic/reloc.h       | 69 +++++++++++++++++++++++++++++++
 6 files changed, 91 insertions(+), 14 deletions(-)

-- 
2.30.2



