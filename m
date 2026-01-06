Delivery-date: Tue, 06 Jan 2026 12:54:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd5eI-001sXj-08
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 12:54:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd5eH-0002yV-Fs
	for lore@pengutronix.de; Tue, 06 Jan 2026 12:54:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kD/zH1R09ptTVYt6wnCR3Qxw+ItbkB8sgDqLCxrym8s=; b=JJXtQl5GiNvbWuQvc/0h/F3L+9
	PzLBEmGk8urdr9we8Cd3Ne2DjcEwbgZZ6IXD6T8THoDsMSaj77si8HzjQr25dSBZ9G/dOXO5IqPml
	zrCpe35Tw42P0h7WOOUe+70A7ihHtu9H0BPXDozTk+7M6adfnO1x9HgQMTjjZXbmED5fmaKDB2zB4
	gWsOQvwVBMXkaDrcfBSdLmV95sOS1QO8PZsF6IlxhFjkooRtRuV5CORl4zU559i5WauyczCrz2tH/
	RK587yP2+JZgo2Tqu9QH9Ic+SBhkCuEbuF7CpX1io844fFwkhpJ9xn7JWRTDPSHLBB3h0oaEixjr9
	FSGO/krQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd5dk-0000000CvTi-0RNW;
	Tue, 06 Jan 2026 11:54:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd5di-0000000CvSW-15fG
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 11:54:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd5df-0002se-7T; Tue, 06 Jan 2026 12:54:15 +0100
Message-ID: <a4a8720b-4448-47b8-a80d-5deadb99f68d@pengutronix.de>
Date: Tue, 6 Jan 2026 12:54:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, barebox@lists.infradead.org
References: <20251217103547.4046898-1-a.fatoum@pengutronix.de>
 <efca75a6-a218-48ee-8471-2e2967e86de5@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <efca75a6-a218-48ee-8471-2e2967e86de5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_035418_321923_BADD659C 
X-CRM114-Status: GOOD (  17.71  )
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
Subject: Re: [PATCH] scripts: add helper for generating Origin-URL references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Jonas,

On 12/17/25 11:59 AM, Jonas Rebmann wrote:
>> +declare -A repos=(
> 
> Maybe mention that these are the initial commits of the repositories

Done in v2.
> The official upstream for u-boot according to its readme is the gitlab at
> https://source.denx.de/u-boot/u-boot

Denx is no more and the Gitlab has experienced availability problems in
the recent past afair. We can change it later once it has moved to its
new home.

>> +# newest commit that touched this file
>> +file_commit="$(git -C "$repo_root" log -n1 --format=%H -- "$rel_path")"
> 
> So the idea is that the Origin-URL is generated for the commit to which
> <path-to-file> is checked out at the time? Maybe you could state that
> more clearly e.g. in the top of the script or in the usage message.

Done in v2.

> We don't want people to add Origin-URLs referencing just any commit.

Yes, of course, but for me when porting over new code, it's a useful helper.

> Once I get to it, I want to add Origin-URLs to some existing code and
> reconstructing which exact commit something was originally based on is
> the annoying part of that.

I know. This is geared towards new code.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



