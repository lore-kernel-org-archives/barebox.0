Delivery-date: Mon, 13 Mar 2023 15:47:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjSn-006NOP-Tr
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 15:47:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbjSn-000829-1Y
	for lore@pengutronix.de; Mon, 13 Mar 2023 15:47:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+aSXXr+DXhv522W0kqz/eZbMAvtx2I9l2KMrjCGpqBk=; b=yyUwmVSFsh/7EowVbk7AnyyHb+
	gXotw0Id4RwyqyiFjsSuwWrDKPFfW00k3fwiFvY6sMWjJdyIbL8na2A5GSxeVnqL2rUOIQtHwt8Ik
	+KKJkwpNrKfKSE8g57sr1L6FTWzv9iorxcam5zGwHbGJ/L/xXSJDhujP8Q3VyirokrKRMlNa3nEib
	AtkU7D1Ty/Wufu0onkIZwiBdA3zYiDlJ2qDtDQFhsEkOLqoN6oTRnJZDZXRL4Z0iyMBzos2Q0tqp4
	QZr0+6biZdNgqvrKaHYzXr+G4OO2IiL6E5eWnTN3ju/mRUkc2S7R8EOuDw+wOz36wHZ94IzXRDbBU
	sFf/dMjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjRg-006CPa-5R; Mon, 13 Mar 2023 14:46:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjRQ-006CHI-3y
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:46:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pbjRO-0007fQ-Ob; Mon, 13 Mar 2023 15:46:22 +0100
Message-ID: <1b416739-ae6e-3b6c-484a-bfba020a2fda@pengutronix.de>
Date: Mon, 13 Mar 2023 15:46:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
References: <20230313144220.1689252-1-a.fatoum@pengutronix.de>
In-Reply-To: <20230313144220.1689252-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_074624_221533_AE79D879 
X-CRM114-Status: GOOD (  21.43  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/3] boards: qemu-virt: support passing in FIT public
 key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.03.23 15:42, Ahmad Fatoum wrote:
> FIT public key is usually passed in via board DT. Usual way to use
> barebox with QEMU Virt however is to use DT supplied by Qemu and apply
> overlay to it. mkimage doesn't generate overlay DTB though. To make
> barbebox Qemu Virt behave like other boards, let's define a dummy DT
> that includes CONFIG_BOOTM_FITIMAGE_PUBKEY, which is merged with the
> barebox live device tree.
> 
> This replaces v2 of the series available in next and fixes the
> regressions I introduced for deep-probe systems that ensure probe in
> other devices.

Ah, not quite, the first patch in v2 is unchanged and I forgot to send it out.
@Sascha, let me know if you want me to resend (provided the series is ok now).

> 
> I dropped Jan's Tested-by, because the differences warrant it, but
> I tested locally that a RSA key was registered as before.
> 
> v2 was here:
> https://lore.barebox.org/barebox/20230210165353.3601175-1-a.fatoum@pengutronix.de/
> 
> v2 -> v3:
>   - drop "support of_ensure_probed for top-level machine device"
>   - switch from board driver back to initcall
> 
> v1 -> v2:
>   - support of_ensure_probed for top-level machine device
>   - ensure qemu board driver is probed at postcore
> 
> Ahmad Fatoum (3):
>   boards: qemu-virt: apply overlay at postcore_initcall level
>   boards: qemu-virt: compile overlay as such
>   boards: qemu-virt: support passing in FIT public key
> 
>  common/boards/qemu-virt/Makefile              |  2 +-
>  common/boards/qemu-virt/board.c               | 52 +++++++++++--------
>  common/boards/qemu-virt/fitimage-pubkey.dts   |  7 +++
>  .../{overlay-of-flash.dts => flash.dtso}      |  0
>  4 files changed, 38 insertions(+), 23 deletions(-)
>  create mode 100644 common/boards/qemu-virt/fitimage-pubkey.dts
>  rename common/boards/qemu-virt/{overlay-of-flash.dts => flash.dtso} (100%)
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



