Delivery-date: Tue, 04 May 2021 16:11:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldvm6-0005J4-JL
	for lore@lore.pengutronix.de; Tue, 04 May 2021 16:11:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldvm5-0006kj-Pj
	for lore@pengutronix.de; Tue, 04 May 2021 16:11:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jt2SpV/PuElDkuZOncL23dXZ6LUibA2N4XoEgImhLmY=; b=Kde2RjpoESqgfx
	SqJW+woLDhzuVzNuKBbCL0+BHnemdi5OafxFd5cgSV4G7ujBJi3EDlnwfWVoRPYGvTIO1V+HpRJie
	uRb1vNxru4bneza2QK7d81zcYY+g1P+slRBFElR4MqU+YkCpL0On1WwAufXseFAi6/hnsFucfk9Ev
	Asj00m32l0Jn4adNEnCgvPxKQKzx5YpWpT9yfKvTkoVxQUJHHTNHvcwtP/4/NZLxKgqg7IJvIEhP4
	bklUBGGkcksnPWNamT218Dw0xzPvUGBfBfDcGO42K5tIPc5YEzBR835mpsfiYLgjjrjd0U3VFvWoi
	wgbs1/mEHVhDrAmGRNQw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldvl9-00GL3L-Nu; Tue, 04 May 2021 14:10:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldvl2-00GL2R-JQ
 for barebox@desiato.infradead.org; Tue, 04 May 2021 14:10:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=3l/GOwis+39/uW2W2lsjEuo6PiV+n6yaq++SLDxfGC8=; b=Gubyo3fMgc9OhHl3buJ48pJ4kQ
 w7Dcf86G+BCsmo4qdk0pMt2Ih4lQtN83PcBO27F+dwSSFaMz+B0CLFJgS+mlaNSw8pRVCuj78KvbH
 hdgDNr496aNxi5i3SBPLIiJG1M2M/u+PCud/8Ox1fVtTz5aYhKpccypTZgVGypJo7d7YUD/Ok2pTm
 dPO3+1KC02+pUu9MEr2SuW5ndZXkXRU2ourZLj9ZlUAt+4y9gKDJTgUrhJyyWtVPpTfvvb+q8WBx1
 d71BpDLA2yOFvFd//uv2ni4+mt3fI+2Z/K0kThVQX5xS7I6ZgbNS0o8AxI/3vcMQ7+euiuYAvkD77
 a5u7V6cw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldvkz-0041iu-43
 for barebox@lists.infradead.org; Tue, 04 May 2021 14:10:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldvkv-0006RJ-BJ; Tue, 04 May 2021 16:10:33 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldvkv-0000vc-2T; Tue, 04 May 2021 16:10:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  4 May 2021 16:10:29 +0200
Message-Id: <20210504141031.3457-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_071037_180633_DA1F866B 
X-CRM114-Status: UNSURE (   9.34  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] clk: imx28: Set gpmi clock to gpmi_ref
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The GPMI is parented to ref_xtal (=24MHz) by default. Reparent it to
ref_gpmi to get reasonable NAND speed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/mxs/clk-imx28.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index aa4ba99cd7..382021e49c 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -145,6 +145,7 @@ static int __init mx28_clocks_init(struct device_d *dev, void __iomem *regs)
 	clk_set_rate(clks[ssp2], 96000000);
 	clk_set_rate(clks[ssp3], 96000000);
 	clk_set_parent(clks[lcdif_sel], clks[ref_pix]);
+	clk_set_parent(clks[gpmi_sel], clks[ref_gpmi]);
 
 	if (dev->device_node) {
 		clk_data.clks = clks;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

