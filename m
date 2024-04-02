Delivery-date: Tue, 02 Apr 2024 10:42:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZj4-0037YU-2W
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 10:42:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZj4-0006aT-8R
	for lore@pengutronix.de; Tue, 02 Apr 2024 10:42:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kSheS3IryfDhyFIq2bTI5FrDHJcdBg8wq6lIe+ORdNo=; b=D73hqWi1gCTP+lBRnxDiLEc/qw
	ZcBKEKGt4oFMjk9vSP7vjpVzt8j5pYtgo3mIpbiddB+ymvgeb7bwQVvQQDHK1NREkHm62VlpWaqSR
	M70RRupc7su3diPW8KdgtD4oPDWu1SewNFd557ykhZOltFuyDpii/WQwEObct4CgoOYFedM1CrvHB
	XkiXyFmtYWhsQ8dKPfiylxm4AhPlT6gkx1/ZFfh+eZB5q1IZZMT4wRkEEnWmmcxFtBJxLuf4PWf2g
	9wczTUlGsFjP71MaHxYbcvwFVCAo8A0IFC2qe1Lo8IH3Ia23sObikwh3b08E7v0h33rZGFsdG796M
	f3WPrbbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZic-0000000AHyw-3kU8;
	Tue, 02 Apr 2024 08:42:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZia-0000000AHyS-0WYI
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 08:42:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZiY-000662-OV; Tue, 02 Apr 2024 10:42:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZiY-009wkN-5S; Tue, 02 Apr 2024 10:42:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZiY-00E6j1-0M;
	Tue, 02 Apr 2024 10:42:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Denis Orlov <denorl2009@gmail.com>
In-Reply-To: <20240328183851.3842-1-denorl2009@gmail.com>
References: <20240328183851.3842-1-denorl2009@gmail.com>
Message-Id: <171204732610.3362415.11449000172726161246.b4-ty@pengutronix.de>
Date: Tue, 02 Apr 2024 10:42:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_014208_197783_931228E4 
X-CRM114-Status: UNSURE (   6.74  )
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
Subject: Re: [PATCH 0/3] mips: small improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 28 Mar 2024 21:36:59 +0300, Denis Orlov wrote:
> Denis Orlov (3):
>   mips: cpuinfo: fix cpu name output for unknown processors
>   mips: cpu-probe: identify more MIPS CPUs
>   mips: mipsregs: remove duplicate definitions for Config 1 bits
> 
> arch/mips/include/asm/cpu.h      | 30 +++++++++++++---
>  arch/mips/include/asm/mipsregs.h | 12 +++----
>  arch/mips/lib/cpu-probe.c        | 61 ++++++++++++++++++++++++++++++--
>  3 files changed, 88 insertions(+), 15 deletions(-)
> 
> [...]

Applied, thanks!

[1/3] mips: cpuinfo: fix cpu name output for unknown processors
      https://git.pengutronix.de/cgit/barebox/commit/?id=4fe0614f65c2 (link may not be stable)
[2/3] mips: cpu-probe: identify more MIPS CPUs
      https://git.pengutronix.de/cgit/barebox/commit/?id=e8f9bc9ea42a (link may not be stable)
[3/3] mips: mipsregs: remove duplicate definitions for Config 1 bits
      https://git.pengutronix.de/cgit/barebox/commit/?id=63d38f891a9c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



