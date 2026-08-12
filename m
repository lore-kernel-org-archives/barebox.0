Delivery-date: Wed, 12 Aug 2026 16:46:42 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuAE5-002MW2-0m
	for lore@lore.pengutronix.de;
	Wed, 12 Aug 2026 16:46:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 399FF201D0F
	for <lore@pengutronix.de>; Wed, 12 Aug 2026 16:46:37 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IlhOXL3n;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=cqHHugWE;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NfJGJ6l02W0/loFFWlv/5H6CHnMUkxQ+YLDhfGi2gnE=; b=IlhOXL3n9IHUdYJW+NMeHGRNYv
	FeU+UyJZjKoYcC+bJUfLGhznSRt64pr8j6xGWWCtpoaXx0shUYk2+mYhgKdMVZQjVTMQ1JzbjrzTs
	pUld0hjD7uq4imS1rPdpXKhz+mTJrNx8HZKGbv5CEwuZ5hydaU+ZGo9acaUXeGSBXVB6NyShqo5mQ
	uz2PpPL6DX35OBa180FdlhEPAwMOaHFqESf2ZFBRq8qW0laoUtW0gDh3stKsVgIePBqxz2uVdFxNH
	4vfiEXoNGTJqKzQcnncBT0c7EzkpykXoZIIHFx5gFdVjJodm74b991k94Wat9BjCIKGKBoQ+Sc5hy
	vQJfYqjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuACJ-0000000GPVx-1JI5;
	Wed, 12 Aug 2026 14:44:51 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuACE-0000000GPVJ-16qV
	for barebox@lists.infradead.org;
	Wed, 12 Aug 2026 14:44:50 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-84867f07d63so1220117b3a.2
        for <barebox@lists.infradead.org>; Wed, 12 Aug 2026 07:44:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786545885; cv=none;
        d=google.com; s=arc-20260327;
        b=SQfVzXpP6vNchDO7CgCqxYFE2UOr/divAf253Xz+/Uw3Tgum7yInzK+cHB20kUds5t
         OIq3upIwX+GAy+i2fD8Z+UaJJkLxm54/gH2w8mlciXp+Tu9WgXbrNfn7x6/WTvr4I4Lg
         /NcOv2ichmn5WxX+pIpF37vm0R/+i60GJTFMMN5lWtI3dix3DPsJ5xjmNNfKYgNL4HL9
         1Mu6EFw1rO7k1vW5yHdYTnJX5xjonWCwSX1d1bSgx65DULma5uJ/g0+YCYSBHBFt3Tqf
         HTRFEg4kSizpAyI5Zc7oHz5myb40ntY8s4XKC7zNC461gMWw3yhjPdTwf+mB48sDRA3f
         Zc0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NfJGJ6l02W0/loFFWlv/5H6CHnMUkxQ+YLDhfGi2gnE=;
        fh=vM2vRr44yOjyRdmzXzSi6lSzuq2Z1E6KH1Rw/zd25II=;
        b=hh2sM2DU4L3/Qt4D31gPwFtWq1H71dx5tIOauZArjjYEVYtXjA/5QQhKhQtW3npb5J
         EE1DjlsKubVA6vv+fYn6N+a6esYS/2A/QW5z2ddqcpf0n8TlUk0l1czD5G6HQ/DCq+/a
         Fi+AHhiMuhantKt7WS5sfzkarMw6MQR7WQRn8XyOfQM6MNZ5/CFj3/RaxlgJCu9Q5kfn
         fWsgWB1NMJ9eh6g+Os1hd9eRoDWBOolPrJQz53MEe5Q2zm97hxaoq7CXnDhBZJPBAqtM
         WqOrqVKfY5xTplgdUNM94Sh9TNZvdC0OOzYw2KinOmXfK6cGsM0dld5LGtA1EopatEGZ
         rMuQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786545885; x=1787150685; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=NfJGJ6l02W0/loFFWlv/5H6CHnMUkxQ+YLDhfGi2gnE=;
        b=cqHHugWECG++TPaPXFqw0aoYjqmkHSzsB5pjv4oATxQR5g/YjrWPhqpLvMqLQPGDJx
         UhqC2H2SlhzBcc632riZzMbM+SjTKdJEYU6fz1a4FnXb897PpiaQfHCj2WEhYLTzpQvS
         8QTOmiCAcd7x0ydWY9K2Vgxvi936K2JtpTL0ucEhydBQLypGVAaGZLDVVCRkj3Gy6ut8
         iaqPhAiUn8lTbG7sqh/RVR4UenraGaecPxB4Z0N6tF91UVg+NOtz6czbJcLfHz2bZaUu
         SNzT0UWtxNbPbhxt7FSMwDwWOlhODWa6td9ty8DiiGmKmJTrAzn2Go1AjoIyqVzq619d
         4qPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786545885; x=1787150685;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NfJGJ6l02W0/loFFWlv/5H6CHnMUkxQ+YLDhfGi2gnE=;
        b=s8jo6/+dN3/S2RAzWcbLQ29c19vXrZJw58uS45tFCYslxjZT+8zCwGdXmslgMv7PzB
         5IMS9yYGF/C0wZCHOoC3ps+kuFzuGlejwdFy5sHNk6Utysc/dtDeGDf2ffzU+HeIMfpG
         OGqYL4PW3i4O+W1cQQq0COkZmHekPoEZxUzGmQw4Ty+7At56ZJ6uTTnlxXxD0bzd9sBu
         rkTsgQswiMyzcwuJiiUvs/irc1SDfEJRAe6ExXhA6a8U53pYNom97JodvUsdwnw+qlHs
         3slGF+k6gf3lFtGx5FaQDPqj+cgEdw/2o3Q7G9Xyxp+AUTg9XTFuyq5jdXoX6ZVrhDSk
         UFEw==
