Delivery-date: Sat, 11 Mar 2023 06:41:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paryb-00H64u-7a
	for lore@lore.pengutronix.de; Sat, 11 Mar 2023 06:41:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paryb-0007qK-7C
	for lore@pengutronix.de; Sat, 11 Mar 2023 06:41:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yLsCbZ+rsVcEJ1kmXrEle1JKJ7I0OS935OyKpL9AKM=; b=2zgfI70sWoxxeQ
	LG3mFsCPIrgWFaBN25sBPmm68c0PTFEFJ0/3OZaYAl4O25YT5FvSY932+3Dk27fmpFAyRVkIloQ8E
	nE1JJJ2wc4RDQQcAr5vK6ymp7r+uldRX4zu+7Z3EH9OYCqP3qafiVYihi5K6MU4uxynmh3D+HClcb
	q04KZEy/eGkBRpFjS7c0xmLONsRhKIym2L52Wl+Oe5+1jOGeUpQJMTr3Uv/GX6JuQQxiShNZaBbS4
	Q0cNjqaKJZ/klXr9VtWsHI4CfhOlC0OTJXzw5aUUN+mHkEIKDKN35fe3aGppb6GkA5CVFLYgQtL1k
	beVEQEBbLogotgeI7YPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1parx1-00HDoZ-K4; Sat, 11 Mar 2023 05:39:27 +0000
Received: from [2601:1c2:980:9ec0::df2f]
	by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1parwr-00HDnf-AI; Sat, 11 Mar 2023 05:39:17 +0000
Message-ID: <bae2702e-3570-f461-b86f-e56ce82a636e@infradead.org>
Date: Fri, 10 Mar 2023 21:39:15 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Simon Glass <sjg@chromium.org>, LKML <linux-kernel@vger.kernel.org>
References: <20230310183717.RESEND.1.Idaaf79c3e768b85750d5a7eb732052576c5e07e5@changeid>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20230310183717.RESEND.1.Idaaf79c3e768b85750d5a7eb732052576c5e07e5@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
Cc: Tom Rini <trini@konsulko.com>, Nicolas Schier <nicolas@fjasle.eu>, barebox@lists.infradead.org, U-Boot Custodians <u-boot-custodians@lists.denx.de>, Jonathan Corbet <corbet@lwn.net>, Nick Desaulniers <ndesaulniers@google.com>, linux-doc@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, U-Boot Mailing List <u-boot@lists.denx.de>, Masahiro Yamada <yamada.masahiro@socionext.com>, Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RESEND PATCH] kconfig: Proposed language extension for multiple
 builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi--

On 3/10/23 18:37, Simon Glass wrote:
> (I am sending this again to get more feedback)
> 
> In the case of Linux, only one build is produced so there is only a
> single configuration. For other projects, such as U-Boot and Zephyr, the
> same code is used to produce multiple builds, each with related (but
> different) options enabled.
> 
> This can be handled with the existing kconfig language, but it is quite
> verbose, somewhat tedious and very error-prone, since there is a lot of
> duplication. The result is hard to maintain.
> 
> Describe an extension to the Kconfig language to support easier handling
> of this use case.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>

IMO Masahiro has already answered this multiple times and I agree with his answers.

For others, the full previous thread is at
  https://lore.kernel.org/all/20230219145453.1.Idaaf79c3e768b85750d5a7eb732052576c5e07e5@changeid/


> ---
> 
>  Documentation/kbuild/kconfig-language.rst | 134 ++++++++++++++++++++++
>  1 file changed, 134 insertions(+)


-- 
~Randy


