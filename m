Delivery-date: Thu, 08 Apr 2021 01:20:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUHTS-0005bq-RR
	for lore@lore.pengutronix.de; Thu, 08 Apr 2021 01:20:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUHTS-0000Q0-1T
	for lore@pengutronix.de; Thu, 08 Apr 2021 01:20:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o0Eg/pEGDUYDzlfMQZH/ExUIy+6Cl1mWDKJFn54XTlI=; b=coxcJQxc6/T15DbF2yf2vSM9V
	46X3wD4cuzfBEfArh87AguPqtf0/9K1ELBt+Fi6XH7Dnc/8Y+rRzuo4D3VewfYk+Go2Uv6mJn5t+t
	kotDLliS95DP3vYFuUdw4/nw+lqtQzE2VwtDQNcoyXiCiwnnU1uZc7vHOH8wnZzi+Vry9bklKmxdK
	0XXLgonU8FEg3pfJpMRZMxLHBXUNUOE6/cc/QzlS8t1qhCaMPWTYKi0blcy4vr/JkLK2SeDlAtUC/
	qtu1MTJVzF+XT8id6QaZipVAiEypu4B+Is2GgzuE/V7pSsf5D9XSeSF7sct/b9MriMljoTWD3aOLC
	POMuvvXdg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUHSJ-006Go1-Tr; Wed, 07 Apr 2021 23:19:28 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUHSD-006GnO-Os
 for barebox@lists.infradead.org; Wed, 07 Apr 2021 23:19:23 +0000
Received: by mail-pf1-x433.google.com with SMTP id s11so454014pfm.1
 for <barebox@lists.infradead.org>; Wed, 07 Apr 2021 16:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FWMwcIAIJpvhQyQCMu0Mqo4A8mr/mzl3+J4HHQRQ77A=;
 b=u+Y0Gx42rEMkV3t48J6/oy9C8tSLdWmpGNqDjhxkyFbjDf1eVGRZlqzW8+uHD2C9RW
 ARuyDyW0Hy3qU2Qc4ARD1o0idJZJKfMH6G+qMEd5wZpalsQ9HiWQiL/tz/NSficJnPRg
 KlZsWskLIePQ5l7vVMgMjxU/gmDmrKOacZRPSvlgq/15r8r30cfnoY42LHV22azc8+qP
 aIl5986Rdqg7BvTHsr1yyXusx4Qc1+Ti63D5vTy2UGkz1cCscqHqLsMLpOEl75C18s6b
 9hHk5UlnKrGK37npCOCHOioZMJs5ESAakVXx50x7REAsMuZUJ5PAFdj+cN3zSdOls6hG
 s5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FWMwcIAIJpvhQyQCMu0Mqo4A8mr/mzl3+J4HHQRQ77A=;
 b=oYFhKGrkee7H0aC0WiH9BoWpMQJc16c5RwV/yswLFJL7Etch6UZSx17ht/Fkjwgu77
 EUTOycOWaeDpy/hBJqjfSyTXWX5S7zpiMjNrRxGRoMLoyhRfhKCJ5N/JL1+YAj9dxA89
 nI+H9yXStZdonsiQx3NW4kuNdOqUaFh3yIfhucl5vTZ4oz0Pz9AxXKOSOjBTz6/UU8X0
 33gVKWBD6vrDXNj6yXp6cOseilweK++/yoIKFTgyPQmp/0DMiZ1xIdbGWySbtJqrZj/y
 4f4wHdGpCNmnLYhuxB9lxc33MxClfiPQ6Ainj3DEtVJcAKF2+5MkkkGLn9slH1pV3P6N
 /+dw==
X-Gm-Message-State: AOAM533XR+07uwY5J+fucqBpW17bN9VhF+S8884zUDpB37IhG2tG1CtQ
 y7S6ipBvQnvlndf90zekJr8bgngcS9NylA==
X-Google-Smtp-Source: ABdhPJxFnfDJZuD4i3ilQsCfrF2TCcnhLu1yQYYZyXKLAeSs1oO1/4b5BhRKAJXwsSnGb2vCWaTl2g==
X-Received: by 2002:a05:6a00:214d:b029:218:4f9:d5ba with SMTP id
 o13-20020a056a00214db029021804f9d5bamr5034341pfk.3.1617837560230; 
 Wed, 07 Apr 2021 16:19:20 -0700 (PDT)
Received: from localhost (g191.124-44-145.ppp.wakwak.ne.jp. [124.44.145.191])
 by smtp.gmail.com with ESMTPSA id
 b140sm23230734pfb.98.2021.04.07.16.19.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Apr 2021 16:19:19 -0700 (PDT)
Date: Thu, 8 Apr 2021 08:19:17 +0900
From: Stafford Horne <shorne@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210407231917.GI3288043@lianli.shorne-pla.net>
References: <20210304210747.3679483-1-shorne@gmail.com>
 <bd106f14-c773-a4a8-2f43-2e269f4f04e4@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd106f14-c773-a4a8-2f43-2e269f4f04e4@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210408_001922_014117_C0A8AE3E 
X-CRM114-Status: GOOD (  18.97  )
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
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Documentation: Add qemu instructions for OpenRISC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Apr 04, 2021 at 08:46:04PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 04.03.21 22:07, Stafford Horne wrote:
> > Most developers have qemu and rather not download and install the
> > or1ksim.  Also, this adds details on how to get a openrisc toolchain.
> > 
> > Signed-off-by: Stafford Horne <shorne@gmail.com>
> 
> I don't see this in next.
> 
> > ---
> >  Documentation/boards/openrisc.rst | 68 +++++++++++++++++++++++++++++++
> >  1 file changed, 68 insertions(+)
> > 
> > diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards/openrisc.rst
> > index f9d67f965..34586b4a7 100644
> > --- a/Documentation/boards/openrisc.rst
> > +++ b/Documentation/boards/openrisc.rst
> > @@ -1,6 +1,74 @@
> >  OpenRISC
> >  ========
> >  
> > +Optaining an OpenRISC toolchain
> 
> Could you fix up s/Optaining/Obtaining/ while at it?

It looks like you guys are handling it, but please let me know if there is
anything else I can do.

-Stafford

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

