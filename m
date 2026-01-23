Delivery-date: Fri, 23 Jan 2026 09:13:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjCIl-004Pwz-0w
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 09:13:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjCIk-0002JE-BE
	for lore@pengutronix.de; Fri, 23 Jan 2026 09:13:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j7Qvs8HLmwP7R53+umH1pHsgkFPbX4lqGo9ExhaSDxU=; b=BCcBAS17VhMQF8pjO7mbbnxMiy
	r4Ee5Oz/YLN4hdMsGMpWz69Zok0ygMOOJRzYqj/b5WLcx82C18iPOfgch1fRAhL2C2BTfTqsy04m8
	+Ptpr1e/qWw34HI0Ti4SucACBqZ4uAy9fptSy860t8Scqv3hkbUPetFGnEWbQ3qw6jfWOj5u4Uk0u
	K8gUWHNnPxmWNcKHzDM7+Bb/ZQQAeYaFIHDtq6+gWLLtg5qj0JliK+QNt9cbZeGlgsW3SS5cYy3Ck
	DJG/Kp0cYlFYkyzL4XdXB4j2KPbei9OGjEOJ9fEAxquVQCVcC0Wm8qEXbsNaFf+LzORqS0niQ0bv8
	1xEVbDlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCIE-00000008ROs-1pHK;
	Fri, 23 Jan 2026 08:13:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCIB-00000008ROD-3hlb
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 08:13:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCIA-0002CG-1h; Fri, 23 Jan 2026 09:13:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCIA-0023rF-13;
	Fri, 23 Jan 2026 09:13:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCI9-0000000GFk0-2VYL;
	Fri, 23 Jan 2026 09:13:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, 
 "Claude Sonnet 4.5" <noreply@anthropic.com>
In-Reply-To: <20260120122755.635347-1-a.fatoum@pengutronix.de>
References: <20260120122755.635347-1-a.fatoum@pengutronix.de>
Message-Id: <176915599759.3873591.678012144665718454.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 09:13:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_001319_945515_A6975D83 
X-CRM114-Status: GOOD (  10.18  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: py: helper: return typed data from
 of_get_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Jan 2026 13:27:54 +0100, Ahmad Fatoum wrote:
> For the simple comparison we currently do, comparing the output of
> barebox of_dump as-is was sufficient. But once we want to do more like
> comparing 64-bit integers for example, it would be more convenient if
> of_get_property could be made to directly return the value with the
> correct type.
> 
> Extend the function to support this.
> 
> [...]

Applied, thanks!

[1/1] test: py: helper: return typed data from of_get_property
      https://git.pengutronix.de/cgit/barebox/commit/?id=d549ccfcbdf4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



