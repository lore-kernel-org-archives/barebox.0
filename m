Delivery-date: Mon, 19 Oct 2026 14:59:19 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xImxS-000cPb-2Y
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 14:59:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AE7AB202283
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 14:59:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gz2fc8M2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SWZRIBTE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792414759; a=rsa-sha256;
	cv=pass;
	b=CtHtyKMKL6CW+N7NitM+VD+AeWjT8NbDaKaHKXJ4FDAJ0IeVFIPawOY5VntKXwwxUBwaxS
	LOcnKx9k4NW5xKJlMn2tlgbFPPSwL+AeqlXxugxThYdxi3GR+xK0uon0Bi+rU0Mvx/6pH4
	6vR2r1K6skpZ6w2pZDSU7f201otze0BPWV9QUtWdRfvtX90/TbKk5Ik7mPS6J0A6SiQREa
	IzBgO2A6ONoZVS8Xf57fBwWm4Pyo/Hr4RwBGi3t1NNsYhF9lHJtjoUBe6VkJweqi5cLcbA
	zPved8cObdAImZNAnAUMhCPhH72ntC7L2SyRXJcANvBCtNOTpUNcwgKr/8TtVg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gz2fc8M2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SWZRIBTE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792414759;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=zHOoG9jXYfcyszMCzrconMH/PRxu80BY61nPiLDhHjU=;
	b=EypPHRhYBJw85UdarhR2ojbkTH1u/9OWJMPOH2C/EKwa30JAcdW/8vpjEl+s4N/5xhQfO/
	9Cf3438O58Bvnd1eGskmIThqVAg0yd2pWn54iFobbcnaVjNnMEfdEkQT3qZh82/AS9v9eb
	04Nr3+oM3FeiVI83bjJ1AL9zoAk5sAuEEHKW8+rZIJEs4hMOXvTcI5S2ulH3i23+FtOqib
	oN47q9SKZ02bEtngH08/a4eEf4IUyj9AaqOWcsUPe7woE8tcFSl8BCNDxNzR7Ogg5M6Xir
	SpwpOaEqFR3xqTefkBV13J0LqW910FNL1VyAHkFkOnmW3v2fUO/vrzRSUWVYbg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zHOoG9jXYfcyszMCzrconMH/PRxu80BY61nPiLDhHjU=; b=gz2fc8M2z2owBradod9ISXzmVB
	kscKghM1KyijvrQzRV5eF88AFt7Vadfb9vnDQ7lv8KuIOVVS9+Xp4gIxwVz46qKMpO/p68gCaUeOr
	oExLm/unRW6OIZTCm7KOGwUPb3FbB4Ki3YAuxn2eKHsEnLTsB16+8K4Uu0O1zqx4CthgeiyddXz3L
	nRtzg268MboSb8bqG4WMH5JnmxCXghYgkPWGrZsgb2n8Nj8EA+O3EP0xzrKr/VkbLuIkgtP4Iyl1E
	sj9mMzYmZN9oNTfN+KUjSpNzombasJxNUcx/lhQZeGrlLemYOqR4JX4YF9UMvBVQ6AIoFwkZeYe5C
	s6DDtFxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xImid-00000007Q71-3jQF;
	Mon, 19 Oct 2026 12:43:59 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xImiZ-00000007Q5x-47it
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 12:43:58 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id F0127201709;
	Mon, 19 Oct 2026 14:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792413833;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zHOoG9jXYfcyszMCzrconMH/PRxu80BY61nPiLDhHjU=;
	b=SWZRIBTEJRl6Ej26TK7vQZGfgTZ7rYyGPmvTSjMdyWMRG/2EAgz4pLyyGSvufmD2W5fGKo
	JwZEA0Ge4oCIkeO9UEK91Q/Xcyj1emyIPyuzEIL/Rtkn1uYAayVBItXEuyfZjW3I2tS2SX
	PbTam65YAWtOACvLij0lohRkr1SFchRMbJTcXnR1uZ+A4y6vb9qmH43AmgxSDWnydY9U1s
	rNPGhnG1HsmG3iWPs5O+DaXAAJ/0EIdqsiqdeOmfu98nwJp4iVhYRAGJoL+Yf86Vvsoq76
	aHSOJoKLfgPbvxSxHHDFlpsNngFdE7l1Y63otF06eUzcb3VNUVhkQ1RkktE0zA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792413833; a=rsa-sha256;
	cv=none;
	b=Mdsklmnus4tQXYBgqnwRqKs/UhfyZmcJRLWUwv/4LUaHx/TMlvkS/0YnTFSESUU162bHNz
	1zUVNKjBjkkD/3Dui79XDVfiXrkJhurssi305RJLYcTMqzf7nPSZ9+wjNcA8991qDBRiWv
	gEzo0+sG2ieIgAy47vqs6e3lOLjzjXr0F0ZCv44gy9wWom2jbj2Z1jYM9rFaTco+96p3ZF
	wHZJVXFVPLzhHjPtqTIWKULoAe0S25LuIGfIYojy15ICPxPAMVnG/ia76N/9Czec6xcg+U
	e2oJCP1dASbbLxnmZs+m7Qq8sFWFA1r7I6GX+1t5j0YOHO8xqHYiUJf24wjqig==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792413833;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zHOoG9jXYfcyszMCzrconMH/PRxu80BY61nPiLDhHjU=;
	b=grG1Bq9LvNzfnyJYJn3EuSwBn2Lv8VD5YfkR6NDZa3r/Fnon3jUbC4LKgF2Pk1naAwKQws
	OjS93c3DxqH3Hr3lHLP2+opJ8+3BgnpS+NS2etjW2KMUHaOZ1w8Dz4c/cBnG9jM345jmBv
	9m2ZftWKOsbAlQZUUbiMW4ygnd9hp3ejESg5q0PVpjqnXGUNEMZYuTDfExRep9CRWmnSIf
	iOr2cgAnsMCtV/v954pkCIjeKeVeTTrMsE0N0c+mJRHql2pdwxYVqQLUGPvOy+MJ/rxH5A
	p3HCmHkXSZYv/9ckaQsBuxOLv0eE3vThLx/MySeSi2eA1UMktuFxbzY2kZUP4g==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id E4A65FF87C;
	Mon, 19 Oct 2026 14:43:53 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
