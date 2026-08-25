Delivery-date: Wed, 26 Aug 2026 01:25:37 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wz0WO-007Ec4-1v
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 01:25:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C26B320175B
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 01:25:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2RQk6aIW;
	dkim=fail ("headers rsa verify failed") header.d=gmail.com header.s=20251104 header.b=N0QIEzSj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgCXbtrV8louX6i2yVrBUdbzmxJMxLJExvDVD+xVfDU=; b=2RQk6aIWOLV5ER
	zJ1HapdQXiHZO6zMxTh5YdgfJdgo/GM3yvgO4dXPBLgxWbDGhkGToTqicoEsdhW5J3rizEYxPfSxp
	zjJd32VW21mWvYLTVixL4cAEXZ5jxzOye8BvgsSv5nWRATX3O0yPRhlGHzP/tn3CN1zyXoQ6jckob
	tV7J0rncA4EEaiSbuJ+Qe6nA116ogHXJHf9X2ygjqfv/h4wT8GFnY9J4EyjV/VfQLUa5RcWXR4ByL
	xFQjlFFaWXylAq6KjqxpsybajebKM1JFVi78VzB1c5H5dJsjgbkKocQMTlJ7t506B0VyCB/X9XKGi
	pAogpVVynDir9pPtlsUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0Ut-00000001flW-23cZ;
	Tue, 25 Aug 2026 23:24:03 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0Up-00000001fl3-33aI
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 23:24:01 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-3964b061528so537287a91.1
        for <barebox@lists.infradead.org>; Tue, 25 Aug 2026 16:23:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787700239; cv=none;
        d=google.com; s=arc-20260327;
        b=fNJSUW5f0xWIFk6/1aBspD8ONwuNSKuvunFRvbUsZMOu1MvrO+PS//h2CFpezvgnp6
         XG0MBdEwZ7pCyJipZ2mi7MZg/OhopBcf/HovcSEdE4Gpp8Sefgoov/scHzfJTCnjhLLV
         Q/X7L06s1VTUvK72dK7W6RbxxRVG6KBL6ICJHSefBaIWze8IXpbaLXtiWvSjG5u0AZh6
         mA87wy3sb8kXB2TYBJ0W3UQU2ve0jfEYtcK37l+ccc58WJ6jdbiAtG3TWKZED3q5q8sE
         pwAA7YTIP/y2FnOCa/Ojiu3Fukp1zqF+MVKd07Tl3pefr05yu6lWq2aWCCll6LC7yF/Q
         EqGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YgCXbtrV8louX6i2yVrBUdbzmxJMxLJExvDVD+xVfDU=;
        fh=oxc3xd8jkSXY8gBI7FWxuYrNdOdAL70+6qZXJUPAjsE=;
        b=h5/fW535U/ZGi3/0pU4Y/IIstLJ3SSQ1EkYNR8r13ItaxvSu86mqn4ilWXHdbFAtw6
         g0i713vU9VdsaARtnJ9QsAga5RUBOgNM21mn1A+we/WWYuyIr1T6EOPdqc+Aw0BFeiuA
         A8QeqjRftrfrUOqiBYgp49pUZgUawFq3LI0wbOhD3t5a7XgFOoFj03G1Qg6hqMaVBcbM
         JUgBJKCAEeuLkZjig0VJwNsO3J8ANpLxjBEX5AV3G1fENoQSKxknGbZr01HENwy6OmDu
         nnBuEUc6evs8gCTRR7oYEovzRm1/jEgwYRgmxs2l0GMzvaSuqKCq5qXg3v5AvN0UOdq5
         qx9w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787700239; x=1788305039; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=YgCXbtrV8louX6i2yVrBUdbzmxJMxLJExvDVD+xVfDU=;
        b=N0QIEzSjKwIdUy8XfGc1IVWwFbjXmGXN0JmD4YDYzEpsRAhXSNQ+ZBv9vbNVP99GWo
         dm11I9p5Dw+kZsmWaV8ArWNQZtzNqKTn0Z5MOmQNvgFR/OTexVNdO1lGgbE8RsoEd9Kv
         42p//vzTM6bRsviZRz+ufCiSEGkTQSEg3UC6I18V1Pg/gvukrUoXTratdNSZ1WOeLnND
         PhOsRr+wEgkquf97SRgwFimKRkdKQTykJ1JuyzSYqB2BGi33gR0coI1jso/aUEwD8Bv4
         GgiYxp6pvBxc5iJUHKmMnU9hjYKHxJey/Se0HdIVwGVH/RaWRHpyWNWEVKsmYW2Yfpzp
         tzFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787700239; x=1788305039;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YgCXbtrV8louX6i2yVrBUdbzmxJMxLJExvDVD+xVfDU=;
        b=AK6KBA0bTXA80HpNEuiSPui3ELgyz02e7hOF5NDIs86924a/2ptndb/Wv+jmDK1GD+
         CgzI9+gtvfxZLBS2WaIlsptv68ILrSigk9vNTCjZM/9MqCvqO2YJDaL3AQKiF1JOeu3H
         PWnsx7NUJbqeZXSTzqDqERIP/X/P0r9i48Xuon0Z9gfWhZuSkLiZoEQFm/ioG6LBNKwp
         0lH0ErBKvirtMSIsapyldYjgyQGTsepqvoRIiLjXes2qT1vXyUYPQwv/MaYZZn7XygnX
         WzHHpXy2MlyxT8sbtXug5cd1EZItmyl1sWkNUPVLkRI8I5s6W+Mapu4sNotWvpaIJLSd
         c40w==
