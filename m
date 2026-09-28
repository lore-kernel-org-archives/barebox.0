Delivery-date: Mon, 28 Sep 2026 14:09:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBABB-007Hh2-0s
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 14:09:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BA928201E1B
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 14:09:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MLAguHYG;
	dkim=fail ("headers rsa verify failed") header.d=gmail.com header.s=20251104 header.b=Gl+kCXJf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790597397;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LQrRcMv0abyk+4sO/L04am+7JG5wnWQkwyhzSWx9YdQ=;
	b=BJwgBbucqYOBfEqJuYGsWISuj15tQ6CyEMKjx00TDrYP1KKPjKpBqoeq6wP+IMYE+ia1Wl
	I6XOpKnX5fWWFLANQ+6pUyByU0mbTA0hNYyfICtrANzeA3inEy5sNo77fpTGukCf8cEhbc
	kVHlWINRF6DB2H2/feYdsrxryosoRkIzw0hWfZCEarxHd/xerZaiOwz3j/48OtaOZpsvV4
	H+qT0ElmNEASOSOHiommwEF1cyOUbqMk7+98TrU1ZQhBoNlRtn2xSIqbQAMW2hQlU9MhUP
	sjM4/qmDU2rnFMtLtKf4TW+2bMRGI1oyuCgOF8Tw8i2JUGcv09l3Owt/lLqG4w==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790597397; a=rsa-sha256;
	cv=fail;
	b=ScpKLaJedJDJgB9MJ3qabRAccT9ZGBaVtP4ujw2oFCZzvYQW6KA69HBnbgqNrcmbKMUP1b
	HEKpoPZgv4JCNPrhFBCgJ6eNc0S1cCS46eBNZr+j5BCUxmGI68bZvj8y3aNLvRptgL1A6i
	hVKp7IUwb4jvlrGq1zkF7Wrx+UqS+SZ1QRX2vTwvkB5ShWzmr8hXZAyEiNuCGUAJtKkXqD
	cHfuhWtMFwDPoC/wICICTJARBiugZY3fEEtjrG2/96LGq6bHhg/RZ8H9L98nhkIRwLlULP
	vwQuh21C2e5sLpXoTsS73bDqkEPn/5+IEEM1zMGFyl+o8ZsLbNEDpHTwK+Iq/g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MLAguHYG;
	dkim=fail ("headers rsa verify failed") header.d=gmail.com header.s=20251104 header.b=Gl+kCXJf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQrRcMv0abyk+4sO/L04am+7JG5wnWQkwyhzSWx9YdQ=; b=MLAguHYGwDLTe3
	RyDUsVA2r4yKA3ZBRvmYaQDIoW6/ft5swciRBe4L9NCjZMSyZXKnd6c8Xn53vAXY8/QYU9Ipl1VTq
	vNDLAlfZz2FVGmLDe9Ftgfy2mIB6qX37roXV51ovrE2hn7SBuK7W5bpu3KuRAFswpZbr3Dd0ui1Wa
	vGgBaJe7ELs1uj3kGOA8hZQT3KyQyzUzq5T71pDhTQhd/ODaFvtkBDCKHS+HhNRjr+WZZsZYV7Jiv
	UPR8kZHkCVIxkp+ZetKhpwvG1EBvSD59H3MPgRUxN+uxFILuy0kBRZYxDE7OciEG2/wYVUKHpCc8c
	xN6x74+d7zV9Sg/D6CqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAA2-00000000WuK-04cB;
	Mon, 28 Sep 2026 12:08:46 +0000
