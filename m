Delivery-date: Thu, 14 Aug 2025 16:31:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYzZ-000XJr-1X
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 16:31:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYzY-0003mf-9f
	for lore@pengutronix.de; Thu, 14 Aug 2025 16:31:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4gKcFA5hwc+srfHny5sUfOaye7oFL4xJ42buXd790D0=; b=inAFCD+ubWq7zgfP+WEHHQMekx
	Nk5nVIMaQgEChi2DGClDCqwVR7CzGpby28BpLffpQihFOUybdy0PZ2AbpbLlbCak1Q0yGXV5qWE/Z
	/nzFP6uj4I//lIavvkh5DibsOZAuyQvCReIGKqveKReC2A1zX68kAOAaLrDkCYvG9CkxvVbTA7hD+
	d+U1nC+ZHvVRjv8nPlgi9cZ+HiUcRM6IdiLAKBbIi9RNQVaWhXLFmCkSlTRBnGED0zGiwK7u0jUx1
	vyjL02tGUQYcxsoaafoYbNEfgyNy67mdsvlgUnzTeR08wwAkIIK+5+Se9b0TD/3/YX21+xNrO3Mfd
	fWNy3mZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYzM-0000000HGWU-1o13;
	Thu, 14 Aug 2025 14:31:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umW6Q-0000000Gk3n-22OF
	for barebox@bombadil.infradead.org;
	Thu, 14 Aug 2025 11:26:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4gKcFA5hwc+srfHny5sUfOaye7oFL4xJ42buXd790D0=; b=ij4o4T3T95OypLr4V0/Yc7WJB4
	I+G7TSGDZXc1x1fdS/df7kMJC3kTaG09Z+1B3oA8Dmch50lVn1Tns0gduA8gxGy9btDc1JhbUpFz8
	VImUnnRJfOlqx4DyZIYXOM4+b5R74DHJSWpcutrJusNGccRj0k+3UPIcrR3zRiEf5yRBRHl6cFYot
	CrwX02euwmXr/cnfhArdRvPceER4CeNYoc0QZo8u1FbwxSXWTpIRVeG/MO7YnOoYcXx8QME5J+JDG
	GAxM4egGFj+NNfWqNh4DrahLNvQ8kdfLrTLsvEyXHS/2kHGd/sYUoX62LtfvpfluBi+zDP5jsFNoy
	8JFC0/eg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umW6M-0000000GN2B-458a
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 11:26:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1umW6K-0004JD-B8; Thu, 14 Aug 2025 13:26:32 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1umW6K-000FHo-0D;
	Thu, 14 Aug 2025 13:26:32 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1umW6J-00B8IW-37;
	Thu, 14 Aug 2025 13:26:31 +0200
Date: Thu, 14 Aug 2025 13:26:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Jander <david@protonic.nl>
Cc: barebox@lists.infradead.org
Message-ID: <aJ3H5z8f_ePriB-T@pengutronix.de>
References: <20250813070149.855341-1-david@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813070149.855341-1-david@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_122635_201342_072F786D 
X-CRM114-Status: GOOD (  21.05  )
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
Subject: Re: [PATCH] arm: boards: Add support for Protonic PRTPUK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi David,

On Wed, Aug 13, 2025 at 09:01:49AM +0200, David Jander wrote:
> PRTPUK is a credit-card sized ISOBUS virtual terminal, based on the
> Rockchip RK3576 SoC, that features a CAN interface and a 100/1000Base-T1
> interface for HS-ISOBUS (HSI), as well as a USB-C port for connecting to a
> touch-screen monitor.
> 
> +&sdhci {
> +	no-sd;
> +
> +	partitions {
> +		compatible = "barebox,fixed-partitions";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +
> +		/* eMMC reserved 8MiB for barebox (2 copies?), env and state */
> +		environment_emmc: partition@7b0000 {
> +			label = "barebox-environment";
> +			reg = <0x0 0x7b0000 0x0 0x10000>;
> +		};
> +
> +		/* eMMC state after barebox and environment */
> +		state_backend_emmc: partition@7c0000 {
> +			label = "state";
> +			reg = <0x0 0x7c0000 0x0 0x40000>;
> +		};
> +	};

We are trying to get away from hardcoding partitions outside the GPT in
the device tree and I think we are there.

A partition with the type UUID PARTITION_BAREBOX_ENVIRONMENT_GUID will be
used as environment partition automatically.

A partition with the type UUID BAREBOX_STATE_PARTITION_GUID will be used
as state partition provided the state node points to the device
containing this partition.

We also have a parted command to create/modify partitions and for
further convenience a createnv command which will create a barebox
environment partition in case you haven't built a full partition image
from a BSP.

It would be great if you could test this and eventually switch over to
it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


