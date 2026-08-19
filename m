Delivery-date: Wed, 19 Aug 2026 09:53:34 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwb77-004nB0-2I
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 09:53:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0EF422020ED
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 09:53:34 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yqLyXli8;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hxu6a4gbrAjPm70LwOFhFG2IXIEokK6HzzCbr+KvxwY=; b=yqLyXli8Oc2ST9OUXnNU0m2cwN
	314dLwJzdUDzgOVdcaNWqhuk0tFEE/pNvbvOizb6IA5iaywRTJL+eAL++p1OOCAuxh5A2n4FEphFK
	djWmbJ46svz+bha/0vPi787zBGUVUsgfKDyXBsiCESysjDLVUNBdPqd7pZg6KZAvgQRfLzHM4xuIY
	3dQ/aqrQtDm+l3q1NwxSp714ji5r2ICfuSw4+yjBqXbs4ARzYU2lIRjzjfgoFidfZQ7q0a+h3gXCw
	FC0Sae/iHYZzYdjqnb2x3kEV9TFush8q+srwogQURTc/9UEnGFqHT0gUvw17MbK5LjzNiPrrJAtlN
	vUuB2WfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwb5w-00000009Exi-0xbv;
	Wed, 19 Aug 2026 07:52:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwb5r-00000009EwI-3qxI
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 07:52:18 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4FA5E20128B;
	Wed, 19 Aug 2026 09:52:11 +0200 (CEST)
Message-ID: <15b91a93-4abf-4eb0-9152-a786bcae4e71@pengutronix.de>
Date: Wed, 19 Aug 2026 09:52:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ci: container: build openssl against musl
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
References: <20260811-add-openssl-musl-to-ci-v1-1-0ca5525f1775@bootlin.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260811-add-openssl-musl-to-ci-v1-1-0ca5525f1775@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_005216_119501_14CDBB34 
X-CRM114-Status: GOOD (  25.50  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Thomas, thanks for your patch! On 8/11/26 7:22 PM, Thomas
    Bonnefille wrote: > Since 3c739b95ee ("sandbox: enable keytoc in hosttools_defconfig")
    the > hosttools_defconfig also builds keytoc a tool required to inject >
   cryptographic [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ftbjiiem94icphaax7hbdz43m3ax8hr1
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 0EF422020ED

Hello Thomas,

thanks for your patch!

On 8/11/26 7:22 PM, Thomas Bonnefille wrote:
> Since 3c739b95ee ("sandbox: enable keytoc in hosttools_defconfig") the
> hosttools_defconfig also builds keytoc a tool required to inject
> cryptographic keys in a device tree.
> This software needs openssl to be compiled. However, as barebox-ci is
> using Debian as the base of its container, the openssl package given by
> apt is compiled with the glibc.
> 
> In order to compile keytoc with musl, build a version of openssl against
> musl in the barebox-ci container.
> 
> Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> ---
> Hello, I added the support to build openssl against Musl, this fixes the
> commit 3c739b9 in CI.
> Another patch has been sent previously to fix this issue
> (https://lore.kernel.org/barebox/20260805142055.3844660-1-a.fatoum@pengutronix.de/)
> 
> I didn't find it in the 'next' branch of the Github repository
> (git.pengutronix.de seems down on my side) and I assumed it wasn't
> applied so I didn't include a revert commit for it.

When issues pop up while a patch is in next, fixes can be squashed into
it. After a release, next is merged onto master, which experiences no
rewriting of history.

My patch was squashed as can be seen when you look at next's
.github/workflows/musl-tools.yml

I will send a revert for my patch once this patch is applied and a new
CI container has been rebuilt.

> ---
>  test/Containerfile | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/test/Containerfile b/test/Containerfile
> index 296835d080..00f24a210f 100644
> --- a/test/Containerfile
> +++ b/test/Containerfile
> @@ -118,4 +118,17 @@ ENV LLVM_SUFFIX=-${LLVM_VERSION}
>  RUN ln -Ts /usr/lib/llvm-${LLVM_VERSION}/lib/clang/${LLVM_VERSION}/lib/linux/ \
>             /usr/lib/llvm-${LLVM_VERSION}/lib/clang/${LLVM_VERSION}/lib/x86_64-pc-linux-gnu
>  
> +ENV OPENSSL_VERSION=3.5.6
> +ENV PKG_CONFIG_PATH=/opt/openssl-musl/lib64/pkgconfig
> +RUN cd /tmp && \
> +	wget https://github.com/openssl/openssl/releases/download/openssl-$OPENSSL_VERSION/openssl-$OPENSSL_VERSION.tar.gz && \
> +	echo "deae7c80cba99c4b4f940ecadb3c3338b13cb77418409238e57d7f31f2a3b736 openssl-$OPENSSL_VERSION.tar.gz" | sha256sum --check --status && \
> +	tar -xzf openssl-$OPENSSL_VERSION.tar.gz && \
> +	cd openssl-$OPENSSL_VERSION && \
> +	./Configure linux-x86_64 no-shared no-tests no-secure-memory no-afalgeng \
> +		--prefix=/opt/openssl-musl --openssldir=/opt/openssl-musl/ssl CC=musl-gcc && \
> +	make -j$(nproc) && make install_sw && \
> +	ln -s /opt/openssl-musl/include/openssl /usr/include/x86_64-linux-musl && \
> +	rm -rf /tmp/openssl-$OPENSSL_VERSION.tar.gz /tmp/openssl-$OPENSSL_VERSION

I assume this doesn't increase container size too much, so this looks
good to me:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> +
>  USER barebox:barebox
> 
> ---
> base-commit: 4705656eeeaba0dd3617b69172328daf4dbf9060
> change-id: 20260806-add-openssl-musl-to-ci-f086904d4648
> 
> Best regards,
> --  
> Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



