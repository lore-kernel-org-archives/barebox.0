Delivery-date: Thu, 14 May 2026 23:55:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNe1K-001m2q-0M
	for lore@lore.pengutronix.de;
	Thu, 14 May 2026 23:55:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNe1J-0002wd-GW
	for lore@pengutronix.de; Thu, 14 May 2026 23:55:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/eNz90ogAnoEkmPanY+77jqwCeYzHH8uUUPVU7Kpm8c=; b=PG/ay2R9K7eDDS7c8no871cI4q
	YiyZg1iOJjqr9NPdaKOTiPwhAbGFX9ipD1cQ+LOnGBpJ7kNiKaMUEJxMeXLzcAQ7fZ5+I/EdSROc6
	VEMo9+mTatRXf8ndPlc7D/XIBYhp/RKmduoAhdNG2zp2WYULlu5413ugK4DA1QX5CSgjRugc2IGa/
	iKtYNzTbzK1eaiSu/ACDaWqnKaj9nGT6MCPHjBcuzhzkCyj0GFaOp5V0bQMYcrLMzW+a/xldwweYL
	0gdjHqvdo8bTyY3qnktusw/zMAJEfBVQLz3D9CC4ie0UuBp6wG4sbxnCTNpgF9fesaEc2fyl1h1xl
	wKK2cgVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNe0k-00000006eDt-1xgq;
	Thu, 14 May 2026 21:54:30 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNe0h-00000006eDE-1tkq
	for barebox@lists.infradead.org;
	Thu, 14 May 2026 21:54:28 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-479aa2dbea2so3704988b6e.0
        for <barebox@lists.infradead.org>; Thu, 14 May 2026 14:54:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778795666; cv=none;
        d=google.com; s=arc-20240605;
        b=SSS+vOGFECwZIR4kFY1iQpnQHclhXDyjggRaN4zPh96Lpd77G5K6uA/pLu56fhFROU
         f4J1neZQSjwy9ManiwK3P4YtPlk8G8FwbpV2pbi//+3uX8Gq71SzNe3GlS6N1M4fLkyq
         j8DxrvSXN5VY14GB6JMHD/OFDxWIJisRNo1Pua0MaHOT+JyFV9pH5deysKcJCMqDlKXY
         niBbsFseEGkylOIWdSJZCU9G5SWbFNzei5etkWaXjBMWBUAvyc1kAyyI+uW6SCqLIIEo
         2BbLM6SWjj4d06o3eEumI4EelxWt6oTfqmmuOR/l8SmVZHPsm399B1jX1enT0UdEprYB
         fLww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=/eNz90ogAnoEkmPanY+77jqwCeYzHH8uUUPVU7Kpm8c=;
        fh=VPA67by2PzCStSjJZ4qipiywkvFSSPaFMdLQgUNzQBQ=;
        b=f2K5bgr6E4QPH/nJ6WG+HA3R7UodjLrFR63+OkigvqRYP1fgb5AVTWhYrcnF51n18U
         BVsfRcsmkhc0v4/0uOOi1OmxBDgMdGL1g9xzfAG0pjE3It/WZ1hQFBLAuOV85v8lTjsI
         qgSv8z0ItcYja8QaU1zWQTP3BMhHuUlvBtDF4fgxkP7TlL476V8jHXuhYWPztcfC2Dt6
         gHiYeoYSDQaMK4X5xiMhSAZzcY/crECoRmw7xM6b6tRMpB901DGiopYoCESrhFmq8/1+
         Pl20iSEuy8OC1oKU8jL+BbTZt5e5VDe3WWIuI4a9SQh+fubx9PRoR+9o9hh8yRJYd7/U
         +P2g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778795666; x=1779400466; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/eNz90ogAnoEkmPanY+77jqwCeYzHH8uUUPVU7Kpm8c=;
        b=p52+LCB0J28b8uh+FN1ZHr+A64B3Wkl2iSB+jYQpXcQd7wCpV3158gmZRUiBupQIYm
         2dVlc0KkmcWwed8UQRrPXt6RUTqN+Oma0c9rdKMbhfXbSXQbQeone5hLexUxRt93tKu6
         +lo4OftVYZaLRJrbYfdNM86uMLyPGAZJ4GIzecFQdJEPmbbdXJeCNacDXKKxsPtA0Tzt
         /8ru8KKy96sb/nUePZAaIjd/AkZWRn9yIkVECy0DNGEI42TJtHUbgfX+VWPsRpnPCpfe
         pmNhW7NEQ5eJ19T/tSKmkG8lZkXErY5dt8GL8JPiFedlsy778ZE6DjdVCLMxd6IQL4og
         qpNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778795666; x=1779400466;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/eNz90ogAnoEkmPanY+77jqwCeYzHH8uUUPVU7Kpm8c=;
        b=VoB+B6JrgXI0IH2bZgOcnmI0HZWOCCLxpRGKC+koRxNll9aL03CnkCZxYG9V1hzsDr
         Y92kJFs4RpNX8R6QOSQa1fE1hXhPV7kEHsjOlDSaDdS15X6u51YVHE2JEiLhhtXafjOE
         Ne5Ave88khRy1xMve0ut23h414JOC9ga5FZH68rwlUB6wR1gYRG9ndNNUuICuFCCdo9+
         iO6k40JhFlb1TzxhaUYqvAztF2IhdZaljQDxtAGnCwIXqduQ7N4TBSdJBWCGLpBBTJIH
         TdsX+fMkRFQNX6vOr1lD6zwqTTNBblPKP6PvOOJ1SwdpdHXwhy1OwrV+JJwEqelrBP/I
         b/Mw==
