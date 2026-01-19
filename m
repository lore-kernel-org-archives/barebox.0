Delivery-date: Mon, 19 Jan 2026 13:13:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vho7x-0031SA-2j
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 13:13:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vho7w-0003j2-T9
	for lore@pengutronix.de; Mon, 19 Jan 2026 13:13:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dq48Kz0EyDMzCmtPPmusU5bbPM1bwttDdS/mUz7jA8M=; b=qGZ2+XmF0E6CdpjZCedBVIdLGD
	p2EugaleYSzCMlnScgrqD1ivMmNe6iSFVMAukuQaY/W0VDhvZSRJQKUljd9i1bypCF5tTe7L96Zer
	ZiSywfeG3fGPix8kc4AyWPITklHmxth37elews6lFDMCFkNmHAohTNX2uwpym3zTHfEzdtEiMg/e4
	cqEDuDw1CJ1+xZie4yKnO2haAx3UyRH9UCrhPbO4A17z6JlVHWOyfIJGVxWKS3V4Y08YL9efADKjC
	TtIKXUlfieJNHVJEXzrFf4YUZx5d0pN1LJyb0+cNmFrJ4aUnGlg1J5dAKa7zbdR5nzOiPQlWZXBtM
	PMFzaKBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vho7O-00000001yQs-3fGy;
	Mon, 19 Jan 2026 12:12:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vho7E-00000001yOg-2uZV
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 12:12:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vho7D-0003WO-6l; Mon, 19 Jan 2026 13:12:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vho7D-001PVw-2D;
	Mon, 19 Jan 2026 13:12:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vho7C-00000003qSc-40X8;
	Mon, 19 Jan 2026 13:12:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260119094617.891594-1-s.hauer@pengutronix.de>
References: <20260119094617.891594-1-s.hauer@pengutronix.de>
Message-Id: <176882473495.916621.59624334259253472.b4-ty@pengutronix.de>
Date: Mon, 19 Jan 2026 13:12:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_041221_348134_DAF18D13 
X-CRM114-Status: UNSURE (   6.42  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: tmpfile_create(): add missing mntget()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Jan 2026 10:46:17 +0100, Sascha Hauer wrote:
> tmpfile_create() assigns the parentpath->mnt to the new file's path
> without mntget() it, so we'll get unbalanced reference count when
> the tmpfile is closed. Add the missing mntget().
> 
> 

Applied, thanks!

[1/1] fs: tmpfile_create(): add missing mntget()
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f3aee3f1c60 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



