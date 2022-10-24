Delivery-date: Mon, 24 Oct 2022 08:58:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQ9-000MpX-Sm
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 08:58:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQ7-0008Dw-Pq
	for lore@pengutronix.de; Mon, 24 Oct 2022 08:58:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eWTYt+1DRAMlhgsT5kO+pkFETdmVxB9zCNHxPrJcoWA=; b=aUJci85ZJ7sEbob751nqH2iTCr
	wC7Z5vdoKIOpvx8zr54wHYrfEgxP6PcF+K6UDOMJEgTMeDlL4Sq5V+h8GeMpjEm2YvuPpBSTNa2pO
	jBS7GK06z7iZFUYuCn6MWmx24h3vFWXkDLfyN6caGA+RHmDHISGEMab+ccLpXYtDjZydbpVM8O2jn
	X+YhUY27CwAeovbygdp+hXWGJUBG1+DsdD0nC65tPXBAF5ix5b/74v0cXfZlJqe0ecy7/25D+Xq/i
	/hKewtIGgEo2EyW60ufo8aU1xIj681Fqf1vhD1g1EV7oALSu5wTdER0kj/JdWzjtk1CDcdHuu5uPG
	r/zsAoIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrOu-00HMnJ-QF; Mon, 24 Oct 2022 06:57:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrOk-00HMiN-Tt
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 06:57:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0007qV-DX
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0003rh-Jm
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:57:18 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOf-00567F-HK
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:57:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 24 Oct 2022 08:57:08 +0200
Message-Id: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_235723_004693_50D6A624 
X-CRM114-Status: UNSURE (   6.92  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] ARM64: rewrite ENTRY_FUNCTION_WITHSTACK in assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Recent episode with pointer authentication showed again that for
platforms without __attribute__((naked)), we are better off writing
the early header in assembly. With some slight linker magic, we can
move the header code into assembly without board code ENTRY_POINT
definitions having to change.

Ahmad Fatoum (8):
  ARM64: cpu: select HAVE_PBL_MULTI_IMAGES globally
  ARM64: asm: define ENTRY_FUNCTION in terms of ENTRY_FUNCTION_WITHSTACK
  pbl: have linker define __pbl_board_entry alias
  asm-generic: memory_layout: define __keep_symbolref()
  ARM64: asm: rewrite ENTRY_FUNCTION(_WITHSTACK) fully in assembly
  ARM64: asm: drop __barebox_arm_head
  ARM: asm: cleanup 32-bit entry points
  Documentation: devel: porting: bring it up-to-date

 Documentation/devel/porting.rst               | 26 +++++++----
 Makefile                                      |  3 +-
 arch/arm/cpu/Kconfig                          |  1 +
 arch/arm/cpu/Makefile                         |  2 +
 arch/arm/cpu/head_64.S                        | 36 +++++++++++++++
 arch/arm/include/asm/barebox-arm-head.h       | 17 +------
 arch/arm/include/asm/barebox-arm.h            | 45 ++++++++-----------
 arch/arm/lib/pbl.lds.S                        |  9 ++++
 .../include/mach/barebox-arm-head.h           | 17 -------
 images/Makefile                               |  1 +
 include/asm-generic/memory_layout.h           |  7 +++
 11 files changed, 95 insertions(+), 69 deletions(-)
 create mode 100644 arch/arm/cpu/head_64.S

-- 
2.30.2



