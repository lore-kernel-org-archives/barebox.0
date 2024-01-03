Delivery-date: Wed, 03 Jan 2024 11:18:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyKt-001mfG-0h
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:18:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyKs-0003lL-6y
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:18:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nya7cPhNdAlSxM3WWwRA3VILIN4nmVuF72bHcug/Q2E=; b=O+cKEsRVAzrUcsRhENaBRFtVp+
	RFhxX0VVXmzJvHF5x5ghMVkJ1I1oMGtRe0jXgz0k4pmFhZZRONCRdyzv6ukv6SGrs2SxIu5lw81n9
	GvIUokpkZp2OtfiFpgYT/HRLInuKG7qQtjckZlx+ld78pJGRQzelQA3y68+eVo3DmKqa/f54mbfX7
	nYvFQe0nex2pMVKlsGmaIC+MYaoRNezmJXPxBsP+5OiCxBbPvlY04xzgoGjoAi9hwvvfabsLcE/K0
	GSQSYPk6RKgIeY7XdqFzerGaBOIrN+vUTcZxfZbS7HZX8DFOy61eFmNYiRc3WsWaF2sj7P4GQwEer
	FEhuLOIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyJv-00AMwC-2I;
	Wed, 03 Jan 2024 10:17:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyJr-00AMtl-2Q
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:17:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyJq-0003JY-Hz
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 11:17:50 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyJq-0005wh-5U
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 11:17:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyJq-00B2Bh-0H
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 11:17:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  3 Jan 2024 11:17:46 +0100
Message-Id: <20240103101748.2629927-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021751_816671_25EBB15A 
X-CRM114-Status: UNSURE (   7.54  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] compiler: fix clang and address sanitizer coexistance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When built with clang + AddressSanitizer, global variables end up with
a redzone that can break linker list elements.

As clang isn't officially supported (yet), this can go into next.

Ahmad Fatoum (2):
  compiler: define __ll_elem for linker list elements
  treewide: mark linker list elements with  __ll_elem

 drivers/clk/clk.c              |  3 +-
 include/command.h              |  4 +--
 include/deep-probe.h           |  3 +-
 include/image-metadata.h       |  4 +--
 include/init.h                 | 60 +++++++++++++++++-----------------
 include/linux/clk.h            |  2 +-
 include/linux/compiler_types.h |  6 ++++
 include/linux/export.h         | 11 +++----
 include/linux/pci.h            |  4 +--
 include/magicvar.h             |  7 ++--
 include/ratp_bb.h              |  3 +-
 11 files changed, 57 insertions(+), 50 deletions(-)

-- 
2.39.2



