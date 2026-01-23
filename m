Delivery-date: Fri, 23 Jan 2026 14:20:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjH5C-004UY7-0g
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 14:20:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjH5B-0003yc-7w
	for lore@pengutronix.de; Fri, 23 Jan 2026 14:20:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZUZGmhGvBDjM/+l5i84nqw7s3Z8h5fzcTRig18Vjr+s=; b=o433UPKrpnQrtAtXgh59ai4ygV
	f/Ux0oacHxWEPJFGS7lFC5Cg4KL9E0H8XIUHOdce7Welqt5TrPw4We3+x3JIFxmZjGIcGqOyQIaTs
	ZktHQghuv5Q2WttjUnlAG9rUsiV6IxRh5yGgSKkbjI4fNbhU1GW8z5KGspsOmt7z6x34kuyAq4P1F
	WZwPbyNw/R4r+JulrEqEc8U1Z3l4gcS1+nzQVX7V0ZaOGXqspkrRzmhSHBle5og6iZZLnewBwlYuk
	VA+KZpTJYKpL2E9mrvKpnI50hHVYgJcHaREyY5Rg8V/E2Er0QdD9SEEOac0mWD1DrrW+8JPzDowRB
	zhyM76SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjH4Z-00000008x0B-2hnw;
	Fri, 23 Jan 2026 13:19:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjH4V-00000008wt4-3PmF
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 13:19:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vjH4S-0003lO-60; Fri, 23 Jan 2026 14:19:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vjH4S-0026Bn-28;
	Fri, 23 Jan 2026 14:19:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vjH4S-0000000DmY8-2Mx0;
	Fri, 23 Jan 2026 14:19:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 23 Jan 2026 14:17:10 +0100
Message-ID: <20260123131922.2663665-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_051931_870957_DFD8852C 
X-CRM114-Status: GOOD (  11.56  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 0/3] elf: restructure to fix sandbox allyesconfig breakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

common/elf.c contains code that's only relevant to barebox proper, code
that is only used by the PBL and code that is used for both.

This works when we compile with linker garbage collection, but we don't
do this on sandbox. Sandbox is a PBL-only platform nowadays, so this
leads to linker errors as without LTO, the linker can't determine that
e.g. the reference to list_sort is ultimately unused in PBL.

Instead of stubbing out the functions needed, let's reorganize it, so
most of the original support remains in common/elf.c and the noalloc
and relocation parts move to lib/elf.c

Ahmad Fatoum (3):
  elf: rename elf.h to <linux/elf.h>
  common: elf: split barebox proper-only ELF support from the rest
  common: elf: reorganize barebox proper parts in struct elf_image

 common/Makefile     |   2 +-
 common/elf.c        | 351 +-----------------------------
 include/elf.h       | 511 +-------------------------------------------
 include/lib/elf.h   |  76 +++++++
 include/linux/elf.h | 472 ++++++++++++++++++++++++++++++++++++++++
 lib/Makefile        |   1 +
 lib/elf.c           | 329 ++++++++++++++++++++++++++++
 7 files changed, 891 insertions(+), 851 deletions(-)
 create mode 100644 include/lib/elf.h
 create mode 100644 include/linux/elf.h
 create mode 100644 lib/elf.c

-- 
2.47.3



