Delivery-date: Wed, 15 May 2024 08:08:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s77oI-00FPYN-32
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 08:08:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s77oI-0005FD-7G
	for lore@pengutronix.de; Wed, 15 May 2024 08:08:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sIbYTdbyUai3AnbyDGR3n3Ttowk4efkwEWuKub5bONs=; b=wLPM+5nmphj7mSAfKvbTAVKXcR
	PtkYStAaIx8MBY6vXW66srXZ+mcK7KO6LD/MpkdlElnhu4SfhYWhDTM4Yqpn+no44ufcqubdYyFt5
	csyRiasHNNJX5MF3DzzSfmxDQngFTYn2YlK9vyWp9gYo7qXRa/ruLEBxpVou+xmgl4g/RdE7aZumM
	Ky8lTEtBQX/PJN314B6H4KksifoWvG8ykiN5KJKZuC5SGbJuhLj+TvV7OSsNDAf2vJC3K+w+zKGzo
	1XtWXE1MAoOU8A0DhymDwufoaNqRF4VlE2dleH9mEuZlLrboD6HoIwjHLTsD7+Xjy/wLfhN8bF+nV
	ERGPVSLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s77nm-00000000bxL-1FwA;
	Wed, 15 May 2024 06:07:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s77ni-00000000bwc-1fGA
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 06:07:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s77ng-00053B-TY; Wed, 15 May 2024 08:07:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s77nf-001UGD-UU; Wed, 15 May 2024 08:07:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s77nf-005pGB-2q;
	Wed, 15 May 2024 08:07:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <20240514130327.2988227-1-enrico.scholz@sigma-chemnitz.de>
References: <20240514130327.2988227-1-enrico.scholz@sigma-chemnitz.de>
Message-Id: <171575325987.1388662.3826041482882113542.b4-ty@pengutronix.de>
Date: Wed, 15 May 2024 08:07:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_230742_473573_BDD5A368 
X-CRM114-Status: UNSURE (   8.69  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb:gadget:composite: add public functions for
 managing setup requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 14 May 2024 15:03:26 +0200, Enrico Scholz wrote:
> The composite driver does some bookkeeping about pending requests and
> decides in its cleanup function whether requests must be dequeued.
> 
> There are some function drivers (dfu, acm) which queue the requests
> directly which causes e.g.
> 
> | :/ dfu /tmp/img(img)c
> | ...
> | g_multi gadget0: high-speed config #1: Multifunction Composite Gadget
> | fsl_free_request: Freeing queued request
> | [<2fd8d8e5>] (unwind_backtrace+0x1/0x78) from [<2fd34b1f>] (fsl_free_request+0x1f/0x34)
> | [<2fd34b1f>] (fsl_free_request+0x1f/0x34) from [<2fd337cf>] (composite_dev_cleanup+0x77/0xc0)
> | [<2fd337cf>] (composite_dev_cleanup+0x77/0xc0) from [<2fd33867>] (__composite_unbind+0x4f/0x94)
> | [<2fd33867>] (__composite_unbind+0x4f/0x94) from [<2fd3432b>] (gadget_unbind_driver+0x37/0x70)
> | [<2fd3432b>] (gadget_unbind_driver+0x37/0x70) from [<2fd1275f>] (device_remove+0xf/0x20)
> | [<2fd1275f>] (device_remove+0xf/0x20) from [<2fd1289b>] (unregister_driver+0x47/0x60)
> | [<2fd1289b>] (unregister_driver+0x47/0x60) from [<2fd34663>] (usb_gadget_unregister_driver+0xf/0x18)
> | [<2fd34663>] (usb_gadget_unregister_driver+0xf/0x18) from [<2fd37c5b>] (usb_multi_unregister+0x13/0x30)
> | [<2fd37c5b>] (usb_multi_unregister+0x13/0x30) from [<2fd59f67>] (do_dfu+0x47/0x68)
> | [<2fd59f67>] (do_dfu+0x47/0x68) from [<2fd04fdf>] (execute_command+0x23/0x4c)
> | [<2fd04fdf>] (execute_command+0x23/0x4c) from [<2fd0a737>] (run_list_real+0x5ef/0x690)
> | [<2fd0a737>] (run_list_real+0x5ef/0x690) from [<2fd0a00b>] (parse_stream_outer+0xc7/0x154)
> | [<2fd0a00b>] (parse_stream_outer+0xc7/0x154) from [<2fd0a927>] (run_shell+0x3f/0x6c)
> | [<2fd0a927>] (run_shell+0x3f/0x6c) from [<2fd01103>] (run_init+0xeb/0x210)
> | [<2fd01103>] (run_init+0xeb/0x210) from [<2fd01253>] (start_barebox+0x2b/0x6c)
> | [<2fd01253>] (start_barebox+0x2b/0x6c) from [<2fd89b37>] (barebox_non_pbl_start+0xc3/0x108)
> | [<2fd89b37>] (barebox_non_pbl_start+0xc3/0x108) from [<2fd00005>] (__bare_init_start+0x1/0xc)
> 
> [...]

Applied, thanks!

[1/2] usb:gadget:composite: add public functions for managing setup requests
      https://git.pengutronix.de/cgit/barebox/commit/?id=bf91067ef12c (link may not be stable)
[2/2] usb:gadget: use helper function to queue composite requests
      https://git.pengutronix.de/cgit/barebox/commit/?id=593248cde35d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



