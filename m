Delivery-date: Tue, 05 Aug 2025 11:34:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3x-007FUE-0A
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3w-0003La-2y
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KmPpNCPEmdnJCKOD2S3iLIHSkevnuFEuFmygUNDb0vA=; b=Lvr+MBPWBHqvfxv7iyFbv40s/r
	zTxHFXHZQK/7NkYmhIFKdi/pl/mj1TjkWkup9bTHYbSq1Yk/sKgdT//SFiFrdteJrUtTlwx8icJ3S
	LdGKu6aOzvw+iVxe0wYJnsx8tR7hujFACiIwSWSnwkTJX+SR1Jrbmyz4MPEO5OH5tPdSH+oeX3yEe
	7Ck/E7p7DNXgYOXDs7c9fOq4oK63CW7XnuMMPeRNalYVIT0QU4Brkv6KYwxC+JZpuazNYqyRWJvrH
	p34o6gEI9tfN4VZmET87LDGIQ1nUtv+vh0ALLkQ75brCx85FOinAS3krhZfzCTK6ehXjNNuDkLEuD
	NSY6ZlGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE3E-0000000CMh1-0NuR;
	Tue, 05 Aug 2025 09:33:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDku-0000000CK6B-0Gu0
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:14:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDks-0000VA-Q4; Tue, 05 Aug 2025 11:14:46 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDks-00C17i-1M;
	Tue, 05 Aug 2025 11:14:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDks-00EiKm-19;
	Tue, 05 Aug 2025 11:14:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Mathieu Anquetin via B4 Relay <devnull+mathieu.anquetin.groupe-cahors.com@kernel.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>, 
 Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>
In-Reply-To: <20250718-fix_imx9_ddr_init-v1-1-b52def9e7ee5@groupe-cahors.com>
References: <20250718-fix_imx9_ddr_init-v1-1-b52def9e7ee5@groupe-cahors.com>
Message-Id: <175438528635.3506967.11568292814343312236.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:14:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_021448_109934_016E257D 
X-CRM114-Status: UNSURE (   8.93  )
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
Subject: Re: [PATCH] ddr: imx9: fix DRAM PLL bypass
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 18 Jul 2025 20:12:42 +0200, Mathieu Anquetin via B4 Relay wrote:
> On i.MX9, clock selection for DDR PHY is done by setting/clearing bit 0
> of GPR_SHARED2 register.
> 
> This is done using the generic function ccm_shared_gpr_set() which takes
> two arguments, the GPR number and the value to set. However, this
> function did not use the GPR number to calculate the offset of the
> GPR_SHAREDn register to set in the CCM.
> 
> [...]

Applied, thanks!

[1/1] ddr: imx9: fix DRAM PLL bypass
      https://git.pengutronix.de/cgit/barebox/commit/?id=a10fb28638ab (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



