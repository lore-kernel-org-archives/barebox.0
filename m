Delivery-date: Mon, 13 Apr 2026 14:48:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGio-00Bii3-1Z
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 14:48:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGin-00037U-UX
	for lore@pengutronix.de; Mon, 13 Apr 2026 14:48:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rTCS93nJSWBlsbWl03LSbR6ZMIxGMy7uRPPTzbBQmq0=; b=knALeFoHdgRjt7IcFnLCcGZlde
	FgmeoG+GMGrqHIrN98Gh/vFhlWEa/3MqmUo1J9PJ5T7h0lTzCPKXCVOUKEKOEZLv2JWJW/UyfksjL
	t6ixVng/e7TydyFcw4E82EVr0mvsvOHDr7V8OYlbHrIM4k1LQYvy0atmaLeWl0awPhvKlNSBBGBrs
	Qxwg1eFFlur9Iqif2jDkDgTCGXkJXL91HeS3n4GpJd2MW5j4o5wCiuqSyjAEewOs75r4RTJ8Ou6yD
	R4WauydzfDGHTnTPzY5aqEU6cfStrrwQHRl8N2F83QZhYIzPleavWmlZxQHz6IQ9OqQMyTFl7ZPuL
	m6CrKbBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGiI-0000000Fg4O-1Vbl;
	Mon, 13 Apr 2026 12:48:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGiH-0000000Fg4F-1PeQ
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 12:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=rTCS93nJSWBlsbWl03LSbR6ZMIxGMy7uRPPTzbBQmq0=; b=QwX7OXFBcMiknRtdrgvbQ38XvY
	7YfqPvNJ5nEctRobMJfM+IkTxn6Uq21AGA3m8AvZahhWy/2hulmCgDnaQxsPRPzRToPBuh8/wq+Qk
	NlppXPRR4Lb4o1cJD4Xy/FHqPXICn1Koe5AYGuPvf4uS+linlvnCgunpyzLAbJUFo7/itgirvd/6n
	qunqGGY3GPVx1Ty8I/l0LlK/6yTJxfV5CFCrXUWMy4h6+po8NDOwW5lYab0U58xcE3ZbduLZhSvNf
	d//ICsEsFH178VjxTR4SenyGv8gmbOz+m6jvjsRtmOK3t9lYN0d4XwUwniJdVJejGFwg16yStLtoZ
	IJJH4g/w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGiB-0000000Go6D-3sEc
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 12:48:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGiB-00031v-3K; Mon, 13 Apr 2026 14:48:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGiA-005AqB-2y;
	Mon, 13 Apr 2026 14:48:18 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGiA-0000000EuHV-3cl0;
	Mon, 13 Apr 2026 14:48:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260413100710.1459468-1-a.fatoum@barebox.org>
References: <20260413100710.1459468-1-a.fatoum@barebox.org>
Message-Id: <177608449886.3552878.5654474866461642006.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 14:48:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_134820_159958_347C5D25 
X-CRM114-Status: UNSURE (   5.74  )
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
Subject: Re: [PATCH 1/5] video: simplefb: add r5g5b5a1 and x8b8g8r8 formats
 to SIMPLEFB_FORMATS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 12:06:56 +0200, Ahmad Fatoum wrote:
> The DT binding (display/simple-framebuffer.yaml) lists 11 pixel formats
> but SIMPLEFB_FORMATS only covers 9 of them.
> 
> Sync with Linux to add the remaining two.
> 
> 

Applied, thanks!

[1/5] video: simplefb: add r5g5b5a1 and x8b8g8r8 formats to SIMPLEFB_FORMATS
      https://git.pengutronix.de/cgit/barebox/commit/?id=1191c54f4e6a (link may not be stable)
[2/5] video: simplefb-fixup: use shared SIMPLEFB_FORMATS table
      https://git.pengutronix.de/cgit/barebox/commit/?id=1500be5d42a1 (link may not be stable)
[3/5] parameter: allow enum params to be set by numeric index
      https://git.pengutronix.de/cgit/barebox/commit/?id=cc8374d6f2a6 (link may not be stable)
[4/5] video: simplefb-fixup: add stdout-path mode to register_simplefb param
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d5552fcbd7b (link may not be stable)
[5/5] Documentation: add OpenBSD booting guide
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ecbcc6e9233 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



