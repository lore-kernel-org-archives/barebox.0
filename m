Delivery-date: Thu, 18 Sep 2025 08:19:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz7zB-004MYZ-0R
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 08:19:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz7zA-0000r6-IP
	for lore@pengutronix.de; Thu, 18 Sep 2025 08:19:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S+G4CT8fWtKj9R/9arbi4q/FurQ7QIvw55eG/eTgwB4=; b=VobpJE5Zp2cpjmRx/KKxd6H2lo
	8PDVavpbJgU2qvRVsTnQKf4JDV+GRURPZytnCQ+1dJYG21OYEsxajGW/+VDaW8jttDmoUh9c/vbps
	yuhVCVMaDk/shf7GuO8/v/2DC8QFztr/PW0C0yW4TN1v+FC2r3X/8lWWC+NE/qyC3XIH09tSgC7jH
	tbomcgtTEUpLTlEGREbWfphCPDbfJZx2VOkjwO+RkuasnYVy8UdSJ9MYAgIpOrvVct0M0m0k7evug
	hhueNrq85uk8H/mC4sEhvNJcHsspLb/oxzMWpDjHCpIfyTIOfPDM0Inm5IgpZNbaLk7MuTLniF82N
	k3tOi3mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz7yg-0000000GOj2-15Ur;
	Thu, 18 Sep 2025 06:18:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz7yd-0000000GOie-1okQ
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 06:18:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uz7yb-0000l6-Pg; Thu, 18 Sep 2025 08:18:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uz7yb-001tFU-1W;
	Thu, 18 Sep 2025 08:18:41 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uz7yb-00Flwy-1A;
	Thu, 18 Sep 2025 08:18:41 +0200
Date: Thu, 18 Sep 2025 08:18:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aMukQcvHZOMExEzw@pengutronix.de>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-6-2de8f69107a1@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-6-2de8f69107a1@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_231843_475049_F258988F 
X-CRM114-Status: GOOD (  20.09  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/11] boards: enclustra-sa2: read MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi David,

On Wed, Sep 17, 2025 at 05:22:09PM +0200, David Picard wrote:
> Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
> ---
>  arch/arm/boards/enclustra-sa2/Makefile    |   2 +-
>  arch/arm/boards/enclustra-sa2/atsha204a.c | 436 ++++++++++++++++++++++++++++++
>  arch/arm/boards/enclustra-sa2/atsha204a.h |  19 ++
>  arch/arm/boards/enclustra-sa2/board.c     |  51 +++-
>  arch/arm/boards/enclustra-sa2/crc16.c     |  65 +++++
>  arch/arm/boards/enclustra-sa2/crc16.h     |  28 ++
>  arch/arm/mach-socfpga/Kconfig             |   1 +
>  7 files changed, 598 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/enclustra-sa2/Makefile b/arch/arm/boards/enclustra-sa2/Makefile
> index 8c927fe291a6b3eb20a32a2db96c73f231ab4697..1448ea1266aa24a5b0404cb6379f8c2d76573079 100644
> --- a/arch/arm/boards/enclustra-sa2/Makefile
> +++ b/arch/arm/boards/enclustra-sa2/Makefile
> @@ -1,2 +1,2 @@
> -obj-y += lowlevel.o board.o
> +obj-y += lowlevel.o board.o atsha204a.o crc16.o
>  pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/enclustra-sa2/atsha204a.c b/arch/arm/boards/enclustra-sa2/atsha204a.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..3f445de06e73c5bdf27d2d0fc81dc6d939d5cd17
> --- /dev/null
> +++ b/arch/arm/boards/enclustra-sa2/atsha204a.c

This looks like you should rather adopt the Linux driver from
drivers/crypto/atmel-sha204a.c.

Maybe you can even create a NVMEM cell for the MAC address and then no
board specific code would be needed for retrieving the MAC.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