Subject: Re: [PATCH 00/11] arm: socfpga: agilex5: add xload support for
 bl33 to FSBL
Message-Id: <179241383391.3794819.10870421514311856042.b4-ty@pengutronix.de>
Date: Mon, 19 Oct 2026 14:43:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_054356_183410_2725CD87 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 07 Oct 2026 12:55:45 +0200, Michael Tretter wrote:
    > The image of the first stage boot loader on the Agilex 5 is limited to
   > approximately 256k. The SRAM is actually 512k, but there is some [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AE7AB202283
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: us7ukuxt71cd1mncum7ggupbj7ahfrm5


On Wed, 07 Oct 2026 12:55:45 +0200, Michael Tretter wrote:
> The image of the first stage boot loader on the Agilex 5 is limited to
> approximately 256k. The SRAM is actually 512k, but there is some handoff
> data at the send of the SRAM, which must not be overridden. There are
> some size checks, but due to compression of the FSBL image, it's the
> possible image size cannot be determined reliably.
> 
> The barebox PBL and a full featured barebox proper are easily larger
> than the allowed size. Compression of the piggy data may even be counter
> productive, since the entire FSBL image is compressed again when
> creating the boot image.
> 
> [...]

Applied, thanks!

[01/11] mtd: spi-nor: drop requirement for device field
        https://git.pengutronix.de/cgit/barebox/commit/?id=a2bc4d81a1d3 (link may not be stable)
[02/11] mtd: spi-nor: enable module in PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=778f9acdcc74 (link may not be stable)
[03/11] mtd: spi-nor: cadence: extract common part for use in PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=d9184efbfc83 (link may not be stable)
[04/11] mtd: spi-nor: cadence: add a PBL driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=41363fd77534 (link may not be stable)
[05/11] arm: socfpga: agilex5: add bl33 xload support
        https://git.pengutronix.de/cgit/barebox/commit/?id=eff2acaf2fb6 (link may not be stable)
[06/11] arm: socfpga: agilex5: separate load and start of bl33
        https://git.pengutronix.de/cgit/barebox/commit/?id=f0de955e1047 (link may not be stable)
[07/11] arm: socfpga: agilex5: enable xload for bl33
        https://git.pengutronix.de/cgit/barebox/commit/?id=6a3484db1463 (link may not be stable)
[08/11] arm: socfpga: agilex5: initialize QSPI flash in PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=0c4c1cdf2fc4 (link may not be stable)
[09/11] arm: socfpga: agilex5: add agilex5_barebox_entry_xload
        https://git.pengutronix.de/cgit/barebox/commit/?id=14810aeb4c90 (link may not be stable)
[10/11] arm: socfpga: axe5-eagle: move lowlevel init to separate function
        https://git.pengutronix.de/cgit/barebox/commit/?id=92133cb0c3d5 (link may not be stable)
[11/11] arm: socfpga: axe5-eagle: build FSBL without piggy data
        https://git.pengutronix.de/cgit/barebox/commit/?id=2b358eb23e26 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



