Delivery-date: Mon, 24 Mar 2025 09:46:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdRc-003WGA-2M
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:46:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdRb-0007JG-Kw
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:46:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pL3YBTqcxNAqvYfFqFyPSladPGtQSQxbywBEol4Dscs=; b=hbIxNx2MYdjESTmvf8qPyhe6H4
	UB3DK9Be9/pgK0simzwevNOhffdRONRrlyI6fSBl+IjcggwqbdrQV3SOKSzuejRNuSuo1IjPYlP8+
	NDJkiRMb68/Nw9FO9xs57NBGQm+H5yUjqdmo9CchupyqKOu3aMtUCMVhWLH0fKf/1SnqHUOzVeVwV
	Zeg4d1N8LlcQw3CvkPWKdMWNPjdFLM2De8GrOLdxjIAJULUbwoj0725chMxTfLi3+449cB07Wbv+M
	zITSDU4fRmc/n3Ds8EjjJIvd4ANNzxktiLGCyNyjEVyiBxSfyVka+2Na07r8fBV12Fxrtm4C+Yn9e
	5OUPHmsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twdRA-00000002d9m-45Eg;
	Mon, 24 Mar 2025 08:45:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twdQ4-00000002d4F-0tB5
	for barebox@bombadil.infradead.org;
	Mon, 24 Mar 2025 08:44:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=pL3YBTqcxNAqvYfFqFyPSladPGtQSQxbywBEol4Dscs=; b=hl5+nfIyxWcOCjr3nuDAGKSF4U
	ONG0fO2CZu5SKEq/xxoOay7LMwHm4f7V6MqVgh9ORNuNw78/FZPNJjzP0LukxQLb2H8TuQN/XrwDE
	3s+EK3qvxGWMyG5h78xCXCVukO+aRhvVb5nfMEOR6bn/w08c10OhBcZ/zbFgiJQDO7fGfPQdYUFUo
	ZrGzEAym1ImfYNL2f3+0Ofp6VLd+DDxnLVjOyL/iWjn33qloSq8C4slBWDJ8Lsf8Bo0OAIqCjv68c
	+uYQ6R3+HXlGCvSwrBdl6PiAxLl+JOaBlMf0Ngx0UwGb6TAgzSH0Y3IWdfq31fZgI+MEY9d7CrY/a
	ZOd22yVA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twdQ1-00000005CFh-0JuY
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:44:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdQ0-00075b-Dk; Mon, 24 Mar 2025 09:44:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdPz-001NcO-2c;
	Mon, 24 Mar 2025 09:44:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdQ0-007BMY-0X;
	Mon, 24 Mar 2025 09:44:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: jre@pengutronix.de
In-Reply-To: <20250321101218.1181081-1-a.fatoum@pengutronix.de>
References: <20250321101218.1181081-1-a.fatoum@pengutronix.de>
Message-Id: <174280586416.1711837.16460569924122254555.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:44:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_084425_284107_EE499A3C 
X-CRM114-Status: UNSURE (   5.67  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ci: coverity: fix git hash truncation to 10
 characters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 21 Mar 2025 11:12:18 +0100, Ahmad Fatoum wrote:
> A misplaced $ lead to versions looking like this:
> 
>   Version: 2025.02.0-g\{84a1605196530ff77...
> 
> instead of
> 
>   Version: 2025.02.0-g84a1605196
> 
> [...]

Applied, thanks!

[1/1] ci: coverity: fix git hash truncation to 10 characters
      https://git.pengutronix.de/cgit/barebox/commit/?id=c683c1eca2b2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



