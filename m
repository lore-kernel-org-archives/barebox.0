Delivery-date: Tue, 29 Jul 2025 16:54:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uglix-004xQs-1i
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 16:54:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uglix-0002VN-0g
	for lore@pengutronix.de; Tue, 29 Jul 2025 16:54:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fucu1+LzSiGOMuQ3WH1FYoNswun2rGtj3NsjfHJewbw=; b=GvcQabV12LAleJv8aiMne65Yf/
	tYoN3Qukz8vmSBmn1S4cXkNlA+0Hi+I+StIXtpyQhGRpLQpKuIN+khu8kypJKQILq+ErJujn6JyTu
	ufZfAJCDizKKt50tZu5HJ3ZSIk8zyRzFNeqSoHw2JNVN3JiJs0klV2PhkOO9r04b3D9P/u7uwwc7E
	QFvqJvjNWesUbaOV9MKiuDKJrd49QCNtfZMKIKv8KQqtU9DqeqhuW2Fla9+MWvRqLMZc0bu0p4k4n
	V5j0FvxFAmFzFZSdGjLj5R2jl+4/tWwp0rFTLBQqgdGWC2tD17B5XLP7YpsfOPaofJukiwb8kVYxN
	73+NBVHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugliP-0000000GxI4-0m03;
	Tue, 29 Jul 2025 14:54:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugliM-0000000GxFd-10eW
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 14:54:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ugliJ-0002LE-5i; Tue, 29 Jul 2025 16:53:59 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ugliI-00AtHp-3B;
	Tue, 29 Jul 2025 16:53:58 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ugliI-00DN3H-2p;
	Tue, 29 Jul 2025 16:53:58 +0200
Date: Tue, 29 Jul 2025 16:53:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250729145358.gjmwb6femquvsdpa@pengutronix.de>
References: <20250729135924.122052-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729135924.122052-1-m.tretter@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_075402_273892_0E618276 
X-CRM114-Status: UNSURE (   9.99  )
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
Subject: Re: [PATCH] commands: mmc_extcsd: fix calculation of RPMB size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-07-29, Michael Tretter wrote:
> EXT_CSD_RPMB_SIZE_MULT contains the number of 128 KB blocks in the RPMB.
> While the calculated RMPB is labeled as KB, it actually contains the
> size in bytes.
> 
> Fix the calculation to report the RPMB size in KB.
> 
> An alternative would have been to change the label to bytes, but since
> the RPMB size is at least in an order of magnitude of KB, changing the
> label is not intuitive.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


