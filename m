Delivery-date: Fri, 27 Jun 2025 21:05:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVEO8-00BiV2-03
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 21:05:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVEO7-0006Wa-Ds
	for lore@pengutronix.de; Fri, 27 Jun 2025 21:05:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j/OUnRh3gWvN5FYAn0/2iv6RTGAnUcfLmc++M9+dYVE=; b=TQAOedtiI6kFHfgMyOk5q8tirS
	sbthWhKxtzZbpkVUQZ7IC+P42/vHeBdABIqWRBuvX1NKUWnrdoDBZR6tnY9fp/QzWGKJaoC67BeTs
	2SE6Q5YmcAER8NZ9ej2IFHaRfPKofXjfTj+5zFDiZr8J9N0UsUWbaZLQ+vJDRZ7aQ4jTcI4aNmrUy
	Ui0HSVTK7cr9Ag5ReG3QDb9rZNsl0lGJJy6CJN/ktE5mPA0AJVDH/3XmbJGnIZBG0Z/iIH0ien8jt
	8Dq21JGvUmB+zLSfEXVFj2DYq6hQc903Ab3Ynj3n7/ztxt5AHczfjBGAG8F+wTj9hzXzqZZv2xOCJ
	4iMRqoLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVENT-0000000FYsQ-0r9b;
	Fri, 27 Jun 2025 19:04:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVCqN-0000000FPSa-42Mt
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 17:26:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uVCqM-0002pP-Cz; Fri, 27 Jun 2025 19:26:30 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uVCqM-005eVb-0i;
	Fri, 27 Jun 2025 19:26:30 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uVCqM-003eTA-0M;
	Fri, 27 Jun 2025 19:26:30 +0200
Date: Fri, 27 Jun 2025 19:26:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aF7URhGJp73oFfmw@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-8-4b098e8ac7cd@pengutronix.de>
 <20250627155723.sqzulkbykzlf6ga6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250627155723.sqzulkbykzlf6ga6@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_102632_002118_1E20789C 
X-CRM114-Status: GOOD (  26.26  )
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
Subject: Re: [PATCH 08/14] ARM: mach-imx: tzasc: add
 imx6[q|ul]_tzc380_is_bypassed()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jun 27, 2025 at 05:57:23PM +0200, Marco Felsch wrote:
> On 25-06-27, Sascha Hauer wrote:
> > From: Marco Felsch <m.felsch@pengutronix.de>
> > 
> > The TZASC_BYP bits in the IOMUX GPR offer a great way to shoot yourself
> > in the foot. These bits are cleared by default and with these bits
> > cleared the TZASC will never check DDR transactions. The TZASC can be
> > configured normally with the bits cleared, it just doesn't work and all
> > secure regions can be accessed by the normal worls. These
> > bits can only be set in the DCD table, trying to set them in code will
> > make the system hang. As the DCD tables are board specific it's easy to
> 
> I think this is not entirely true. At least the i.MX6 TRM says, that any
> DDR access must be done before the TZASC is turned on.
> 
> Since most i.MX6/7 boards do use the DCD RAM setup and tell the BootROM
> to load the barebox(-pbl) directly into RAM, we can enable it only from
> DCD. But it should still be possible to enable it within the code, like
> we do for i.MX8M. This only requires that the barebox-pbl is loaded into
> internal OCRAM which is the rare case for i.MX6/7 boards.

So you mean that the bypass bit has to be set before the DDR controller
is initialized which requires us to put it into the DCD table when we
initialize the DDR controller in DCD?

Well, that makes more sense to me. I'll adjust the commit message
accordingly.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


