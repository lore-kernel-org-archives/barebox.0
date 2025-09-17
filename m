Delivery-date: Wed, 17 Sep 2025 12:07:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyp4J-00423D-2L
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 12:07:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyp4J-0005w2-5V
	for lore@pengutronix.de; Wed, 17 Sep 2025 12:07:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vtjcpXrCzkwdwEZ/zaW9UU4y7gfhSn4RxYoBY8y1+cM=; b=y/mVhvOUGUGdIuLnqPjj2d+Mp5
	gEsHVjQ3okq5tusSzQ2AigEQFmeAfA2R7jxEf8TUsp77w6CbCTaSQMregGPMUN3gAJkhf2wzH2qjd
	p2kV8isi1eC5W/72XY0uA6ZtANfJd3pCwVxphlT+LVzEeRO4bfBDTWH+96LT85CB3UP/aZNMid3wg
	qouKwlejqej+uHchfrrJTzI+jPD9e8m2kgMqY6iqnqLBti5OE5Jjiy4iR857RTDlMBzyzlQM8/BZF
	XlWvF1N2codEvuAE9yt0dOJbJSJh5UW44kX9/BvxNUcjPRiPbtTt3IR3p8XUphb4aup9L0vLqxJOE
	NnpjmABg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyp3c-0000000Au7I-0ODe;
	Wed, 17 Sep 2025 10:06:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyp3Z-0000000Au73-3QsM
	for barebox@bombadil.infradead.org;
	Wed, 17 Sep 2025 10:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=vtjcpXrCzkwdwEZ/zaW9UU4y7gfhSn4RxYoBY8y1+cM=; b=Q+TvxRenkmFfj4O/qOP8CcMKKX
	nrJcgCod70fERDPuMbnvuYndcMndfBTyBbWjUB1qGJN285Y3YqRnmBPy4VAe8n5+ZETqIoI42z/WN
	7UOxtx5Al+aIE/m6OvtDvP6tkT7h/tTGXlhfnWkkf0ghYcY3WLmb7uk7t6UEYR9LL7CuboBk8R/8Y
	gZp8fPPivH4Rtbsw8d8zaJxhE75J5teMosyfMuwHF/BhpoXBe/3ErTlJJgmwy1W2fQLkN1LOi3b4s
	7wUPfUVJSqZcI46Jl/po1jra4fXaP0ST9EBKBvoxV9Xbl68atR08i51FAsQCquwTP6TOrujGHxAP2
	w3WWmoKA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyp3W-00000007Mqc-1PWe
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 10:06:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uyp3T-0005nO-JZ; Wed, 17 Sep 2025 12:06:27 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uyp3T-001k4S-1L;
	Wed, 17 Sep 2025 12:06:27 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uyp3T-00DfRl-0p;
	Wed, 17 Sep 2025 12:06:27 +0200
Date: Wed, 17 Sep 2025 12:06:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aMqIIz1zelD0wVGK@pengutronix.de>
References: <20250917095834.2727068-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917095834.2727068-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_110630_607226_728D93B6 
X-CRM114-Status: GOOD (  21.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] firmware: handle firmware files being links correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 17, 2025 at 11:58:34AM +0200, Sascha Hauer wrote:
> Sometimes firmware files can be links. When rebuilding barebox correctly
> rebuilds the firmware when file the link points to is updated, but the
> firmware is not rebuilt when the link itself is changed to link to
> another file.
> 
> Fix this by including the sha256sum directly in the generated assembly
> file by using .byte rather than generating a file containing the
> binary sha256sum and include that using .incbin. This way the generated
> assembly file for sure changes when the firmware file changes and it's
> rebuilt when necessary (and not when it's not).
> 
> Reproducer:
> 
> export ARCH=arm
> make imx_v8_defconfig
> echo foo > firmware/foo
> echo bar > firmware/bar
> ln -sf foo firmware/imx8mm-bl31.bin
> make
> 
> The following should rebuild the barebox image including the updated
> firmware, but doesn't:
> 
> ln -sf bar firmware/imx8mm-bl31.bin
> make

I ran into this several times now when I tested different TF-A versions.
I linked the bl31 directly into the trusted-firmware build tree and
at some point I wanted to test a known good bl31 binary and changed the
link to that file. The result can be confusing and time consuming, so
after this happened once again it was time to fix this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


