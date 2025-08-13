Delivery-date: Wed, 13 Aug 2025 09:52:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6I3-0006kQ-2K
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 09:52:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6I2-0006q7-Ke
	for lore@pengutronix.de; Wed, 13 Aug 2025 09:52:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VF6sBVwwqYGzQ6MVZ4GYLc3e+JIHV3r8HHHS5lzAbho=; b=4qXOLioSPK/HkBOUB/sgD2bqxI
	sy5qlOSej8JzugsTYQxKPUWmVglR8SfSBioRDXzheuawIluqF8twYzgngOt7WwCJDlJMooLMIF1QI
	L47C/TpI9BbUnwqW15yE10DSwkso2ZSgLtkStrzNP5aKkJQPKs9MRwvXd8SqgD7uWYL6fwN/1QCq/
	LHBTzLNpQrcJHx3Pk4c9evOSNlrghflhLNbvfvUqu3YKyOP4mv7aV4Sa8H84Gy7dtWBYkYszWgx6+
	1grsWyMuSsIwMYVIrXj4Z2L9lLozJ8FjGCi6iolPp8Vbul0HBP1qj97faKnh7QQ9FOb9fxh62wQm6
	xPfwUYUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6Ha-0000000CzZj-1Q1S;
	Wed, 13 Aug 2025 07:52:26 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um5u6-0000000Cvj3-0a1o
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 07:28:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=VF6sBVwwqYGzQ6MVZ4GYLc3e+JIHV3r8HHHS5lzAbho=;
	b=iJDMqj0yA3y3tvFrN+Nx4Qf2C5avf+KaqOk6tkgoyLH6UU2xTePJ7kUZtHCa1MJE9mr0fun2Oi/l2
	 N/UEfPEb9xBjbJZkvboiLzp8q/K8z/L4WVeVc9/VCGubBFwG40ZuUO7bNOEGyUd6yFejUEKL28tZzq
	 X0i4AiVvPcgSdEKsLF58uslvrkUC6DlfFP0S7K++7ejylvumzyC1xxgpQqcAlHhbDi+2NFE3dzjj0L
	 6NsLig/Cl8+yBGhVM9xKq2cazwYAMMk2F7h5N4AIrzpriDh+smMfk3x997Iw+oNhUkPmuDcB9wTDnk
	 qlvw2FQZwEbZWIL4PK2Sz+ugTANyUqQ==
X-MSG-ID: 0e36ac3d-7817-11f0-8663-0050568164d1
Date: Wed, 13 Aug 2025 09:28:05 +0200
From: David Jander <david@protonic.nl>
To: barebox@lists.infradead.org
Message-ID: <20250813092805.52885156@erd003.prtnl>
In-Reply-To: <20250813070149.855341-1-david@protonic.nl>
References: <20250813070149.855341-1-david@protonic.nl>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_002810_323331_AEACF401 
X-CRM114-Status: UNSURE (   9.15  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: boards: Add support for Protonic PRTPUK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 13 Aug 2025 09:01:49 +0200
David Jander <david@protonic.nl> wrote:

> PRTPUK is a credit-card sized ISOBUS virtual terminal, based on the
> Rockchip RK3576 SoC, that features a CAN interface and a 100/1000Base-T1
> interface for HS-ISOBUS (HSI), as well as a USB-C port for connecting to a
> touch-screen monitor.

Note: This code should apply to next as of today, but next doesn't compile
right now. On v2025.07.0 it depends on the RK3576 support patches, but will
build (and run) fine when both are applied.

Best regards,

-- 
David Jander


