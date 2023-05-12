Delivery-date: Fri, 12 May 2023 13:29:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQxM-00F3HQ-FT
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:29:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQxK-0008Pv-HG
	for lore@pengutronix.de; Fri, 12 May 2023 13:29:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KFlAicgNjZrdKiuwlr5v1geMGPhtWfYl+LLOnRa2igc=; b=LGDNkcR3buDpoSPfU3LoXRc44f
	uj9M5E2kBtAjugKHsYQabbSy0COWB41FtLY55Nxwv4YddpzkMoQqg0ezDY0+XWSLa0qebZzfOQYqf
	8nJ2s8u3DR6r/UC0dUrZT5WZkmcGk9x7sJfvTT/KaRzhwFUDBRQOlrJmr1PBl4rgkqmu5etCrCGxP
	5+SP3iwmKsz0RXRZ69PYLZb7MQcCvPFgGxyE0K39re11LqMy8Rh7FiTetUWl+PD/qhgPEMYRO+c5e
	V/VNo6vkMwhP/MKN6AqF4d5dn+TUZyYE+/FEeBr3uu0ihPxY0gpd4MJFY8XyXzv8SwPGGh221Q3ry
	PhCEqmeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQwH-00Boup-0a;
	Fri, 12 May 2023 11:27:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQwE-00BouG-19
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:27:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQwC-0008El-UE; Fri, 12 May 2023 13:27:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQwC-0003KO-8Z; Fri, 12 May 2023 13:27:52 +0200
Date: Fri, 12 May 2023 13:27:52 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230512112752.GP29365@pengutronix.de>
References: <20230511085803.335993-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230511085803.335993-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_042754_394019_62C9944C 
X-CRM114-Status: GOOD (  15.81  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFT][PATCH 0/3] TQMa6x cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 11, 2023 at 10:58:00AM +0200, Roland Hieber wrote:
> Hi,
> 
> I came across this when working on a similar board, but I don't have a TQ MBa6x
> to test these changes, so if someone has one and could try these patches, that
> would be great!
> 
>  - Roland
> 
> Roland Hieber (3):
>   ARM: i.MX6: tqma6x: make use of ENTRY_FUNCTION_WITHSTACK
>   ARM: i.MX: TQMa6x: migrate flash partitions to device tree
>   ARM: i.MX6: TQMa6x: make tqma6x_env_init reusable

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


