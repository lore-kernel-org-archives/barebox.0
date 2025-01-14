Delivery-date: Tue, 14 Jan 2025 09:21:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcAm-000wVx-1e
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 09:21:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcAl-0003YJ-VN
	for lore@pengutronix.de; Tue, 14 Jan 2025 09:21:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BM+IC2HPAvI8dG4z0VI9ZivrHZuctodA1aJ6DWXyUIw=; b=rmGJVRKNrzx2exL6f+/UQ8TV24
	tPH04sAAeISsZIEqEs/YKR6zXCBhK6DhDivvjI5fwQ+InHjIf0qOFp3+MeitIK2jntWQxd7ImJllz
	cYJcuU4RBTSMgNMMWdgdGO8mbCrw+1bwynOMAb7LN5RhsxTRDKInApH/fhjx+Os/bX9QQ80VFSrUf
	4X9UJvkNapKSHYxgqwjVHdWKsAuTqiefxIg8Zv8aNqElw1b1gquHd5gsntRlCT8KX0p8RkYUyQ24T
	Xr8i2i4ZhvgHpYLOkj+GjdmhGvd92nvYh137huL4K/Vw7WbID0W4FlFUrHzpWXRpYYwt+HQfZXhL+
	DOeVUqQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcAP-00000007ntq-0qcG;
	Tue, 14 Jan 2025 08:20:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcAM-00000007ntW-3lx7
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 08:20:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXcAL-0003VA-PX; Tue, 14 Jan 2025 09:20:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXcAL-000OyB-0K;
	Tue, 14 Jan 2025 09:20:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXcAL-00CLDv-1l;
	Tue, 14 Jan 2025 09:20:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250114053412.6923-1-eagle.alexander923@gmail.com>
References: <20250114053412.6923-1-eagle.alexander923@gmail.com>
Message-Id: <173684284954.2941494.17032524312055521221.b4-ty@pengutronix.de>
Date: Tue, 14 Jan 2025 09:20:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_002050_941323_DCEE74A4 
X-CRM114-Status: UNSURE (   5.67  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: Remove orphan symbol MTD_SST25L
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 14 Jan 2025 08:34:12 +0300, Alexander Shiyan wrote:
> The MTD_SST25L KConfig option does nothing, so let's remove it.
> 
> 

Applied, thanks!

[1/1] mtd: Remove orphan symbol MTD_SST25L
      https://git.pengutronix.de/cgit/barebox/commit/?id=82a1da0e142c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



