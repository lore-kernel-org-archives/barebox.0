Delivery-date: Mon, 18 May 2026 10:01:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOsui-0013id-36
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 10:01:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOsuh-0005v5-42
	for lore@pengutronix.de; Mon, 18 May 2026 10:01:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zx1UF1OfKOmBMLFezn4xlpC/JQ3pWhETWpGU++YR6Dg=; b=HkU2CT9bnyVf6XUmvAQtKtuJ+y
	fngoU24JAx8JUBAXl0IKhfJuMs5KGbzRuriG60SnOFV2RtJzfokrmshoYt/kctUDg1xhz7SaqHICX
	TuCgG8d9kxOuPwddLG1pkEajW5lZgotx212s5eLnDLUdROocQfZI0oK2OHtkDO0fMKCqd1hw4mAhx
	3/Q9p7m3DcqH0Q4Hnmbxfkctbk/Wtl8Ql//D8Phm1UhgunFk6nRTZgrDDT9eP5+d2hLWpvXI0z6TX
	pzDukqXG4Epd3MzklzcFZ70CcfeNPPfYo+mDRxl8c6CKbw8vc7rArrZ2Z9p4PkNEOiwx6iX53egAe
	f1KuvRuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOssI-0000000EgpE-12Gt;
	Mon, 18 May 2026 07:58:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOssE-0000000EgoZ-3AMA
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 07:58:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wOssC-0004zk-VI; Mon, 18 May 2026 09:58:49 +0200
Message-ID: <b689ec0d-6e3c-4766-a20e-d08b96714460@pengutronix.de>
Date: Mon, 18 May 2026 09:58:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lukas Wunner <lukas@wunner.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-15-s.hauer@pengutronix.de>
 <agS_XfdyvX_1q9dt@wunner.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <agS_XfdyvX_1q9dt@wunner.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_005850_808670_68BEA66C 
X-CRM114-Status: GOOD (  12.41  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 14/16] Add elliptic curve cryptography (ECC) helper
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Lukas,

On 2026-05-13 20:13, Lukas Wunner wrote:
> Heads-up, this barebox code was copy-pasted from the kernel,
> which in turn copy-pasted it from Ken MacKay's micro-ecc
> library.  The kernel version has a bug in carry handling
> which barebox inherited:
> 
> https://lore.kernel.org/r/20260513105741.55534-1-sv3iry@gmail.com/
> 
> There might be further bugs that were fixed in the kernel but
> not in barebox.

Thank you for mentioning it. I've just sent a series that brings the
file up to date with linux master, and will do this again once your
linked kernel patch has landed.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


