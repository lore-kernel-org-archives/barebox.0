Delivery-date: Tue, 07 Oct 2025 14:01:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v66Nw-005EmK-0c
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 14:01:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v66Nv-0002KQ-Ld
	for lore@pengutronix.de; Tue, 07 Oct 2025 14:01:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xGvFTvCyBfK7hdqTJ536giPAA4SvpjNIEby9dR8+/5o=; b=NjBp654YzcVqO60Mspw0UpEpjC
	3AMNo8Xh68BZoGHdHsuk0H0yixwBLDklF7egIg6dIDoLT8PedLSEeXWxF7mfUUs8thQqX/L8i62pp
	4P2Jb99rRtsbFYVoAdEF1y79gQHhGRZOaOLdaNnfrpmLL7z5dOKR9c8VMhPGf9My7an4Nm1qpUefr
	gmGzWR3CAK1bguXN+jFbfWVMSnBJYGTH3pGx4fotSYyNYqM+gC74pjctDOBpR3YBbgOwzPzcNZ0Ra
	XCdDVUnNCHYLGomsF4RKkIzMJRghaPirefNv+Mgrb1tbclAFTNwevSxDDsDCVLRDu5IwXS8QDZXuO
	N0+MMhMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66NR-00000001wu4-3EHD;
	Tue, 07 Oct 2025 12:01:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66NP-00000001wtf-2b0R
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 12:01:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v66NO-00025r-3S; Tue, 07 Oct 2025 14:01:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v66NN-002OVz-2w;
	Tue, 07 Oct 2025 14:01:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v66NN-00000004EAh-3ZQ6;
	Tue, 07 Oct 2025 14:01:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251001-fs-remove-dev-argument-v1-0-1922aaf65062@pengutronix.de>
References: <20251001-fs-remove-dev-argument-v1-0-1922aaf65062@pengutronix.de>
Message-Id: <175983846584.1007774.2683780336980095444.b4-ty@pengutronix.de>
Date: Tue, 07 Oct 2025 14:01:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_050107_684514_503565A2 
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
X-Spam-Status: No, score=-1.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] fs: remove dev argument from file operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 01 Oct 2025 10:06:26 +0200, Sascha Hauer wrote:
> All fs_driver operations like read, write and ioctl take a struct device *
> argument which is mostly unused by the filesystem driver and for the few
> cases where it was used the device can be retrieved from the file argument.
> 
> This series removes the dev argument and moves the the fs_driver
> operation over to filesystem_operations.
> 
> [...]

Applied, thanks!

[1/2] fs: remove redundant dev argument from fs_driver operations
      https://git.pengutronix.de/cgit/barebox/commit/?id=0452ba3c99e6 (link may not be stable)
[2/2] fs: move fs_driver operations to struct file_operations
      https://git.pengutronix.de/cgit/barebox/commit/?id=628f1062538b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



