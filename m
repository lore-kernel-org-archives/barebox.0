Delivery-date: Tue, 10 Feb 2026 09:58:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpjZh-00077x-1N
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 09:58:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpjZg-0007Be-SP
	for lore@pengutronix.de; Tue, 10 Feb 2026 09:58:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bI7Kzb2ewxJzs2tOlRBelHG+kgG7AcKVTkEgrIFGZhg=; b=XSW4Xhrq7HEaQZ9ZpFqZqufpSA
	TttjlCRfPUqFix34D20PHTW7qBL25v8Jbl8cciswI0RbsvH2U3EkIhF/PhJO3mgSSUKTc8Zxp2me4
	zGL0V60VuFsXUn3Vzpx3Q4MWvGbSRXpldQI+YM+jRx3FjDkDww1Tkb0UB7TbkDQ2kqt36OESxsL2n
	VeT05jVhP/vdoccOq68Nts3UUW6pOWP2Y3Cmw9uPQgUX2ZswvEkoqFagDbHfmejn+L++SYVRtbTFq
	N1ayPMR/jbeTmoO6Qz3n69w1g4Xaux/3EVH91HJNn2zE55nZSBHBk4VvURhqJ6PNg4UPfmYOMlH/9
	dm83p9YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpjZD-0000000GiZB-1lyv;
	Tue, 10 Feb 2026 08:57:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpjZB-0000000GiYa-1voJ
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 08:57:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjZ9-00077N-Pf; Tue, 10 Feb 2026 09:57:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjZ9-0003H4-04;
	Tue, 10 Feb 2026 09:57:51 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjZ9-00000003bhI-2Ixs;
	Tue, 10 Feb 2026 09:57:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260209152843.1841982-1-a.fatoum@pengutronix.de>
References: <20260209152843.1841982-1-a.fatoum@pengutronix.de>
Message-Id: <177071387154.859879.3653281909327426941.b4-ty@pengutronix.de>
Date: Tue, 10 Feb 2026 09:57:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_005753_504277_A2CCE018 
X-CRM114-Status: UNSURE (   8.73  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ci: container: install isoinfo package into container
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 09 Feb 2026 16:28:42 +0100, Ahmad Fatoum wrote:
> OS installation images are often distributed as ISOs, but barebox has no
> ISO file system support. This is currently not needed as Grub has isofs
> support and barebox just looks at the GPT parts of the hybrid image,
> which references only grub.
> 
> However, this isn't enough when we need to reference the kernel boot
> artifacts from ISO images in upcoming changes to the test suite, so prepare
> for that by including genisoimage into the test suite
> 
> [...]

Applied, thanks!

[1/1] ci: container: install isoinfo package into container
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea944d149640 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