X-Gm-Message-State: AOJu0YzkbgNmjvb43oqz8xP9QC/knP7RIxJlKoAhQsQTMGvzzAGZREU0
	X98xaXjFeEdCEfIBfjMNBKNNZ5rT74KLwAXYkmAok0SZiLF2JfdQI8CH9a8501d1+VtCLxTe0jY
	rYRNfl/r4M61MlcGGtXmJPFX0jEmPtWcBjOYSonol5Q==
X-Gm-Gg: Acq92OGoTogw2h5+V0z9Ssoy6SvVpKLBoUHIz+rSX1Aq3HhYTGH0NeX80gPUNKpEtCf
	wBj+Bk7s17ZBgkaYCXLIxEReBVwloLO5P3KIJ8Gycs1oiF5OAIr3OeYHGsecy6JwtPCbFE/b2xI
	3rcLYwm4P7aNik3jm5pMiEooPLQoXKlaU4zwIzTRzf3KlCMuCKsFhxg4Rq2EWiCthMpbrtU/F2P
	VkE5T4HPRZ0zGE+6WWkriaOT8Bwk5MwC6z6dkQiSPc0HKSRtumO8auCiv4HjNBQCGqZDRgzVo3u
	BxGzamP19wyBxRMOVBMwVrgesEG8wonRhRH8xxpTeFTW2fuf3FBQKLkfZbJ/2w0TsMR/OGnRIuF
	p3DQLb8wKbdljfirxoXHcbN8ZYS0=
X-Received: by 2002:a05:6808:3986:b0:482:dae4:23cd with SMTP id
 5614622812f47-482e564d54cmr1043783b6e.10.1778795666221; Thu, 14 May 2026
 14:54:26 -0700 (PDT)
MIME-Version: 1.0
From: Mark Diener <markdiener10@gmail.com>
Date: Thu, 14 May 2026 17:53:50 -0400
X-Gm-Features: AVHnY4JaHcaJ0LHVwhCgYmZzRTdj1j1GNjavk1EK1FIo94iXQlVm82Vea61f1aQ
Message-ID: <CAC3g_BFiUrH19_yab4Bn+jNAH9akcupYAvvbzbZh++SiDap4Ng@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_145427_488792_105FC467 
X-CRM114-Status: UNSURE (   4.58  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: ENV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Is there better resources to detail how to properly understand the
details behind /env/  (its creation and components)?

I cannot get the barebox.efi to actually execute the /env/bin/init script.

bareboxenv seems like a utility that would be involved.

Also, when I bootm my bzImage, it hangs up and seems to lose track of
mounting the storage so it just stops processing.

My barebox.efi is launching, but tripping on properly have the
/env/bin/init directory established

Any comments appreciated,

Marco