X-Gm-Message-State: AOJu0YxZ+xIzZMChfiDfRUJdTlerG1aKhcFrEHBzUo7IidSICg2X1WVw
	TNN5evoAm1NpJu/vr6oyS7I+qNjx4lNVhHTUF3SOkm4vRHK6d776Scq4AUCanMcb6hRLm2qN9/q
	foSFVx22SNUH7tAbvURF/AGbPmNIRLNhs4fJ4
X-Gm-Gg: AR+sD13YI0jtwAvP6DiseKbNaeNzmqotz/T1bP8hA/Hr/KdwVZR1QDy6DjZci3TxXgw
	//pyEOnkV/VYO+1le7pWiIESlLubzTvJAhc1mEEgi7Q6skUHiW0QAZkq1lNT3YuNULjIV/ytqDG
	zwdT6w0DAJLZmoEYkn6uFWtIgLdtYBC24xRwFzpdaPuqPuzotbFMQ9hZC0zfZ7lYDvA39QStJgd
	Jlc9tUGsWwZ7IHO2Y01tpnov+00XmgTAPc74XgRdeO31ze7chUlrdPIMZ4agNSnQ8jf3sci9qqJ
	9nukiL+ESsnCt/4yzvv0+NgExWxCW+B0YX0P7VhLdxCrvw==
X-Received: by 2002:a05:6a20:7285:b0:3c3:92ba:c61f with SMTP id
 adf61e73a8af0-3cc3f51c897mr6550891637.8.1786545884369; Wed, 12 Aug 2026
 07:44:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQBxkjkCX7=zYt5ACjUUi+c2FkbCjz7UG+vQeVKeNB_Og@mail.gmail.com>
 <6a7c11f4.bd9e1b36.35e6eb.4491SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <6a7c11f4.bd9e1b36.35e6eb.4491SMTPIN_ADDED_MISSING@mx.google.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 12 Aug 2026 17:44:32 +0300
