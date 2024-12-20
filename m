Delivery-date: Fri, 20 Dec 2024 09:19:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYEm-00ANHf-15
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 09:19:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYEm-0000mb-95
	for lore@pengutronix.de; Fri, 20 Dec 2024 09:19:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QT4sFSHbpg+gYMEkrw214LAXKuNOG7yuOy9DNqLXkuE=; b=b5ZLJblBPTr8Cq0W+855O1G8Ye
	4RSnaRl9+1ZZMWcdB6lhXxlsOTqF3TyWWLgpScFVkMdjGsVnrkJalSERnxT8M1uV5H1zEjEsXb8H9
	pitL1ZQi+1Kub9RRI/Wb4fCRHg66KLRjt3j5HcuK8FcnOotM7t51WUbcduqEvgir+fDi4EwUD/F+X
	Jk89LKh8C0ebpl+ufxtq0kyyqJk8ypDDBo7TAdVeI9pRnqZO1WQzg1ZasQvNXHdIj391XwqwEYoNn
	83iqia9MkRx+4OChmdDNgqsG7R/gIU+FkRMgiXvFgWL3gDM92PI+DI3TmylVsFCzSajg3bmJvK0s9
	I839ciXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYEC-00000004G10-0nIM;
	Fri, 20 Dec 2024 08:19:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYE9-00000004G0c-2DlE
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 08:19:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYE6-0000eG-LR; Fri, 20 Dec 2024 09:19:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYE5-004LPD-2G;
	Fri, 20 Dec 2024 09:19:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYE6-00DCZ2-1L;
	Fri, 20 Dec 2024 09:19:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241219111603.1020442-1-a.fatoum@pengutronix.de>
References: <20241219111603.1020442-1-a.fatoum@pengutronix.de>
Message-Id: <173468275440.3146545.3520942967642931694.b4-ty@pengutronix.de>
Date: Fri, 20 Dec 2024 09:19:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_001917_574390_73BC2DD0 
X-CRM114-Status: UNSURE (   9.64  )
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
Subject: Re: [PATCH 1/3] of: fdt: reserve properties and nodes starting
 with $ for barebox use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 19 Dec 2024 12:16:01 +0100, Ahmad Fatoum wrote:
> We have at least two places, where we associate extra information with a
> device tree, either to consult this information later or to make sure
> that an extra allocated buffer is free'd along with the device tree is
> tacked onto.
> 
> For robustness, we will move such extra nodes and properties into their
> own namespace by prefixing them with a '$'. This character is disallowed
> by the device tree specification and we have no DTs making use of it.
> 
> [...]

Applied, thanks!

[1/3] of: fdt: reserve properties and nodes starting with $ for barebox use
      https://git.pengutronix.de/cgit/barebox/commit/?id=a3efebe91423 (link may not be stable)
[2/3] of: fdt: rename /memreserve special node to /$memreserve
      https://git.pengutronix.de/cgit/barebox/commit/?id=703c04191b65 (link may not be stable)
[3/3] FIT: cache uncompressed data
      https://git.pengutronix.de/cgit/barebox/commit/?id=b1babdb15cf0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



