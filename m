Delivery-date: Mon, 04 Oct 2021 14:13:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMqZ-0007Yb-NG
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 14:13:31 +0200
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMqY-0008EV-Ss
	for lore@pengutronix.de; Mon, 04 Oct 2021 14:13:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sy1OG6OoGMcHhlOaWRTSv70+eT7M+umF4Pdjms6E0yE=; b=L35UxbP8GT8fFB
	9qruSpxvCGzBJ/k6E+CH3jvRR2gFbj0/sTNUq2WJoNGKj6xY/bDQlf7FH4AtTxDqED3wGCx4+ew8b
	eBRxNBjLiK8wltoJ9U9kIV/9fEq5K5fqpMnTyNT720aRjRBeeacb0/0j2sTkQTTkhdJc4Pw9MoXXk
	9ueUOJNjFXR8n9xMzaHG8bNUiUoGGHuEBpt1dW4c79OJXmF2F1E+7ClewFVkU3XEd3jlHAFAck2EF
	dSvq+KiEK10uBZNwQadOfGeiZ8GsAVTU0eIa+t5K92+9Eqtb6zUnnAZ9lcPRdtNDU8E+Ckf9WX3L3
	Juyj++nlpbXCrqFRAZCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMp2-006OR0-Et; Mon, 04 Oct 2021 12:11:56 +0000
Received: from mxout.security-mail.net ([85.31.212.48]
 helo=fx304.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXMov-006OP1-6c
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 12:11:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id CDE9762A21
 for <barebox@lists.infradead.org>; Mon,  4 Oct 2021 14:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1633349472;
 bh=6nuuSLAY5p3xsOadaTJ2kKZQmBSWbOAkWkifx/PR0A0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=luYNxYuWxeOyTg18FR6+EZYbpFxlayluoac2MgPh2P84CE/moLsXp2+sZKwnA0AKx
 4GRAm/jut+F/YQiQboEIaKBO5dPuLwn+YbXZc9brqwckog4Zka9NdZGRWq6WZgqptK
 LN6eGntijfStm0IbQeGvNMlg8X4w3Jv95YvnMmBc=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 6494362A18; Mon,  4 Oct 2021 14:11:12 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx304.security-mail.net (Postfix) with ESMTPS id 01337629FC; Mon,  4 Oct
 2021 14:11:12 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id D8BB027E031D; Mon,  4 Oct 2021
 14:11:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id C184B27E0322; Mon,  4 Oct 2021 14:11:11 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 b8c4wUYAAcH2; Mon,  4 Oct 2021 14:11:11 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id AFE0727E031D; Mon,  4 Oct 2021
 14:11:11 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <10b15.615aef60.38e.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C184B27E0322
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1633349471;
 bh=6nuuSLAY5p3xsOadaTJ2kKZQmBSWbOAkWkifx/PR0A0=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=BSB31UYTnzIPIbI2/fDepDr23SLRhoLH7jaTpJpfj5YhQQHT1IDU5UmWNLu6hid0l
 2FpmBwj7MnuMcOSScXxk4mqno/bovPADIjzWLxLCs29jPy/jHO0WApgMAvxuRkmbal
 Bj/J0s7zt15bt/zGtSY6cWuqHqjkCn42NKnBQDdA=
Date: Mon, 4 Oct 2021 14:11:10 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, =?utf-8?b?QW7FvmUgTGXFoW5paw==?=
 <anze.lesnik@norik.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20211004121110.GF19809@tellis.lin.mbt.kalray.eu>
References: <20210910102931.26078-1-jmaselbas@kalray.eu>
 <20211004114556.GB28453@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211004114556.GB28453@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_051149_558192_88504590 
X-CRM114-Status: UNSURE (   4.38  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] usb: gadget: dfu: Rework dfu command to use usbgadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

Would it be interesting to do the same for other usbgadget commands ?
I think there is the "serial" command that still doesn't uses the
usbgaget.

Best,
Jules





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