X-Forwarded-Encrypted: i=1; AHgh+Ro0+wj8PwNKTAMFyfXUg4QevXOZ0WpzqdDwz8iE/U18eXRy1cKSchU6Ts7eD4L/xzos6VwGcZ1x@lists.infradead.org
X-Gm-Message-State: AFuF++mj15E+G1If5Pd/hxqQAW09MNhITHLwJNteyGRo1UgXNFUA2QsK
	VdAfsD4QV8P2D8sea9aoebv1fg1bd2n8Uw9/Z0xznHtJI/RyovFXK9HrsOt+GNDKOfY2pa93zzi
	E4lj2OzsY8pFsIpVoV69OzO5Vi6Y3N53DYMXx
X-Gm-Gg: AR+sD10sCvWRomoKIGsJdGfAkmuo7af9Gm6x77Unmoc/9I/4efGPI6BNoF+tPUu6HcU
	su/+5Y1c9D60jrPPb+k3Feddn+SJkKUTz2V7S7pEwaAUfQ5zziaG/UbR7t/h31cn90hcX4Xk2o5
	6J+peoCp0+EC4sPPFMXnrSh6vsy4O8ntOHTijHB7Rk+EhzDAlO+AFvluoz9HDoNi7eCpN+QRlTN
	Rcr3lVXQEhW6FB8OoUxDT2nMCMYx4+fakdZ1K0zB0EUiBOjTO+eOKgKsTh2mjd+EATkAsEFJbt6
	4/yAbQuKJzYtxjx33GEERbYhI3Ml3F2yyQpa9tTq8TEXvOPYMX+xEGLn0RYbAen6WACOhWKZcC4
	BM/LSfoT3ZH+C5g0Gu6VI1bjq4akl09zS6elMuk95d1fduDvjpqxWzZUa5uK9QA==
X-Received: by 2002:a17:90b:1d46:b0:396:5fce:8e24 with SMTP id
 98e67ed59e1d1-3966d197b6dmr5587686a91.4.1787700238376; Tue, 25 Aug 2026
 16:23:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260825030548.473672-1-chalianis1@gmail.com> <4462a622-9768-41d9-ad5c-2614954a9aa5@pengutronix.de>
 <b51c5e54-7ce7-40f5-b65d-1d8ef7a07be6@pengutronix.de>
In-Reply-To: <b51c5e54-7ce7-40f5-b65d-1d8ef7a07be6@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Wed, 26 Aug 2026 01:23:46 +0200
X-Gm-Features: AcwNN1VjUNz_nR3-gTebi9886KIzgirr3DLHMv-6ZOh-GyRXygGatye-4A3TNUM
Message-ID: <CAL+1fyD-X9awDg=JmKCMZdHqermbozsFU5dMce=E7PNNW_AjGQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] state: generic devicetree-overlay based state node injection
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_162359_773769_B224C917 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Le mar. 25 août 2026 à 19:10, Ahmad Fatoum a écrit :
    > > Hi, > > On 8/25/26 5:02 PM, Ahmad Fatoum wrote: > > On 8/25/26 5:05 AM,
    > >> so a real state.dtb collides with whatever root the EFI [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:102c listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.31 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_MIXED(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::102c:received];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: C26B320175B
X-Rspamd-Server: mx1
X-Stat-Signature: 7j35uubj13ykwgg9p17ffhfwuikg65ej

Hi
Le mar. 25 ao=C3=BBt 2026 =C3=A0 19:10, Ahmad Fatoum <a.fatoum@pengutronix.=
de> a =C3=A9crit :
>
> Hi,
>
> On 8/25/26 5:02 PM, Ahmad Fatoum wrote:
> > On 8/25/26 5:05 AM, chalianis1@gmail.com wrote:
> >> so a real state.dtb collides with whatever root the EFI
> >> payload already registered at boot and is rejected with -EBUSY, and a
> >> rejected tree's /aliases entries never reach the global alias cache
> >> of_alias_get() relies on either.
> >
> > This argumentation follows from a bug, so it doesn't say anything to th=
e
> > merit of this new feature.
>
> I have now read through the series and my thoughts are that applying
> overlays to the barebox live tree from outside can be useful (I wouldn't
> limit it to state), but:
Ack, and if we have overlays we can apply whatever we want (state, other th=
ings)
it more useful than the state, because it permits to add more stuff
and permits to
address state and more.

> - it needs better argumentation what it allows that is not feasible with
> fragments
> - it needs some way to account for multi-image
Yes, agreed. One approach could be to use a global label, or
alternatively scan all
barebox state partitions and check for a tag that matches the
corresponding state
fragment or overlay. The matching backend partition would then be used.

> I am going to send out my EFI-payload-state-via-fragment series soon and
> I am interested to hear your thoughts on it.
>
> Thanks,
> Ahmad
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


