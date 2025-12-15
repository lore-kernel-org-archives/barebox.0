Delivery-date: Mon, 15 Dec 2025 08:11:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2jy-00Beee-2v
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:11:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2jy-0000Re-Aw
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:11:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j3+iVBWaNnUaDdMFH8EqScPWe+swOl3SdmDgQ0PYI/M=; b=HWWGXK5tRUZns3sGjH1XkjiAlZ
	tjfgJWQwlExSSd22JiQBKWbmEATFMkRaouRK1R0hwTb9JNaTjr0BcXiyOn4XTFNRwqwaHdHcFWnmU
	UfcaOtVDZY16heqwyyCPRZt7ULuABQ8zAIYV+D/Zg8BGSIGdpZAywWY1kteETQ6/CgP65xcQLcu6N
	ef1UzgzC5qssNoel9cuHuSnKa8FirII6cVGGWn/99cpzuec5HsSCCD9f15EvbI0L21MPDu5j83sdI
	YRN/u9srZcEPlT2vOy5P+gXgUEXb4T44fBp+6dABFINke3z4O7jUPdmh4dHzyVMIYaR9KEZEm69gF
	TAYbhhhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2jA-00000003BNq-26Fp;
	Mon, 15 Dec 2025 07:10:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2j2-00000003BNC-3bDJ
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:10:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2iy-0000KA-Kb; Mon, 15 Dec 2025 08:10:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2iy-005jom-1Q;
	Mon, 15 Dec 2025 08:10:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2iy-000000010ND-1XP6;
	Mon, 15 Dec 2025 08:10:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211204555.2694174-1-a.fatoum@pengutronix.de>
References: <20251211204555.2694174-1-a.fatoum@pengutronix.de>
Message-Id: <176578262835.239752.11622325536145373542.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 08:10:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_231034_063968_6B59294F 
X-CRM114-Status: UNSURE (   8.14  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] lib: import Linux UCS2 library functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 21:45:51 +0100, Ahmad Fatoum wrote:
> Our wide character functions are not actually capable of dealing with an
> extended character set. Import the UCS2 (basically UTF-16 without
> surrogate pairs) support from Linux for this purpose.
> 
> This will be used later for the EFI support.
> 
> 
> [...]

Applied, thanks!

[1/2] lib: import Linux UCS2 library functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=20d08806edb1 (link may not be stable)
[2/2] lib: wchar: reimplement in terms of Linux UCS2 helpers
      https://git.pengutronix.de/cgit/barebox/commit/?id=5687286f202b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