Received: from mail-oo2-x0d.google.com ([2607:f8b0:4864:31::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBA9y-00000000Wtj-3uVX
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 12:08:44 +0000
Received: by mail-oo2-x0d.google.com with SMTP id 46e09a7af769-8177a7fc354so1503868a34.3
        for <barebox@lists.infradead.org>; Mon, 28 Sep 2026 05:08:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790597322; cv=none;
        d=google.com; s=arc-20260327;
        b=S7hT6InFRXDrQb0DjAN5VslRP6b4LU5m6oBdvWRMHx/4w0DyX0CJogIkHR3M8JUg7A
         oJW+4n2g/9TLlglkllIspULY0zvaHzaOA1jiskKBp7yOtzriMVwmKspN/37/ss6ukmoF
         bhotWR3V9QKlSS4q05c+vgpDuw0pV00A6ui41RZc5Z30HeUQ/LBRTFh0CwnBLtB/HgBh
         qGOpKJbf4wP233UCDX/rB7lXaUNxDgg5z11CMwXUM7vQyQLmxMuXHjv91iVFzd984/6o
         NniUP1Ei2fJk01iAMsfaqGhcGslnUhbXRPcC/bvF06eSooSshxdx5lPWlR8Le2GyW8nr
         cEPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LQrRcMv0abyk+4sO/L04am+7JG5wnWQkwyhzSWx9YdQ=;
        fh=LV58DZ6FY/Jpt15BhN4b/dxWwKeAkmr/+tythAe3hII=;
        b=kqfSFKLzlwUvx1rCQB6XTwJCNaTDTVVBHnF7ijROmpJ5Ka3nwfmTrFz6VPb+Sal0YW
         cHIMGbX5WNIsp3AkHuj+sO5M7w06TJgPB2AINHZizYmznZuDKyiK6VW6gfspk5r1vBov
         1JxmZaJj8Cu2k4Wne54xe2bDbWWSFKoj1V/LaZsGJUUbMTDb7t5MFJLutrQotAgDZ79c
         OPmZJVKeqkjsercQggx0kFxGtB2ywAjmroxwWjHP3RT6U7EgCUl/FlMFV/jqgMwEHOeK
         jmwaIz1le/gAhIfHJO93UECrqD73NeDKyradqdgntWb+oaYTMIBnXcZGoS6FRUkBGHy0
         0HYw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790597322; x=1791202122; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LQrRcMv0abyk+4sO/L04am+7JG5wnWQkwyhzSWx9YdQ=;
        b=Gl+kCXJfQrz45xK/6GQbtWSf4RL37QH/avIgFHJSkcx7WgOloMWbzWzs4JoFoWDf27
         jE3fM9QYOlqMK8mw8WK6s7w0JS7lEQRL6hujDGBR2yKXJUha0p8ftaFY2IZRX35pMmO3
         mftbtJgonrmF098TkRVxIXQuNruNm3GnyI3rPdx9ELaWxFAWoH+iQn77Zr4Z5Q+pscoQ
         j6HhdeJTxvSluMliMzWRAioEn9SsvMDsRUwfZ4XKcDNRu00zrm7kBcwIk0/rggr4GxKi
         ItnccuUQzBgpefTKRG0lOeV9ShEIvZ8Xn8Rw8ZyatmjAhRI5G1+zQHAY8inDfWQtL17a
         86Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790597322; x=1791202122;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LQrRcMv0abyk+4sO/L04am+7JG5wnWQkwyhzSWx9YdQ=;
        b=ilgwNilvTYE1o4pmifbvFsUg1BmpFd3LElA0mUJj+4VUpegl6AJENhkDQCnXFIGLyL
         hXI5i+krRW8lUFGo97oxLsS1HMnYBOL7SZ9Dx4fsjIKkeT4OVkeYVu03Lr1Cy91+TWyI
         rQ/njGr0VmrkBZ4Fb+wf1biEKO44OHINNs+z1n0pSQz0mUQwc69EocCzSZlaUXMrdt/x
         hOkw5+JGFdEPt5vQasCPpMbZN4CDjGKj+Zi4rsFxvjE4XaQvMNWIt+v4Qxp+to7J6INw
         gvqrKM+EUD+xryUaBcWntIHBEiDxbOs96B7ZxoSbe68tAuU4Ko546UweSN2YqlxScGVv
         L8fg==
X-Forwarded-Encrypted: i=1; AKwUvBy3Bkvh3d/I548ul8Sw6KWJU3qUQj2dz3UNVrv0KR6hV+/z13ZyPeYcdSswVpcQ/A0iEYc4il16@lists.infradead.org
X-Gm-Message-State: AFuF++nWPc5lBlxxE7yJfzwkIk3EIQNDbz4yWFTfblF8pJnExMor1XVT
	jzg43m4h7tb0xVN6vfgQqI7wYoGYq+ZyDr3NlPoCheSgXn9CieEVMHf4rkDmz7Ur6CxJv19eUA9
	ivQ48BKH7YUB7ar7E9BWgHM9Hq4eP6t77hoFg7p7Cyg==
X-Gm-Gg: AYBFou0N6LpjPsGGErpKu7z0DCkWxJiB6xNC49BT15k71DyrivuxFxB++Shn2muF3iX
	J5ZftIONp3cTbQvIThlnzaMUIKj/6+YEnhefoINwiNA88IZnTixl/1Wsbu89cgtZaryn7GnRoe5
	2J5/oXzwoU/myI4qgy44hO+UdXx9JFhJtLQE4CIv8BrngmkESUQyqCsuIt8H6r+vYqorpyHJflA
	xwc1fa5K3abidS/sxBxWGKmfuSYEKksjOSilthxYahop5x/1YFT122txErv5OpXudA5HjuV7UVI
	nD1h8nz/GNgQnl9GYE8QQktEW7l4o6Ue7nDIeTDOy63UhTIyYS2ASe2dwzC+OQ6u4V3ufmvHoW3
	Kq/I+WkCw9JaeFIcCnE5C7hovnQaESq5s4b9F2tuyw09k
X-Received: by 2002:a05:6820:1ca9:b0:6ca:5f4d:318f with SMTP id
 006d021491bc7-6d43f89b81fmr11090650eaf.30.1790597321654; Mon, 28 Sep 2026
 05:08:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260927-nvme-ready-poll-v1-1-6a3f63b0ea3e@gmail.com> <d8a1924f-a798-438d-aeeb-4cc5139b254b@pengutronix.de>
In-Reply-To: <d8a1924f-a798-438d-aeeb-4cc5139b254b@pengutronix.de>
From: Christian Berry <christiankbberry@gmail.com>
Date: Mon, 28 Sep 2026 08:08:30 -0400
X-Gm-Features: AclHuK8VqXEVLqHASCynh_rj_O25j3e1loSZ2WW3P-JhEUsMacjKmyzysFC-IoA
Message-ID: <CAH86aduF9cF54ew=75XAj=Wp1dScS5FMDWRSpF-FDaiEsg8mSQ@mail.gmail.com>
Subject: Re: [PATCH] nvme: check for readiness more quickly to speed up boot
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_050842_985475_A15D85A9 
X-CRM114-Status: GOOD (  26.48  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 9/28/26 10:19, Ahmad Fatoum wrote: > Nitpick: I'd prefer
    mdelay(1); but you don't need to resend just for this. Thanks for the response,
    I went with udelay(1000) intentionally, to mirror Linux's usleep_range(1000,
    2000) in the equivalent NVMe readiness poll (commit 3e98c2443f5c). mdelay(1)
    would work too, and I did consider it over ud [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:31:0:0:0:d listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [christiankbberry(at)gmail.com]
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.31 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER(0.00)[christiankbberry@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:-];
	FROM_NEQ_ENVFROM(0.00)[christiankbberry@gmail.com,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:31::d:received];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: BA928201E1B
X-Stat-Signature: qp1k148t9551zoqzcy3ko3erc6cww7gp

  On 9/28/26 10:19, Ahmad Fatoum wrote:
  > Nitpick: I'd prefer mdelay(1); but you don't need to resend just for th=
is.

  Thanks for the response,

  I went with udelay(1000) intentionally, to mirror Linux's
  usleep_range(1000, 2000) in the equivalent NVMe readiness poll
  (commit 3e98c2443f5c). mdelay(1) would work too, and I did consider
  it over udelay(1000) but keeping the barebox and Linux implementations
  easy to compare side by side seemed worth it. Happy to switch if you
  feel strongly; otherwise, I'll leave it as-is per your note.

  Thanks again,
  Christian


On Mon, Sep 28, 2026 at 4:18=E2=80=AFAM Ahmad Fatoum <a.fatoum@pengutronix.=
de> wrote:
>
> On 9/28/26 1:03 AM, Christian Berry via B4 Relay wrote:
> > From: Christian Berry <christiankbberry@gmail.com>
> >
> > nvme_wait_ready() polls the controller status every 100ms, although
> > the controller may become ready much sooner. Every probe then waits
> > at least 100ms longer than needed, and possibly twice, since both
> > nvme_disable_ctrl() and nvme_enable_ctrl() wait for readiness.
> >
> > Poll every millisecond instead, as Linux does since commit
> > 3e98c2443f5c ("nvme: Check for readiness more quickly, to speed up
> > boot time"). The overall timeout is still based on elapsed time, so
> > it is unaffected.
> >
> > Tested on an Arm64 SoC with a Samsung 980 SSD in a Gen3 x4
> > configuration, where PCIe + NVMe probe time dropped from 165 ms to
> > 65 ms.
> >
> > Signed-off-by: Christian Berry <christiankbberry@gmail.com>
>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>
> > ---
> >  drivers/nvme/host/core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index 345707ecfe..9686268d44 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -173,7 +173,7 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, =
u64 cap, bool enabled)
> >               if ((csts & NVME_CSTS_RDY) =3D=3D bit)
> >                       break;
> >
> > -             mdelay(100);
> > +             udelay(1000);
>
> Nitpick: I'd prefer mdelay(1); but you don't need to resend just for this=
.
>
> Cheers,
> Ahmad
>
> >
> >               if (is_timeout(start, timeout)) {
> >                       dev_err(ctrl->dev,
> >
> > ---
> > base-commit: 983608b439b803f72f12d56d0ab10bd6ba29e536
> > change-id: 20260927-nvme-ready-poll-4bd640377bab
> >
> > Best regards,
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


