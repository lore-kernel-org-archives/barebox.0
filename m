Delivery-date: Fri, 10 Nov 2023 13:43:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1QrM-005qWt-2N
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:43:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1QrM-00007S-Oj
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:43:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZtSnTTUJ2KXt81CvSRj7BNCp9Z+U5ALBr3pXwmzZz3o=; b=fs7bnWsAjoihY7hbGVHX7Z6QGy
	oLxvWAGymlmnySwVUD8cNiPpw0xjqoGZfAwgb5gmf5n5JBtIvGoQbjL7dNkCjBPSPrv92RRWyW172
	up1EhCPE8FocdiOQcojfsDyifkI1HT5rEZoFtEA53tuhxY+JEuhLAC3NZqHcpwCT8g/eQRAL0irp3
	TYQ9OE7ztHbi4JI2QjrDBDBLJWzK9H9NcTo3X4qCwLOiu0M8wkN/k6nf/V47TqZja+d8JIx0NuGgK
	zadEf9xfhitcredx4iXmocjtsOhBRy6F3GWBhGh7YBjQdpXqCi0BcJTughOG9imdjkEke+BLhcRIt
	olpPoBHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Qpz-008h0d-0e;
	Fri, 10 Nov 2023 12:42:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Qpu-008gzH-2E
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:42:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1Qpq-0008Ix-H0; Fri, 10 Nov 2023 13:42:06 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1Qpq-0081Ut-2g; Fri, 10 Nov 2023 13:42:06 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1Qpq-001LKy-0Q; Fri, 10 Nov 2023 13:42:06 +0100
Date: Fri, 10 Nov 2023 13:42:06 +0100
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110124205.GW3359458@pengutronix.de>
References: <ZU4C4WtD8k3Xzl4W@hephaistos.inside-m2m.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZU4C4WtD8k3Xzl4W@hephaistos.inside-m2m.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_044210_731942_32A2CA6E 
X-CRM114-Status: GOOD (  16.79  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Rockchip rk3328 support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Konsti,

On Fri, Nov 10, 2023 at 11:16:01AM +0100, Konstantin Kletschke wrote:
> Dear barebox community,
> 
> is something like the rk3328 supported actually? I have a Dusun DSGW-210
> device here which _seems_ to be mainly 99% like a rk3328 EVB board (Olimex
> rk3328 eval bord).

The rk3328 is not yet supported. We have support for rk3568 and rk3288
though, so the ground work for generally supporting Rockchip SoCs has
been done. I don't know how similar the rk3328 is to the supported SoCs,
you could have a look at the Kernel or U-Boot to see how close they are.

> 
> From the CONFIG options or cpu support files I would say no, but there
> is dts/src/arm64/rockchip/rk3328-evb.dts which sounds rather good so I
> wonder if this is hidden as a subset under other board/cpu.

The dts/ directory is taken verbatim from
git://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git
which contains all Linux device tree files. The ones actually supported
by barebox are in arch/*/dts/. These include the upstream device tree
files where possible

Regards,
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


