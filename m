Delivery-date: Mon, 17 Jan 2022 12:19:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Q2W-004W4h-T9
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 12:19:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Q2V-0005UJ-Kp
	for lore@pengutronix.de; Mon, 17 Jan 2022 12:19:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHPy9n3gEqvwoWdbCY4Ykfwf5cEroA9SAI77ZHSjnTw=; b=dW9UklFkveURmn
	q/uEOJTmhyGF4JZz7l0mMoHCTPNmFsd9JD58iwodk5gyNiP0uJESUS3VcIVI2nhYGhMdf5dbbzUAz
	3xtDFygFdY42IYmQey/68rQsIaUI6mEJgpiY9mBFpgAbc8dJZQzSDRQpFg5JGdd8SM35aB069URGR
	qyywLghwF1hjY9CXRI6jV8ZAVhT/DgxQ7mVBEKfvlpM7vvA9teCHsVCPe1+wzHFVX6r6ZWU4AI9bV
	W+DhhcM2xLZKWJOs6+ovDtCufgZ9y1kWITcAC1YKI7hhKyqiLhx2sm67IZDxhULDb08Yf+/IwLDZM
	oVJbNPyebrzyBc1/ml2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9Q0v-00Ecpm-KK; Mon, 17 Jan 2022 11:17:29 +0000
Received: from smtpout140.security-mail.net ([85.31.212.145]
 helo=fx405.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9Q0p-00EcpT-Qm
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 11:17:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx405.security-mail.net (Postfix) with ESMTP id 73324323802
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 12:17:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642418239;
 bh=7be6Ol8X2T333rEoOw6sCuKl2rRfyfnEfBVULvvHJcI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=QHP7D+bv69hKyjmCh389/BUa5xiNX2UhxWhvPAUlNjbO1YzLeC8PcgFe6OCIYpDHG
 Bv/0uIqJWCgCSQRCvh3WgD/D/qJggagVO/rqKg0fbYEu2CCgIPamIOhG5p/av1wEvN
 ZO4SmV4uZbYjvo4skcO1wvWOJA03P5bZPE20xTLk=
Received: from fx405 (localhost [127.0.0.1]) by fx405.security-mail.net
 (Postfix) with ESMTP id 189E1323804; Mon, 17 Jan 2022 12:17:19 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx405.security-mail.net (Postfix) with ESMTPS id 97C8B3237E1; Mon, 17 Jan
 2022 12:17:18 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 7A1DF27E0341; Mon, 17 Jan 2022
 12:17:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 6231727E03A5; Mon, 17 Jan 2022 12:17:18 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 b9T4jfzl-YQF; Mon, 17 Jan 2022 12:17:18 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 4DB6627E0341; Mon, 17 Jan 2022
 12:17:18 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <a465.61e5503e.96b85.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 6231727E03A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642418238;
 bh=8wSXQpvfCg0Sn7VwNm+CrHehV0KRfj+tqGJ06BX/isw=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=j2n2emP7n4ePHeGjLpXMeEjir612o4/AeklILN0TIh0t3FeAGlh8Tb7+KsVolFqeq
 ZlecRky2mDN7uDI0ewbGFgpHIKDVa/kY76j9UPyg7+r5yLETwWNUTvQKVbTO114DkJ
 PShtUfPDZp1GS4ba33lAYUTYITxi+gubn4FS1R7k=
Date: Mon, 17 Jan 2022 12:17:17 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>, Yann
 Sionneau <ysionneau@kalray.eu>, Clement Leger <cleger@kalray.eu>
Message-ID: <20220117111717.GE29876@tellis.lin.mbt.kalray.eu>
References: <20220114165208.9980-1-jmaselbas@kalray.eu>
 <20220114165208.9980-9-jmaselbas@kalray.eu>
 <20220117082419.GA1121@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117082419.GA1121@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_031724_058881_CDBE9887 
X-CRM114-Status: UNSURE (   7.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/13] nvmem: add kvx otp non volatile regbank support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

> > +static int kvx_otp_nv_read(void *context, unsigned int offset,
> > +			  void *_val, size_t bytes)
> > +{
> > +	struct kvx_otp_nv_priv *priv = context;
> > +	u8 *val = _val;
> > +	u32 tmp, copy_size;
> > +	u8 skip = offset & OTP_NV_ALIGN_MASK;
> > +
> > +	offset &= ~OTP_NV_ALIGN_MASK;
> > +
> > +	while (bytes) {
> > +		tmp = readl(priv->base + offset);
> > +		if (skip != 0)
> > +			copy_size = min(OTP_NV_ALIGN - skip, (int) bytes);
> > +		else
> > +			copy_size = min(bytes, sizeof(tmp));
> > +
> > +		memcpy(val, ((u8 *) &tmp) + skip, copy_size);
> > +		if (skip != 0)
> > +			skip = 0;
> 
> The if() here is unnecessary.
Indeed, thanks.






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

