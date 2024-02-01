Delivery-date: Thu, 01 Feb 2024 16:09:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVYgj-00FoJl-2Z
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 16:09:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVYgk-0005HT-Fc
	for lore@pengutronix.de; Thu, 01 Feb 2024 16:09:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gxe+WptH3LarkF2K4MkGU6T4YbjaFRYXIjm1YHG4aeQ=; b=QhqkiIuB9V0iVdRQkavC/8oQC6
	Y1AXIfkuWQdnp3mu+I9BSY+klZJxyeSQc1pVIK0G/8d6idBAtWsVmM8rQVKiMwrmJwIzg53j9ajTi
	gwwfiQT/b1DLVGpFccP70OJkm8wj81Cw0fSzMXZFS9ZOH7LgtRAAbSj5/9SkYz6gW7apjF3Ojbmjh
	j2j7ki9tgTgckOZ0TVAg45lrVE4equJRChJXz/JTEeaCnQ/AJ+QSUpjAZPF/o2hHPO3b3HD3r2hai
	BmFTYmyShO82PcS83teU9U5dE69OcHL5hhJNMHe7NMvxczjQxZnSgliweawqzSU7gSS9FOQFa4jhI
	hMx4YWUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVYgG-00000008Nog-3HVM;
	Thu, 01 Feb 2024 15:08:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVYgC-00000008NmS-2FjU
	for barebox@lists.infradead.org;
	Thu, 01 Feb 2024 15:08:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVYg9-0005De-QM; Thu, 01 Feb 2024 16:08:37 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVYg9-003sfp-DP; Thu, 01 Feb 2024 16:08:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rVYg9-00Er5E-15;
	Thu, 01 Feb 2024 16:08:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: str@pengutronix.de, ske@pengutronix.de
In-Reply-To: <20240131225938.1746123-1-a.fatoum@pengutronix.de>
References: <20240131225938.1746123-1-a.fatoum@pengutronix.de>
Message-Id: <170680011732.3540631.7681621593818231352.b4-ty@pengutronix.de>
Date: Thu, 01 Feb 2024 16:08:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_070840_613763_F6A612CB 
X-CRM114-Status: UNSURE (   7.54  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 0/4] ARM: socfpga: add HANDOFF_FPGA2SDR handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 31 Jan 2024 23:59:34 +0100, Ahmad Fatoum wrote:
> The Quartus headers for Cyclone V can contain a reset mask for the
> fpga2sdram bridge, which was so far ignored. This series remedies that.
> 
> Ahmad Fatoum (4):
>   ARM: socfpga: complete definitions of handoff registers
>   ARM: socfpga: populate HANDOFF_FPGA2SDR with Quartus value
>   fpga: socfpga-fpga2sdram-bridge: consult HANDOFF_FPGA2SDR register
>   fpga: socfpga-fpga2sdram-bridge: always populate HANDOFF_FPGA2SDR
>     register
> 
> [...]

Applied, thanks!

[1/4] ARM: socfpga: complete definitions of handoff registers
      https://git.pengutronix.de/cgit/barebox/commit/?id=c23d507559f4 (link may not be stable)
[2/4] ARM: socfpga: populate HANDOFF_FPGA2SDR with Quartus value
      https://git.pengutronix.de/cgit/barebox/commit/?id=27f68143f533 (link may not be stable)
[3/4] fpga: socfpga-fpga2sdram-bridge: consult HANDOFF_FPGA2SDR register
      https://git.pengutronix.de/cgit/barebox/commit/?id=981214989220 (link may not be stable)
[4/4] fpga: socfpga-fpga2sdram-bridge: always populate HANDOFF_FPGA2SDR register
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec3fa0f48cfc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



