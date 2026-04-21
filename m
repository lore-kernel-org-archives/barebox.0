Delivery-date: Tue, 21 Apr 2026 10:48:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF6mg-00EevA-2l
	for lore@lore.pengutronix.de;
	Tue, 21 Apr 2026 10:48:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF6mg-0006Pp-Ab
	for lore@pengutronix.de; Tue, 21 Apr 2026 10:48:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j+Y7AZpOOJuAFYA22DmZ01+33C2TbwP8n3UMhtadns0=; b=1HwUTtC+KxZ0bCog4OPJjX4Dp/
	Pf0tSoTMDhEhAHgHGMBrD+G2ucwwfKvpdlo6zOWt+/wi4v2gyO9uD8+2BHdjzv/3SsG9fE8dxSJTw
	eeW7sGgrwfhcpNsZsE2/tdd4WmR+VCszpQH94GGcpg4BSv6dGZFHfrTRoWspBt8CXRx51RlrGt01q
	HO87mfCUKhJWzXW1GbNAP4XtK7kocbj+nrQVmXRNCBzfhTpYAmDsC6B7AKaDvt/sP5nWmihw6DOnO
	pY1CCo2xHqRjdp2gW+Y2DLmPenWn3M7ukAm2SDHsLUjawa7z6OQJ7duSr/xf0pyhQlSDKUQ2KUEhP
	UGTQ4Frw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF6mJ-00000008Gyz-1ANY;
	Tue, 21 Apr 2026 08:48:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF6mG-00000008Gxw-2qCm
	for barebox@lists.infradead.org;
	Tue, 21 Apr 2026 08:48:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wF6mD-0006KA-Qa; Tue, 21 Apr 2026 10:48:13 +0200
Message-ID: <78469058-e730-4edb-9557-7ea1623223b1@pengutronix.de>
Date: Tue, 21 Apr 2026 10:48:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20260421084603.2161981-1-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260421084603.2161981-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_014816_723111_2725C584 
X-CRM114-Status: UNSURE (   5.69  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: user: use matrix.to instead of element.io
 link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-04-21 10:46, Ahmad Fatoum wrote:
> Element is a client for the Matrix protocol and users may want to use a
> different client.
> 
> Use the generic matrix.to link instead to point at our channel.
> 
> Suggested-by: Jonas Rebmann <jre@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


Reviewed-by: Jonas Rebmann <jre@pengutronix.de>