X-Gm-Features: AUfX_mxuRObQWcmMkWNRTd9aQh0-UkVgeeN5aeifhiwo9l_f7EK-zE1EtRw48eA
Message-ID: <CAP1tNvRw3xWZCs3KUFMH7=9f7s8Op8-5hQUCFiFE8LY+mcp+VQ@mail.gmail.com>
Subject: Re: RK3588 optee question
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_074446_319615_AADBFD38 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Sascha. After enabling CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT=y
    the following build errors occur: CC [P] arch/arm/mach-rockchip/rk3588.pbl.o
    In file included from include/linux/array_size.h:6, from include/linux/kernel.h:6,
    from /home/ARM64/barebox/arch/arm/include/asm/barebox-arm.h:17, from inclu
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:434 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [eagle.alexander923(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Stat-Signature: be9b13ax657jk5dgjc6aum8dzhrqjgy8
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::434:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 399FF201D0F

Hello Sascha.

After enabling CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT=3Dy the following build
errors occur:

CC [P]  arch/arm/mach-rockchip/rk3588.pbl.o
In file included from include/linux/array_size.h:6,
from include/linux/kernel.h:6,
from /home/ARM64/barebox/arch/arm/include/asm/barebox-arm.h:17,
from include/mach/rockchip/bootrom.h:9,
from arch/arm/mach-rockchip/bootrom.c:2:
include/linux/build_bug.h:100:41: error: static assertion failed:
"sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
100 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
|                                         ^~~~~~~~~~~~~~
include/linux/build_bug.h:99:34: note: in expansion of macro =E2=80=98__sta=
tic_assert=E2=80=99
99 | #define static_assert(expr, ...) __static_assert(expr,
##__VA_ARGS__, #expr)
|                                  ^~~~~~~~~~~~~~~
include/mach/rockchip/bootrom.h:25:1: note: in expansion of macro
=E2=80=98static_assert=E2=80=99
25 | static_assert(sizeof(struct rockchip_scratch_space) <=3D
CONFIG_SCRATCH_SIZE);
| ^~~~~~~~~~~~~
In file included from include/linux/container_of.h:5,
from include/linux/list.h:5,
from include/param.h:7,
from include/console.h:10,
from include/stdio.h:6,
from include/common.h:10,
from arch/arm/mach-rockchip/rockchip.c:2:
include/linux/build_bug.h:100:41: error: static assertion failed:
"sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
100 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
|                                         ^~~~~~~~~~~~~~
include/linux/build_bug.h:99:34: note: in expansion of macro =E2=80=98__sta=
tic_assert=E2=80=99
99 | #define static_assert(expr, ...) __static_assert(expr,
##__VA_ARGS__, #expr)
|                                  ^~~~~~~~~~~~~~~
include/mach/rockchip/bootrom.h:25:1: note: in expansion of macro
=E2=80=98static_assert=E2=80=99
25 | static_assert(sizeof(struct rockchip_scratch_space) <=3D
CONFIG_SCRATCH_SIZE);
| ^~~~~~~~~~~~~
In file included from include/linux/container_of.h:5,
from include/linux/list.h:5,
from include/param.h:7,
from include/console.h:10,
from include/stdio.h:6,
from include/common.h:10,
from arch/arm/mach-rockchip/rk3568.c:2:
include/linux/build_bug.h:100:41: error: static assertion failed:
"sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
100 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
|                                         ^~~~~~~~~~~~~~
include/linux/build_bug.h:99:34: note: in expansion of macro =E2=80=98__sta=
tic_assert=E2=80=99
99 | #define static_assert(expr, ...) __static_assert(expr,
##__VA_ARGS__, #expr)
|                                  ^~~~~~~~~~~~~~~
include/mach/rockchip/bootrom.h:25:1: note: in expansion of macro
=E2=80=98static_assert=E2=80=99
25 | static_assert(sizeof(struct rockchip_scratch_space) <=3D
CONFIG_SCRATCH_SIZE);
| ^~~~~~~~~~~~~
make[1]: *** [/home/ARM64/barebox/scripts/Makefile.build:170:
arch/arm/mach-rockchip/rockchip.o] Error 1
make[1]: *** Waiting for unfinished jobs....
make[1]: *** [/home/ARM64/barebox/scripts/Makefile.build:170:
arch/arm/mach-rockchip/bootrom.o] Error 1
make[1]: *** [/home/ARM64/barebox/scripts/Makefile.build:170:
arch/arm/mach-rockchip/rk3568.o] Error 1
In file included from include/linux/container_of.h:5,
from include/linux/list.h:5,
from include/param.h:7,
from include/console.h:10,
from include/stdio.h:6,
from include/common.h:10,
from arch/arm/mach-rockchip/rk3588.c:2:
include/linux/build_bug.h:100:41: error: static assertion failed:
"sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
100 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
|                                         ^~~~~~~~~~~~~~
include/linux/build_bug.h:99:34: note: in expansion of macro =E2=80=98__sta=
tic_assert=E2=80=99
99 | #define static_assert(expr, ...) __static_assert(expr,
##__VA_ARGS__, #expr)
|                                  ^~~~~~~~~~~~~~~
include/mach/rockchip/bootrom.h:25:1: note: in expansion of macro
=E2=80=98static_assert=E2=80=99
25 | static_assert(sizeof(struct rockchip_scratch_space) <=3D
CONFIG_SCRATCH_SIZE);
| ^~~~~~~~~~~~~
In file included from include/linux/container_of.h:5,
from include/linux/list.h:5,
from include/param.h:7,
from include/console.h:10,
from include/stdio.h:6,
from include/common.h:10,
from arch/arm/mach-rockchip/bbu.c:2:
include/linux/build_bug.h:100:41: error: static assertion failed:
"sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
100 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
|                                         ^~~~~~~~~~~~~~
include/linux/build_bug.h:99:34: note: in expansion of macro =E2=80=98__sta=
tic_assert=E2=80=99
99 | #define static_assert(expr, ...) __static_assert(expr,
##__VA_ARGS__, #expr)
|                                  ^~~~~~~~~~~~~~~
include/mach/rockchip/bootrom.h:25:1: note: in expansion of macro
=E2=80=98static_assert=E2=80=99
25 | static_assert(sizeof(struct rockchip_scratch_space) <=3D
CONFIG_SCRATCH_SIZE);
| ^~~~~~~~~~~~~
make[1]: *** [/home/ARM64/barebox/scripts/Makefile.build:170:
arch/arm/mach-rockchip/rk3588.o] Error 1
make[1]: *** [/home/ARM64/barebox/scripts/Makefile.build:170:
arch/arm/mach-rockchip/bbu.o] Error 1
In file included from include/linux/container_of.h:5,
from include/linux/list.h:5,
from include/param.h:7,
from include/console.h:10,
from include/stdio.h:6,
from include/common.h:10,
from arch/arm/mach-rockchip/atf.c:2:
include/linux/build_bug.h:100:41: error: static assertion failed:
"sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
100 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
|                                         ^~~~~~~~~~~~~~
include/linux/build_bug.h:99:34: note: in expansion of macro =E2=80=98__sta=
tic_assert=E2=80=99
99 | #define static_assert(expr, ...) __static_assert(expr,
##__VA_ARGS__, #expr)
|                                  ^~~~~~~~~~~~~~~
include/mach/rockchip/bootrom.h:25:1: note: in expansion of macro
=E2=80=98static_assert=E2=80=99
25 | static_assert(sizeof(struct rockchip_scratch_space) <=3D
CONFIG_SCRATCH_SIZE);
| ^~~~~~~~~~~~~
make[1]: *** [/home/ARM64/barebox/scripts/Makefile.build:167:
arch/arm/mach-rockchip/atf.pbl.o] Error 1
In file included from include/linux/container_of.h:5,
from include/linux/list.h:5,
from include/param.h:7,
from include/console.h:10,
from include/stdio.h:6,
from include/common.h:10,
from arch/arm/mach-rockchip/rk3568.c:2:
include/linux/build_bug.h:100:41: error: static assertion failed:
"sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
100 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
|                                         ^~~~~~~~~~~~~~
include/linux/build_bug.h:99:34: note: in expansion of macro =E2=80=98__sta=
tic_assert=E2=80=99
99 | #define static_assert(expr, ...) __static_assert(expr,
##__VA_ARGS__, #expr)
|                                  ^~~~~~~~~~~~~~~
include/mach/rockchip/bootrom.h:25:1: note: in expansion of macro
=E2=80=98static_assert=E2=80=99
25 | static_assert(sizeof(struct rockchip_scratch_space) <=3D
CONFIG_SCRATCH_SIZE);
| ^~~~~~~~~~~~~
In file included from include/linux/container_of.h:5,
from include/linux/list.h:5,
from include/param.h:7,
from include/console.h:10,
from include/stdio.h:6,
from include/common.h:10,
from arch/arm/mach-rockchip/rk3588.c:2:
include/linux/build_bug.h:100:41: error: static assertion failed:
"sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
100 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
|                                         ^~~~~~~~~~~~~~
include/linux/build_bug.h:99:34: note: in expansion of macro =E2=80=98__sta=
tic_assert=E2=80=99
99 | #define static_assert(expr, ...) __static_assert(expr,
##__VA_ARGS__, #expr)
|                                  ^~~~~~~~~~~~~~~
include/mach/rockchip/bootrom.h:25:1: note: in expansion of macro
=E2=80=98static_assert=E2=80=99
25 | static_assert(sizeof(struct rockchip_scratch_space) <=3D
CONFIG_SCRATCH_SIZE);
| ^~~~~~~~~~~~~
make[1]: *** [/home/ARM64/barebox/scripts/Makefile.build:167:
arch/arm/mach-rockchip/rk3568.pbl.o] Error 1
make[1]: *** [/home/ARM64/barebox/scripts/Makefile.build:167:
arch/arm/mach-rockchip/rk3588.pbl.o] Error 1
make: *** [Makefile:1142: arch/arm/mach-rockchip] Error 2
make: *** Waiting for unfinished jobs....
AR      drivers/of/built-in.a
AR      drivers/built-in.a

So, to avoid this, can we define default for CONFIG_SCRATCH_SIZE as
CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE if this option is used?

Finally, at least for RK3568 (cannot test RK3588 right now), the init
errors are gone:
...
arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version =
0x0
optee: smc_abi: probing for conduit method.
optee: smc_abi: revision 4.10 (5c827bf3bc358e9a)
psci psci.of: detected version 1.1
...

The rksecure now works like this:
barebox@Diasom DS-RK3568-SOM-EVB:/ rksecure -i
NOTICE: optee: optee: No supplicant or RPC handler for command 0x0
ERROR: rk-secure: TA 5cfa57f6-1a4c-407f-94a7-a56c8c47019d: error 0xffff0009
Failed to read secure boot info
rksecure: Invalid argument

=D1=81=D1=80, 12 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 09:25, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> On 2026-08-11 14:51, Alexander Shiyan wrote:
> > Hello All.
> >
> > BL31 =3D rockchip bl31 from rkbin
> > BL32 =3D tee.bin builded from https://github.com/OP-TEE/optee_os.git
> >
> > DDR cb12b99cc23 hcy 25/10/17-18:57:13,fwver: v1.21
> > ...
> > NOTICE:  BL31: v2.3():v2.3-964-g8319968f5:derrick.huang, fwver: v1.54
> > NOTICE:  BL31: Built : 17:20:23, Dec 26 2025
> > ...
> > INFO:    BL31: Initialising Exception Handling Framework
> > INFO:    BL31: Initializing runtime services
> > INFO:    BL31: Initializing BL32
> > INFO:    BL31: Preparing for EL3 exit to normal world
> > INFO:    Entry point address =3D 0xb00000
> > INFO:    SPSR =3D 0x3c9
> >
> > barebox 2026.07.0-00839-g50ae8812b950-dirty #144 Tue Aug 11 14:39:36 MS=
K 2026
> >
> > Board: Diasom DS-RK3588-BTB-EVB
> > rockchip-dmc memory-controller.of: Detected memory size: 0x100000000
> > netconsole: registered as netconsole-1
> > fan53555-regulator rk86020: FAN53555 Option[10] Rev[1] Detected!
> > vdd2_ddr: Bringing 500000uV into 1100000-1100000uV
> > vddq_ddr: Bringing 500000uV into 600000-600000uV
> > rockchip_saradc fec10000.adc@fec10000.of: registered as aiodev0
> > BTB revision: 3
> > EVB revision: 2
> > EVB HAT Addon detected.
> > arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware vers=
ion 0x0
> > optee: smc_abi: probing for conduit method.
> > optee: smc_abi: revision 4.10 (71196403f6f9f642)
> > ERROR: optee: smc_abi: driver requires OP-TEE dynamic shared memory sup=
port
>
> In OP-TEE this goes down to:
>
> #if defined(CFG_CORE_DYN_SHM)
>           dyn_shm_en =3D core_mmu_nsec_ddr_is_defined();
>           if (dyn_shm_en)
>                   args->a1 |=3D OPTEE_SMC_SEC_CAP_DYNAMIC_SHM;
> #endif
>
> So either you have compiled OP-TEE without CFG_CORE_DYN_SHM enabled
> (unlikely, it's the default), or core_mmu_nsec_ddr_is_defined() fails
> which means OP-TEE doesn't know where your memory is. OP-TEE gets this
> information from the device tree. Do you pass a device tree to OP-TEE?
> barebox only does it when CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT is enabled
> which currently is not the default as there are some Rockchip TF-A
> binaries shipped by Rockchip which do not handle a fdt being passed.
>
> Looking at your TF-A version you might have one of these, so you likely
> have to update your TF-A to an upstream one.
>
> Side note: Look at bl31_entry(). if it gets a fdt_addr that will be
> passed to both TF-A and OP-TEE. You *could* try passing NULL as fdt to
> atf_entry() to pass the fdt only to OP-TEE and not to TF-A, but I
> wouldn't encourage that.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>


