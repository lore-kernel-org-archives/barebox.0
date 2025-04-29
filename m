Delivery-date: Tue, 29 Apr 2025 10:38:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9gUJ-000RJJ-1i
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 10:38:47 +0200
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9gUI-0000Gv-UI
	for lore@pengutronix.de; Tue, 29 Apr 2025 10:38:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uUDRiAfDoxAPyrr3Ez+bQWx6yJMxGFu1qB6H53lwlHM=; b=rm7d0ddfX9H4uFf0bfAuAFZZzx
	DkJtnO5sUegLsnqyWfUv0wxaRbEVt2+Jl7oPlNnNgG44VpOerQvTfKpU+ygXl2cZUbV5lRiTjqNF9
	gHkHFeqh7b0HcXAVdVYP2hChKATUs3JZmdCv4/qhoW3K/JuHjSs1LN0EiW1Xtf0x47fSQmKRnAI5i
	4cW2FP8CTtGNNwhmoK9mbuMjclJIdVmwe7i5Waxlf5DZCx7sPbb4USeDqesOl/RwabOeuDdlMIm1p
	Ke0foNXW4Thw13eUwlty+1uzkq0N7Mw3yxM3tbBLfHswHCtvPAEOzGJs2dBmnRRrjEk0sljo1peY1
	Ij/6A15w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9gRQ-00000008xdu-0YD2;
	Tue, 29 Apr 2025 08:35:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9gPk-00000008xLs-3G7g
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 08:34:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u9gPi-0006Ng-8O; Tue, 29 Apr 2025 10:34:02 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u9gPh-000EO6-2P;
	Tue, 29 Apr 2025 10:34:01 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u9gPh-00Aom5-21;
	Tue, 29 Apr 2025 10:34:01 +0200
Date: Tue, 29 Apr 2025 10:34:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: johannes@gnu-linux.rocks
Cc: barebox@lists.infradead.org
Message-ID: <aBCO-SSyT0BQnlek@pengutronix.de>
References: <20250428172001.6708-1-johannes@gnu-linux.rocks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250428172001.6708-1-johannes@gnu-linux.rocks>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_013404_817864_47D94CE3 
X-CRM114-Status: GOOD (  25.74  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Porting Cora Z7 Board to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Johannes,

On Mon, Apr 28, 2025 at 07:20:01PM +0200, johannes@gnu-linux.rocks wrote:
> I have a Cora Z7 board which I want to port to barebox. The Cora Z7 embeds an
> Zynq 7000 SoC with a single core Cortex-A9 and 512 MB DDR3 memory. Barebox
> already supports the Zynq 7000 and the Avnet Zedboard.
> 
> I have some questions and maybe you can point me in the right direction:
> 
> When I am compiling barebox with the zynq_defconfig, as an output I get the file
> barebox-avnet-zedboard.img. This file contains the PBL, barebox proper and the
> device tree, right?

Right.

> 
> The Cora Z7 uses a different memory configuration compared to the Zedboard. My
> first idea was to use Xilinx FSBL and let the FSBL start barebox. The FSBL can
> start an ELF file. But if I use just the compiled barebox file, the device tree
> is missing, right?

In case of the Zedboard you could take start_avnet_zedboard.pbl. This
contains all necessary components including device tree and barebox
proper.

However, this binary is linked to 0x0 and the FSBL will likely load it
there. I don't know where the FSBL itself is located.

> Is there a way to hard code the UART to use for the barebox
> console for barebox proper?

Why do you want to hardcode it? Setting the console via device tree is
just fine.

For debugging your early code I recommend CONFIG_DEBUG_LL. For zynq the
UART is hardcoded to ZYNQ_UART1_BASE_ADDR in include/mach/zynq/debug_ll.h.
You can change it in this file.

With CONFIG_DEBUG_LL enabled you can put putc_ll() in your code.

> 
> The Zynq on the Cora Z7 only embeds a single core Cortex A9 while the SoC on the
> Zedboard embeds a dual core Cortex A9. Does this affect the cores initialization
> in arch/arm/mach_zynq?

I don't think so. I haven't used Zynq myself though.

Regards,
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


