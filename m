Delivery-date: Thu, 05 Jun 2025 14:01:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9Hv-0040Bg-3D
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:01:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9Hv-000161-FP
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:01:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0yDRyFIUGfyj6vesxaQAhMycESn6OgyiGNz5IYs3BrY=; b=UVqaH5BGJRBp3+jyK4gAz6gxgD
	gnSb90yk/W64kCiCQpdWGY2yxz2ps/0Dr/ze7L1qro9BoXCUZqIS00J0/eZJk2PAd0a/22VHd8Azq
	9aXLxVKtP5yNmBfuiOq/t6n4WeDIU54vTV32LTZ/NvHfh7VLKM2EXykDCVH2o+vH9iAjkAzbR+rAd
	Ny3Pr49O9Xwt8v2mKwr2q9LWtJ2g4yunFaTFK2Zqw0JovbYuDvZ4vsI+meVpiZGQnaE7t7hfO9RDL
	4nmVNMfer6OZqIdGG9rxPI0V8d1CdfQvAyZKkQnjVQ2ejz0SBd49qbhOyOTwARw/wjyy423NdSZ5l
	SLLyjCow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9HS-0000000FR9I-1Kzt;
	Thu, 05 Jun 2025 12:01:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9HP-0000000FR8z-2APp
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:01:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9HO-0000ZL-A2; Thu, 05 Jun 2025 14:01:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9HO-001x4B-0N;
	Thu, 05 Jun 2025 14:01:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9HO-0022vK-09;
	Thu, 05 Jun 2025 14:01:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20250604-fix-tmp-file-v1-1-96a1c1a8d636@pengutronix.de>
References: <20250604-fix-tmp-file-v1-1-96a1c1a8d636@pengutronix.de>
Message-Id: <174912486604.487871.13827725452491254829.b4-ty@pengutronix.de>
Date: Thu, 05 Jun 2025 14:01:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_050107_560840_D5269218 
X-CRM114-Status: UNSURE (   7.50  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: remove O_DIRECTORY flag from O_TMPFILE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Jun 2025 15:15:06 +0200, Stefan Kerkmann wrote:
> Decompressing fit images fails since release 2025.05.0 with commit
> a1248198fa ("fs: implement O_DIRECTORY").
> 
> The reason is that converting the decompression buffer fd back to a file
> in the `fd_to_file` fails the `O_DIRECTORY` flag check. This is flag is
> set because `O_TMPFILE` is defined to contain the `O_DIRECTORY` flag.
> 
> [...]

Applied, thanks!

[1/1] fs: remove O_DIRECTORY flag from O_TMPFILE
      https://git.pengutronix.de/cgit/barebox/commit/?id=95aeb8d47d10 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



