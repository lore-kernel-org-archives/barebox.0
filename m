Delivery-date: Wed, 09 Jun 2021 11:27:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquUX-0006RK-Dq
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 11:27:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lquUW-0001qB-91
	for lore@pengutronix.de; Wed, 09 Jun 2021 11:27:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tWt7yUTLAZIGZP8JAx4LUh/yt3JMUhv1ukO25Rn1N64=; b=3a2skvCqBjsyPR
	Vr/vvLCENIQKgyz79cYqIID4EifepfjTFlLLxinovSz8ginvtAlhLCGGeBSqV28scz39ah/YcnydC
	qGih3dpXN/hiEldq7ygoPLiaSzHsCrypZIRU2QXSkzrfSu1/J73uBlG8SumOFJh2QmIIt5itzzkWl
	Iy7Zw3gbK2IR3iQFlyrgi1ztP+/tPLuRXlBHbn/e8tL8cmbq3ujecicFArCkJsHG32SQwKED/5L1T
	du9yV51G/RdQ6XnZ45nadUWDxG0l0L0eA5pYmHHDmCMBlIrfR0jRbaZH5VBj/wBdXHmlfXOsLSPwB
	vufDLDyXFWjD+yXcPv5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lquSz-00CeoK-Eu; Wed, 09 Jun 2021 09:25:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqtzX-00CVXO-Mk
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 08:55:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzV-0005b7-R6; Wed, 09 Jun 2021 10:55:13 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lqtzV-0006F6-FE; Wed, 09 Jun 2021 10:55:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de
Date: Wed,  9 Jun 2021 10:55:07 +0200
Message-Id: <20210609085512.3865-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_015515_871838_CBB48401 
X-CRM114-Status: UNSURE (   7.64  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] fixups for Designware EQOS MAC Rockchip support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

Patches 2 & 3 would have followed along with the rk3399 port, but that
one isn't functional enough to test them on. Given that you are currently
porting for the rk3568, maybe you could test now the parts that apply to
the rk3568 as well and squash?

The other patches are issues I noticed along the way.

Thanks,
Ahmad Fatoum (5):
  fixup! net: eqos: Rockchip support
  fixup! net: eqos: Rockchip support
  fixup! net: eqos: Rockchip support
  fixup! net: eqos: Rockchip support
  fixup! net: eqos: Rockchip support

 drivers/net/designware_rockchip.c | 114 ++++++++++++++++++++----------
 1 file changed, 76 insertions(+), 38 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

