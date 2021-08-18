Delivery-date: Wed, 18 Aug 2021 15:37:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGLl9-00074L-OB
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 15:37:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGLl3-0006a0-PY
	for lore@pengutronix.de; Wed, 18 Aug 2021 15:37:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HQctOJcP5IpjX2NtacJtTHPBBoG5QsDsyAhcqvix5mA=; b=IFqniLGEPuk8sL
	dPoVIJd23pjg42KzwjbhhOrmCb1ONgZvgB6iOIuR/qeazTNSDJrl5JCHbdHPK2Az+LD2egGdE+avL
	hL4RmCzXDmbGwqOj9RqQj5EnR4JmghvwAa24sSlp8INmNgxWIIsyIiZ6diE5jMwDaUJrBqO8wotTK
	Ki+aBqOuY3gTsAsb4HTCaJE0KV4igj3l9LcSjAysKxLllI59Oh8K1JVMeZ6IlHgcH0IFOeor0iOxB
	2Li4d6/qo8uFUiJqgCQmprCl3rG314P177L3J5LTGzDfcjSBu6C48S+IeAxCi8ewn5r3aYg3Ce6Wn
	/q4OdcROWRqnspDw8Jbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGLjI-005hs9-CM; Wed, 18 Aug 2021 13:35:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGLil-005hkC-LZ
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 13:35:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-0005z2-TS
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:05 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-0007wG-CY
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:05 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-002Rb7-Bx
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:05 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 18 Aug 2021 15:35:02 +0200
Message-Id: <20210818133505.582698-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_063507_796589_54DD573C 
X-CRM114-Status: UNSURE (   7.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] firmware: zynqmp-fpga: fix fpga loading with optimized
 string functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS is enabled, loading the FPGA fails
with an abort, because the optimized memcpy can only be used on cached memory.
As the bitstream can be several MBs large, we want to use the optimized
functions. Fix the abort by using a cached mapping with streaming DMA.

Michael Tretter (3):
  firmware: zynqmp-fpga: initialize flags at function start
  firmware: zynqmp-fpga: avoid additional buffer for size argument
  firmware: zynqmp-fpga: do not use DMA coherent memory for bitstream

 drivers/firmware/zynqmp-fpga.c | 54 ++++++++++++++++------------------
 1 file changed, 26 insertions(+), 28 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

