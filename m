Delivery-date: Fri, 21 Feb 2025 12:56:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlRdw-0056FQ-39
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 12:56:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlRdv-0005JP-Rg
	for lore@pengutronix.de; Fri, 21 Feb 2025 12:56:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fc+RLGjEkTvy+6nUSGBsd6eS6iKiRXDXzXWXovnBDhU=; b=c8sf8fPkN8lw4E62jbxu1Q02oO
	P1Q/Z9lJzctQbBPht1fa6AylH6aV2+2TotRry/OVl3o5rbVmF61IP0kx7NV6xbug15R0T6N7mS/d0
	TP9TgpBIYRdPO14BC8uoc3AblEPPcA+LpZNsjn42y06hddhvrDS0KUmizUcNw1SkAQgmPazz3W3OY
	dXCojZRslj7+STp2s27AXXQk1EbEwTeOkCX3m77tKi0rW1eOTdDhM3IPyoBxJhKQtnGK6jild09fg
	cryJsosQA37tEkNweGjVuXXPVFU5ev5jSXCh0JXOnj8Yhzhao6O2fd6bWeXSztZmzZwqzkmB5aiLR
	k3+Fi1qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlRdG-00000005P4v-2DTy;
	Fri, 21 Feb 2025 11:55:50 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlRc7-00000005Orh-2rip
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 11:54:40 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-abbdc4a0b5aso380957766b.0
        for <barebox@lists.infradead.org>; Fri, 21 Feb 2025 03:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740138877; x=1740743677; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fc+RLGjEkTvy+6nUSGBsd6eS6iKiRXDXzXWXovnBDhU=;
        b=mfmYIqcegLiPlgZF5xgENwHh8rp5uhr158UdJM3oHoDeBCkfoRbLj0XeAi43GkW/LS
         eOy/NU8HN8+XpXtVSom75xaEw879WxxomZCAmW4zIRet2z+KQfnMm+MPMs1akGA9IKoh
         GPVJzwBV+GP7HBhfarc81WiaJ2VVQo8Z65zbIpDIcS5Q/+OrfVAdrdFMAPK1SHuU9sfZ
         w6Xxxpt/4vaJ8497Z1Cm2Mj1oOEdjYEUV9ExmbSSAvunWXXr1VuMyNhhEg0AONETTVEB
         J9M7tj8rY7iDOnd+g2E9KBMfZ/23e8toUNZ8TnfKUrBuH0TLnWXn72uLQtg7VEHlRp5w
         zgjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740138877; x=1740743677;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fc+RLGjEkTvy+6nUSGBsd6eS6iKiRXDXzXWXovnBDhU=;
        b=b7cwNir9NX79WkwiXon1ixlIFv41QpUwuLRPpm8XlWqPxLkEG+FQaozrygyo+ggMa9
         YaYJlHo7nESoGlKkRciPhUn6403cSFCeaIkYcf4JTktwyE8anrcmFYqTa6x0fD66/qNl
         xuViYv04o/MEgo/B9pFNkFKJUFnJyW8GcFv96I7mYNf6tZgEIGvbmXPhhefkoPALdVwm
         y+DGxpx5J95rMGqZyUf5vG4vvbN3A/UCSIBt5uVgfSPpNZPIYBOjykQ1dJB1i5QGktxm
         7HNU6BykCyW6YNEQTKk/YHVY/z9ttyJFXHVn0JwgA1tVB1FpN6DwtcFCUfLyTt0G3zem
         euhA==
X-Gm-Message-State: AOJu0YwqinijQbimf75KQPJ6qlYdlBYxrmcDN9BhWUWeNrjc4tci9xkA
	RiHpV2oSV61yxmnbsGNFpJtbuvbzZ8/8PQrLtHKX9M4iRDJrYKhq1N+REpM17GF2oD3Z3Lhztkf
	y/JDLekYT93WbVcTtYQhOiUftCouLp47KXrU=
X-Gm-Gg: ASbGncspPIxD/9liVun7fCo4zDqWp4p1oatri1nmZ6pqHcsKB61XKUWAm37nIYpNMe3
	oBe8ngxUh0qlhxBRpzefAgvJIQDs5JBLFwI97KZYHb3R3PiUVOMiYW94MuNO4bGZeMJl7fKnhb/
	/0xrnuFRs=
X-Google-Smtp-Source: AGHT+IFERHHO7WAd2Gfr3m0ICdv6ivVR8A8Rdc5hGpFCgP2I+ysSG8YRxmkYyAs4C0nyUKTAnio7oxQoe/LwhMNhpcs=
X-Received: by 2002:a17:907:d088:b0:abb:e6dc:f615 with SMTP id
 a640c23a62f3a-abbedf556b7mr678153466b.23.1740138876725; Fri, 21 Feb 2025
 03:54:36 -0800 (PST)
MIME-Version: 1.0
References: <CANH4o6Njc3uHE=NbasRJrRr0W5B89R8MTM_BwGwab7t5fNWuaA@mail.gmail.com>
 <Z6yxUVTp0vGWqs7Q@pengutronix.de>
In-Reply-To: <Z6yxUVTp0vGWqs7Q@pengutronix.de>
From: Martin Wege <martin.l.wege@gmail.com>
Date: Fri, 21 Feb 2025 12:54:00 +0100
X-Gm-Features: AWEUYZkWH5LKnnxJgTFATyO7YfHZMKYfSweif-sUHM6RQ37HBzvAFcsfMTZB3zs
Message-ID: <CANH4o6NRK2+ekNe_LrUaoAi8PVbi-MC3hWerv4g6F-WmXmyK5w@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_035439_728165_D09D41D3 
X-CRM114-Status: UNSURE (   8.47  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Mount NFSv4.2 filesystem in barebox?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Feb 12, 2025 at 3:33=E2=80=AFPM Sascha Hauer <s.hauer@pengutronix.d=
e> wrote:
>
> Hi Martin,
>
> On Tue, Feb 11, 2025 at 01:56:58PM +0100, Martin Wege wrote:
> > Hello!
> >
> > Does barebox have support to mount a NFSv.2 filesystem?
>
> No, not yet. For NFSv4 we would first need TCP support. While we started
> to integrate a TCP stack we are not there yet unfortunately.

How long is this going to take?

https://github.com/sahlberg/libnfs has NFSv4.1 support, just remove
the NFSv3,v2 bits, both are considered obsolete by the IETF.

Thanks,
Martin


