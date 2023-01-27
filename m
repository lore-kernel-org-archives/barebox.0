Delivery-date: Fri, 27 Jan 2023 09:08:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pLJmi-003hC9-3h
	for lore@lore.pengutronix.de; Fri, 27 Jan 2023 09:08:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pLJmf-000662-Jj
	for lore@pengutronix.de; Fri, 27 Jan 2023 09:08:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Thld22vhUOTvf3H0Dnu099LBcS0+zpos8ffFTdYgiUs=; b=MOQ93f5Wiey7wskbwyAhENQ+Mi
	GGJt8grOPwiFrHJDFyYMSApQPCHIVOkJYyAOP5qQK1RFxnU5EhH2pPb6scox+WVBzhkrRlmL4TYy6
	rew9h7hrZ0PgIb3PkWtOiNBrqzHFHHDZztkaNdq0jyVE4N+qfIy3CMUoU6prH6AXZxRsL2UR35Jf1
	NUjDEyrB2E20BeX82B2AcYBBsuSun0Kr7Iu4CkQDCgvrubPBa7DSM8gn/tLb3ahGMWIeesIg4gHXG
	GgUg4VgdP5Si/JIiNlwheV222elyGi+O/ARDbDrytiqoz3Hf3Q+fIs/9VyJLdRWvAjDBljdJ1BySW
	7i2HxMgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLJkx-00DUOM-UJ; Fri, 27 Jan 2023 08:06:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLJks-00DUNi-8b
	for barebox@lists.infradead.org; Fri, 27 Jan 2023 08:06:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pLJko-0005tC-41; Fri, 27 Jan 2023 09:06:34 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pLJkn-0003T4-67; Fri, 27 Jan 2023 09:06:33 +0100
Date: Fri, 27 Jan 2023 09:06:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230127080633.5f2g46g3j6j7wcpm@pengutronix.de>
References: <20230126183624.85500-1-contact@jookia.org>
 <20230126190258.110423-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230126190258.110423-1-contact@jookia.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_000638_317982_E46C2C74 
X-CRM114-Status: GOOD (  11.07  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX6: Specify OCRAM base address and size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

On 23-01-27, John Watts wrote:
> The i.MX6 includes some on-chip RAM: 128KiB on most variants, with 256KiB on
> the Dual and Quad variants.
> 
> This region is where the first stage of Barebox gets loaded if RAM
> initialization isn't hard coded using DCD information.
> 
> Add the base address and size so it can be used to calculate where to put the
> stack at boot.
> 
> Signed-off-by: John Watts <contact@jookia.org>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


