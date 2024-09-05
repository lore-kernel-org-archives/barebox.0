Delivery-date: Thu, 05 Sep 2024 15:20:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smCPX-001ZE1-2K
	for lore@lore.pengutronix.de;
	Thu, 05 Sep 2024 15:20:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smCPW-0002JD-KO
	for lore@pengutronix.de; Thu, 05 Sep 2024 15:20:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XVV4o1hLPiEk+M/68yeHOQjlx8hMn1Qzyl/PV7zzGdM=; b=P+Qo4lXOdZi1YFBW+N+ZtR0tbC
	Pg06nKLzkdzaEXA1j7dZx/ZZIp07FSKPFyHaC3gFra/ZDV1zqnWZUAd/QLz8YzHjefeOcVvPuiTwd
	ryMNzCN+xIgI922ihSKFyU43wJz4WenwEvnRHicYnEGor80wgjoPFIGielYYy+Uw/ruOLj21SNznf
	XvvdxN2cmWUNbbgCcyziIVtg1xXozLrscBGjvb9Liv5dXDyVSjzyrnoM0GD1KrplFtq2b3aXF6oKy
	w2ejFTZ0OrOP3EwEC9ruoJuk1aBz5PGgrMJo9TXcd5COvILwqHIIdZuZXinGJVfDcKsfCqnJt2/aA
	9wGc06Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smCOr-00000008VV1-2Pcx;
	Thu, 05 Sep 2024 13:19:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smCOn-00000008VTN-2tHJ
	for barebox@lists.infradead.org;
	Thu, 05 Sep 2024 13:19:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smCOj-00022d-T6; Thu, 05 Sep 2024 15:19:41 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smCOj-005iNu-8E; Thu, 05 Sep 2024 15:19:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smCOj-007G5c-0d;
	Thu, 05 Sep 2024 15:19:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Florian Otte <fotte@uni-osnabrueck.de>
In-Reply-To: <20240903113433.3512146-1-s.hauer@pengutronix.de>
References: <20240903113433.3512146-1-s.hauer@pengutronix.de>
Message-Id: <172554238118.1730131.8457868266803943685.b4-ty@pengutronix.de>
Date: Thu, 05 Sep 2024 15:19:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_061945_820922_3BA151C6 
X-CRM114-Status: UNSURE (   5.58  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: avoid out of bounds partition access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 03 Sep 2024 13:34:33 +0200, Sascha Hauer wrote:
> The mci->part array has MMC_NUM_PHY_PARTITION. Avoid creating more
> partitions than we have entries in the array and print an error
> message instead.
> 
> 

Applied, thanks!

[1/1] mci: avoid out of bounds partition access
      https://git.pengutronix.de/cgit/barebox/commit/?id=df413bc52726 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



