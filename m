Delivery-date: Thu, 30 Nov 2023 19:32:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8lpk-00EeYm-1f
	for lore@lore.pengutronix.de;
	Thu, 30 Nov 2023 19:32:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8lpk-0000Ho-JP
	for lore@pengutronix.de; Thu, 30 Nov 2023 19:32:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Hxe5+QraIN+pWR8HDlI5OOaeSniWZcQ7T88Uq5w5qyU=; b=mQ8BpXo5SZGlO3SoaQyY6RbXDx
	bDSXOC3SX8+5qkb60Srvk798MABcLM3wmfUFc/ySwWKstRfUqDPVYfPRRZO1Z6Y52qTTzWfX7vfiG
	kZNZSFV282zQBtwGfoCqVaAyoDH5XdwFD/Y+zt0TJiyqzuGsryftB9V2TJRbiGWKgfp3l2VMqCjyG
	j5fH1vhuBYGxp3Qm1de5CVzHSXsSMgkbUUlqSpi38dBbR9SDFyQ1pRXl/15juTIR3K/PStBo2UQ96
	kGbxCdcNuqHgG/bOYXiJTJUTcUTGCP5A9JDe1HHCVhtjW/ZMn9OS8Nk8C0lA6S/kvs86ugCPUlWEi
	lRgHkjJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8lnt-00Bcjd-0H;
	Thu, 30 Nov 2023 18:30:25 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8lnq-00BcjB-2A
	for barebox@lists.infradead.org;
	Thu, 30 Nov 2023 18:30:23 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-28654179ec0so120771a91.2
        for <barebox@lists.infradead.org>; Thu, 30 Nov 2023 10:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701369021; x=1701973821; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Hxe5+QraIN+pWR8HDlI5OOaeSniWZcQ7T88Uq5w5qyU=;
        b=h/A+4CpWFBmndGcKu3Xt0ijVCekUslfAhkMUUA39qum2EZXa1x6tMPAZvM3SHFdABW
         F671Ko5xhtt8q/oYni9AAQp1y7PvT7JPaQEBRfEJA2B9mPpj8m0OMW0sFjz1i/xMeT66
         BNMlWlMvzhbAisT0PlbPnm/ftKJPRHcixBesVOmTpCFrPK2EBWN0f4mr4hPbt6AHxjgi
         Ukhs56X2BOeth+1JeHZUrFF+6weX5z4oY810HOgkAoLezFAQL7zJHxh7YsKTWcXswJM/
         bg8/FLLgczBPUJFBhIX0sTuus21U0g7UU26Ze67jYzNmH/wOvyXwPt8wQgd1x1aXE1WX
         lLCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701369021; x=1701973821;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hxe5+QraIN+pWR8HDlI5OOaeSniWZcQ7T88Uq5w5qyU=;
        b=m2BMA68fRXp/Bl6RfBCBIgSEhH6xKRAOciRcPjNCFMZOIHAX1LHYFMsxDcFsC9B1z6
         6Mk/tNPMvZ10xEy+DFcdYd6p7aHeqWRjUAUWe9gtxAUwhiJSBNszLEpyLTyDs2bf4Gjs
         4SJsvqY5rVHkbb1nLPeTfS/m0XeWAybaIxjjEo4g+M+RoKVlXHoxc3tSYV017Fqq10MX
         aIkorqv09oBrbzRsmgYHBSaVsmIJn5GSPvCiOhpSwwqVhc5BFeU/AHaGljL3pyiFfhv9
         x0EYhcx55v90DBdJcnN8UoQMfQx5IAxqFk0aiatnBIv+uVYtndVQSdMgmvhSHMULktiJ
         xhtg==
X-Gm-Message-State: AOJu0Yw7REFdV9yI3ScKobsqjn3P1rb35kBeIJqJWuRd3wEh9Nkvoq9t
	38VnnfV4Mji/uz9XS3eZSqG0KuVQn//brjBo8uqoyQ0cRnk=
X-Google-Smtp-Source: AGHT+IGW6pATvk7zw9XJDYL8hhbcj6FuZeRB2Tgt6quLY671nMjr5G3s0cJ0SSvZ/Igmrr3+2vr3uEEgjIVd06IAN6c=
X-Received: by 2002:a17:90b:1bd2:b0:285:da91:69c2 with SMTP id
 oa18-20020a17090b1bd200b00285da9169c2mr14927907pjb.45.1701369020922; Thu, 30
 Nov 2023 10:30:20 -0800 (PST)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 30 Nov 2023 21:30:09 +0300
Message-ID: <CAP1tNvQ_2Jrgk=2Wv+6EcbQoj_a-HkAhpU1uowrbh7WY2zwpFQ@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_103022_729237_24DFBEBF 
X-CRM114-Status: UNSURE (   3.93  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RK3568 4GB bootsource problem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All.

Another problem with the boot on the RK3568.
In the version with 2Gb DRAM memory everything works fine.
When running the board version with 4Gb DRAM, the bootsource value
is determined incorrectly, although the value in SRAM is correct.

Board: Diasom DS-RK3568-EVB
deep-probe: supported due to diasom,ds-rk3568-evb
bs addr 0xefff8010 value 0xc0400611
...
Boot source: unknown, instance -1
...
Hit any to stop autoboot:    2
barebox@Diasom DS-RK3568-EVB:/ md 0xfdcc0000
fdcc0000: 00000190 deadbeaf 0005e438 00000000                ........8.......
fdcc0010: 0000000a e7fdfadb 7afd3b58 ef57f7bb                ........X;.z..W.
...
barebox@Diasom DS-RK3568-EVB:/ md 0xefff8000
efff8000: c0000611 00000000 c0200611 00000000                .......... .....
efff8010: c0400611 00000000 c0600611 00000000                ..@.......`.....


