Delivery-date: Tue, 30 Jul 2024 10:15:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYi0g-004P1V-1V
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:15:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYi0c-0004iT-UY
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:15:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8G8ICLcHWxW4fHmnVMjopE9+A4vOTYJr6sjcT9tnmXg=; b=UkftCjA9vxmVoYnJrGRMGPrkq6
	MMRhsXcjNabz5+d6IowNfOsdGIUITZou6JsafvJpX+TMrirT6NOFyM6v5yEYaWTkYbsohUP+KyzgQ
	ErLX5tPTHs91cGS9kfMqIVgo1NOD7FQRwqD+/7fEDT+77aCKOih4qsDr2i1c+YTY0pBuc6aXqZJLl
	lNN+uTO8Cu3DUbNGVuGSfMt1yB1vT2m8l9vn8O0iJ1ocSyxApvSBgYIzyMTJ5KNwIZeBXnVFUxsFP
	w4PfPp6gWjfaismhOAo1dHFQ6YU70g1HiMXu0bSqnyiWtknEAeH9RExz40lTW1Hkst8C54pw4FJ4P
	pbR7KHng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYi09-0000000ECRB-1Typ;
	Tue, 30 Jul 2024 08:14:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYi05-0000000ECPY-0HmK
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:14:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi03-0004f6-Fp; Tue, 30 Jul 2024 10:14:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi03-003ExZ-2B; Tue, 30 Jul 2024 10:14:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi02-004hDR-3C;
	Tue, 30 Jul 2024 10:14:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240724094744.894205-1-a.fatoum@pengutronix.de>
References: <20240724094744.894205-1-a.fatoum@pengutronix.de>
Message-Id: <172232726698.1119323.450860942306088967.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 10:14:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_011429_172272_70EBF457 
X-CRM114-Status: UNSURE (   8.24  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] calloc: handle wrap around in total buffer size
 correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 24 Jul 2024 11:47:45 +0200, Ahmad Fatoum wrote:
> calloc() should allocate a memory buffer that fits the product of its
> arguments or return NULL if this is not possible.
> 
> We violated this so far and a wraparound would result in allocating a
> too small buffer leading to buffer overflows.
> 
> Fix this by using size_mull which saturates at SIZE_MAX, which malloc
> should gracefully return NULL for.
> 
> [...]

Applied, thanks!

[1/1] calloc: handle wrap around in total buffer size correctly
      https://git.pengutronix.de/cgit/barebox/commit/?id=198054e168f8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



