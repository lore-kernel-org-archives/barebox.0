Delivery-date: Thu, 04 Mar 2021 02:08:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHcTH-0000Pb-7A
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 02:08:07 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHcTG-00011o-AX
	for lore@pengutronix.de; Thu, 04 Mar 2021 02:08:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=624t0N1e8hXZUKejiVduJ6EEFfWFcp6U/6YwOPfvNN8=; b=m2IoF94ZDoLIB7BOEWFP8XDn3
	DLGe2718wB0c09u+OLsrTloc6OaZemIXUZTb5Z/uYOoJaO4WnPX9HqS+8Rdhs90Jcf0QnCYeKiJv/
	H+7Lq+hdz65O+/zBMMVZnidGP72J5nISCnXo0w161exrDjz0DaCVxt12MoihPuxJZO5ucW9pClyqh
	Zc67bB0AkoEc9NDnmVkSpKPYQHt3WPY97oRruksRRi2eIEblqS3nizfk1a3g2jwvBXFeDus1W3hZb
	sLPNHUQdSTZy4pw2VoShzATDJpuMebafU3FG7GSHWlO27qiMBG+vSz2puQ66zIwLzcNaV8xJAoeyp
	FSz7PkOTA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHcPz-007HeG-Iw; Thu, 04 Mar 2021 01:04:43 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHY3r-006PRq-Nh
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 20:25:38 +0000
Received: by mail-pf1-x435.google.com with SMTP id l7so12886131pfd.3
 for <barebox@lists.infradead.org>; Wed, 03 Mar 2021 12:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kE0k/LZextFeZjByoC+eteL6j8YDtFIuI9mLKXRdND8=;
 b=up/HToCopzQzTgRxIW8JFzJhSvV2PObh11iODapBuJNju/MIwG14EyX0qcyZZ6EbFD
 a+RVJlqwNwI79TkK8z4pcVXjKxVUrwlJCJ5rFLETJHlGyXjnUKjCK0IBwATo8uprVLfy
 orTD2vAOKuX4yQJrwszqPQJv36X1fodMbFVqhN9g3/gFFr0w/yZG9WUDHwdPzuMeZkRw
 WfTfe1OzFjOfr+3mKeNcO7xLJrRE2TdaT9X9jMO6nxNtE5Amp8xtzxotr++T7pJFk80Q
 d+2YmQBPscQHrJUkNf/BwDgSPSgnjmGDmuX/5HVrrJBawWfOkCKn3KTzvMvTQ7FUeFPc
 LGjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kE0k/LZextFeZjByoC+eteL6j8YDtFIuI9mLKXRdND8=;
 b=O5Xp+r6ra8L3qzgdZn96fAe5gYlwTGVFk+uvrdbgcMZJZTEmUQ5gpqWXnlgS1b5wq+
 EisUEWvNGD/mJCtGp22SmAQqaZWSSuGBnFPiDucaD3ccPGjjpdzsR+3+i3Ypd4fV//SV
 gJE2L628SAhGTCrQDWgjQH9vcXIwrsLA2HHV/ljSo2rVs9qsdsnYRQAt1LWne03Lu4dX
 C8E7KI89ewFX/rAVA6wG22bXVj35lNnmfNNMAGSViNud5c96hq+THuhae+yDGbgBcPW3
 V5BJUDGgySE9cIzvv7zqEDqlQ/QZlfTj1fGgFlFRSO3zgT/w+sBxcRjJ7ZpjvLv521VZ
 keAQ==
X-Gm-Message-State: AOAM530gn04HghFISOeaXJ46YbOvhrFr8ip1PUM5iv1/VE8mo8WTksz4
 3FmIpoOZIMPA7TT4I1stQws=
X-Google-Smtp-Source: ABdhPJxEtvtu0QFYGV8HwzCpj+xbR7H47uIjLMM8REOpql4LLIJ0Fhl6bhMlt4ilZuSLPre14Yv/bA==
X-Received: by 2002:aa7:8c49:0:b029:1ed:c1dc:4421 with SMTP id
 e9-20020aa78c490000b02901edc1dc4421mr587702pfd.43.1614803134104; 
 Wed, 03 Mar 2021 12:25:34 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id y1sm7752983pjr.3.2021.03.03.12.25.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 12:25:33 -0800 (PST)
Date: Thu, 4 Mar 2021 05:25:31 +0900
From: Stafford Horne <shorne@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210303202531.GH365039@lianli.shorne-pla.net>
References: <20210303135026.3450789-1-shorne@gmail.com>
 <57222afc-9d92-e52d-34d4-0737eff1ec82@pengutronix.de>
 <20210303141214.GG365039@lianli.shorne-pla.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303141214.GG365039@lianli.shorne-pla.net>
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
Cc: Barebox <barebox@lists.infradead.org>,
 Openrisc <openrisc@lists.librecores.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] OpenRISC fixes and setjmp/longjmp work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 03, 2021 at 11:12:14PM +0900, Stafford Horne wrote:
> On Wed, Mar 03, 2021 at 03:03:11PM +0100, Ahmad Fatoum wrote:
> > Hello Stafford,
> > 
> > On 03.03.21 14:50, Stafford Horne wrote:
> > > Hello,
> > > 
> > > These are the patches I came up with to get the setjmp/longjmp routines to work
> > > on OpenRISC.  It seems to be working well.
> > > 
> > > The patches are on github here:
> > >   https://github.com/stffrdhrn/barebox/tree/openrisc-bthread
> > > 
> > > I had to revert a commit to remove openrisc to do this work, I hope that can be
> > > reverted.
> > 
> > Great. Thanks for taking the time!
> > Could this be tested on qemu-system-or1k? If so, it would be great to have this
> > documented in-tree, so future changes could be tested.
> 
> Sure, I will try to get it working.  For some reason qemu was getting hung.
> 
> Give me a few days.

Got it working and posted a sepaate patch.  I will add documentation as well, but
here is what I ran. It should be similar to what I documented on the qemu wiki:

  https://wiki.qemu.org/Documentation/Platforms/OpenRISC

    $ /home/shorne/work/openrisc/qemu/build/or1k-softmmu/qemu-system-or1k -cpu or1200 \
      -M or1k-sim \
      -kernel /home/shorne/work/openrisc/barebox/barebox \
      -net nic -net tap,ifname=tap0,script=no,downscript=no \
      -serial mon:stdio -nographic \
      -gdb tcp::10001 \
      -m 32

    barebox 2021.02.0-00120-g763c6fee7-dirty #14 Thu Mar 4 05:13:51 JST 2021


    Board: or1ksim
    mdio_bus: miibus0: probed
    malloc space: 0x01b80000 -> 0x01f7ffff (size 4 MiB)

    Hit any to stop autoboot:    3
    barebox@or1ksim:/
    barebox@or1ksim:/
    barebox@or1ksim:/ bthread -v
    bthread_printer yield #1
    bthread_printer yield #2
    bthread_printer yield #3
    bthread_printer yield #4
    9963 bthread yield calls in 1s

-Stafford

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

