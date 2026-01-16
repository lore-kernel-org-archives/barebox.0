Delivery-date: Fri, 16 Jan 2026 08:17:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vge5M-001sXI-1S
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 08:17:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vge5L-0006Q4-G8
	for lore@pengutronix.de; Fri, 16 Jan 2026 08:17:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lp17wJ8gFN2S5keEdUT69gHV9Y83nE5zDbX9OoDmCjk=; b=A0u4/gMuqBB2Ke9AsYZWm2Oq0r
	IKT4Bv0Kln3UplyCZBmosPLY2XR3fNEqUhK1jTikn0Jl+1BWxgowyRn8tDk5Z74FB4ZKOTJFL/PkT
	Y3c3Je0yiR7xeJnnZEUKA+hO/FQdkYqBLkkTbVci/M4j5MhXcNIBoLGyQYWtjy+9yCv828nV0jtJL
	IbfEqsINWBY+t65K0HGuCVU1WPaneA+i6APU/y9kdiVOZiEenj3UlBvXXN1CKWzN47jNGuHHjNwm/
	Pw9F99dYTG/kF/K5GwCp83bIkyEJ1J4heuEanFetzcH8vQmXWBT8Qh7wrPGSDQ0t8kqAMKiJIOj0x
	+NzfzIHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vge4w-0000000Dge3-28lP;
	Fri, 16 Jan 2026 07:17:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vge4t-0000000Dgdf-3xJO
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 07:17:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vge4r-0006Lq-Sj; Fri, 16 Jan 2026 08:17:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vge4s-000sfI-1C;
	Fri, 16 Jan 2026 08:17:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vge4r-00000005Oa5-2ggm;
	Fri, 16 Jan 2026 08:17:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260114101304.113538-1-a.fatoum@pengutronix.de>
References: <20260114101304.113538-1-a.fatoum@pengutronix.de>
Message-Id: <176854782163.1286104.15734060902681652526.b4-ty@pengutronix.de>
Date: Fri, 16 Jan 2026 08:17:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_231704_011120_A82C1059 
X-CRM114-Status: UNSURE (   6.47  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] commands: delpart: return success when no error
 occurred
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Jan 2026 11:13:01 +0100, Ahmad Fatoum wrote:
> Since the introduction of cdevs, this command returns 1 unconditionally.
> Fix that up to return 0 on success and a more descriptive code
> otherwise.
> 
> 

Applied, thanks!

[1/2] commands: delpart: return success when no error occurred
      https://git.pengutronix.de/cgit/barebox/commit/?id=03f98935469b (link may not be stable)
[2/2] lib: cmdlinepart: support RO both in lower and upper case
      https://git.pengutronix.de/cgit/barebox/commit/?id=074474d03fdb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



