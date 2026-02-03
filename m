Delivery-date: Tue, 03 Feb 2026 15:20:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnHGV-008QWm-2f
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 15:20:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnHGU-000510-Rm
	for lore@pengutronix.de; Tue, 03 Feb 2026 15:20:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KVz40Yv/GkPOEt3ka+G1xWVBjHoiyc9qrv2Y6guj2+o=; b=rtpAhDXegY/b+kIMrCedSE6w5a
	XHmTbGmJp+H8SuTVzdOhiz22GcvQaoxXbvMpb5fKVf8zBUMJiJkGsNIWqEMHKjDibudf7OQ5FFpWC
	6/7iq1iuB0bkIXp8nLONcFWN1rGs+GlqjCb96Vc3H9krPz7HIabnG3BTWrg/OGAvh2PSuXjl9NDof
	d2VI6IkwZuZ8GUyKOwegBMViQT++IRX7p+JADP7EGCQNtitQsr/BERdVtHzH6SlQRJaeA96Dl4ELw
	EmRTsOXBBkGBIGXztMhA8NYx8g6hU/IStPkHBni+D5O7In99RApmPopHSuvUqbLchYgVHE9u1aYla
	N9BvY+Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnHFz-00000006kEu-3rte;
	Tue, 03 Feb 2026 14:19:55 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnHFw-00000006kED-1Mta
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 14:19:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770128388; x=1772720388;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZijCHFgseEd3Ytk6rk/yS4thWc7voEa3ukgF2onle3I=;
	b=RK0q0+RMve43RgRTo6f4mAfuhl4fJ3AJCBmVuV69yq9KMLOezYsqhAXDOhkCBPXd
	wlhb4hSE/7tKJZb6qQc7jP1NChtKNfEGq7rnTt5zPUa+busd6ya7r5w04KWBeL11
	vdNkbx8VEKHRDIYIUOWA+56PlBtYDAh0SccwKo0Qxp2e58usXYsroHmISrxEOOn/
	TqwJlj+NuY7Py3eGRQ6rLeMrq/K1J9I03mSBaZUHnGE6igbKielURLqXvKY0rB4k
	lIsimPO9Cz010qZZ8NQtgpnZ6anoUeB2ZclxzT9ybVfY33Ab+cB3+dHv5kvK/NML
	btkmcO3+a2aoJsaIT4sanw==;
X-AuditID: ac1001d4-3478e640000daae5-fe-69820404f482
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id A6.78.43749.40402896; Tue,  3 Feb 2026 14:19:48 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Tue,  3 Feb 2026 14:19:44 +0000
Message-ID: <20260203141945.1417902-1-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDJMWRmVeSWpSXmKPExsXCtT5hni4LS1Omwa+pEhYnFvczW0x/G+TA
	5DFvZ4DH5iX1AUxRXDYpqTmZZalF+nYJXBnN61YwF2zjqHj+9xtjA+MP1i5GTg4JAROJO+tm
	sXQxcnEICexklNj7ZiozSIJNwEDi39GvbCC2iIC8xNz9bWANzAJ6Eh0XJjKB2MIChhI7V89j
	B7FZBFQlHr77BVbDK+AgsW7tAyaIBfISi3csZ4aIC0qcnPmEBWKOvETz1tnMExi5ZyFJzUKS
	WsDItIpRtDRbtyg1J7HS0FgvMTe1JDVbLzk/dxMjMADWCDBe2cF459MHvUOMTByMhxglOJiV
	RHjTp9dnCvGmJFZWpRblxxeV5qQWH2KU5mBREuddu+dDnJBAeiLQlNTUgtQimCwTB6dUA1PQ
	fNNzVx75zbn9/fuWfMlHJ60DVxxlL2OWDeP22eq/d4NprnCfqM2jWypt8j9Fe74qzbJ277Rc
	tXb2pgkyCltzpSJW81lWK3fZbpGU/txWwf9fNPY1e2ahpWP1CobunmnBGxUmftlXwV9w7uxV
	zZ+X9qRMjVmksPra1bKwx2duRMgLf60V7Q1rXhS05RhHantp1SJp5n/bLywu85jPU16ydWpj
	R+Evy+kOUtyya2Z999LTMmu2OLGJ02+jxiejBRK5rx+kGdlESN6Z+OakSrWV05Kt/GIWWh/O
	WOVOYXnFtHGf4cTAivkB3z1aLmqu/FucIruq40PhHrZH8v2Zd+T/HDd+cErxkme0zM8LlUps
	xRmJRqZmWsxFxYkAd/ETQHECAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_061952_802928_1136CA3A 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/1] Initial ARMv7-A LPAE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The LPAE support allows to map physical address above the 32-bit space in
the ARMv7-A processor to a 32-bit virtual address.

This patch set was tested on a LS1021A-IOT. Later, a patch to the PCIe
designware driver will be provided to prove the remapping of 40-bit PA to
32-bit VA.

This patch does not include an update of the mmuinfo command.

Renaud Barbier (1):
  arm: mmu: initial LPAE support

 arch/arm/Kconfig                            |   9 +
 arch/arm/configs/layerscape_v7_defconfig    |   1 +
 arch/arm/cpu/Makefile                       |   4 +
 arch/arm/cpu/mmu_lpae.c                     | 650 ++++++++++++++++++++
 arch/arm/cpu/mmu_lpae.h                     | 101 +++
 arch/arm/include/asm/mmu.h                  |   4 +
 arch/arm/include/asm/pgtable-3level-hwdef.h | 156 +++++
 include/mmu.h                               |   2 +
 8 files changed, 927 insertions(+)
 create mode 100644 arch/arm/cpu/mmu_lpae.c
 create mode 100644 arch/arm/cpu/mmu_lpae.h
 create mode 100644 arch/arm/include/asm/pgtable-3level-hwdef.h

-- 
2.43.0



