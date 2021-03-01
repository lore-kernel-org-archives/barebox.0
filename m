Delivery-date: Mon, 01 Mar 2021 13:20:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGhXZ-0004bf-DZ
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 13:20:45 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGhXX-0001MF-IY
	for lore@pengutronix.de; Mon, 01 Mar 2021 13:20:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fd4d3O5BXdumFEebdm8EMwD9Jf1Pk3T3gskx60F54FE=; b=TF4YBBcUZJRaZM3VN57rxzm4d
	l9Uk669AYGLzfmrwXssCFWhkZlg02zAtXH5m3RLvlzywHoBnp975v+9bjnbAG10vio9FlioLRxS47
	OexyqmNQgJ+o+a2T7RAt6R6H1yfqgLpLBgYK+XZnE4RAEkZyqiHczCmum//vNekU/uhnuFEfOZkgI
	sfR05bmsdhBODxRjlo+MjacM51IWqL87PxDkB5vs1L+5BkUQKHwmYUjEJhKhkxaGTg6SrRcip09/n
	g/vJcpWLOiNz+UAMTEDCu2DtOdPI6HpUI7WP0ULpbWupuoSfmg+kvvLbF9vqccNuK9p+0QoueXwev
	mHSu6590A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGhVi-00034p-HM; Mon, 01 Mar 2021 12:18:50 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGhVe-00033U-Rm
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 12:18:47 +0000
Received: by mail-pl1-x62d.google.com with SMTP id ba1so9772631plb.1
 for <barebox@lists.infradead.org>; Mon, 01 Mar 2021 04:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PDkTe9x5Q9ULPFSi/qj/E3/E+TQRjQUB9WiIHoCuyb8=;
 b=Lxd8QnNyyG8FMs4vFmU7iretNQ0RFDfe9nsB9GUezAwEbJkdRsMOvSBxmtwo5a846P
 iWQYBhYacQaQjEH7OfrEsfYtlXAJSHD0TckPp2oHlN7dPAfYju4/dj65PmiOOZb/VTvB
 fYx9j/bcGXDGupotS8Rkam9LJsc1u7RJxLNsfchA/8ELJl3QjCB3fP8nbIbZk0EIPY/x
 bqs+kbqo7TVyrdLHjcm8PqhvIlxiT8eW4qXell0cvuQtVfKAgATCBYvvb+LqOsG61ZFu
 ke8hj8Ws1nc+SIfA6QN8kZlNlt6MnPal9lVhsorfv3wOcVP8EFLCgLK+Bf0EkeHQyHnH
 shRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PDkTe9x5Q9ULPFSi/qj/E3/E+TQRjQUB9WiIHoCuyb8=;
 b=hk0jlKvzdXz/4ZOp01bdqEke6xhxfHn2znXvJLfxUVzp2uymX1RHOvXag8Ct7Pu/u4
 Jh+mLXKXOuKzWDdee/9/W6O+wo6WyGaXP8B2xUQNmtwG3TIamhVUXFSGXFUw+9RQTojK
 rPXIUDNqsrUh6xsTjmhE3UJbu6mcqR+p1gp5/kmKBlmzpLgOHXgbcMvuJXaH8dMmsQUM
 iYAEQhd6kgZ3qDNMI2vmmDTFwEkB73P6X/2w3GHbL3OGtnETUYt+3vnmouyMJKJUMxZ0
 xRHE/aj0ngaPsakinqg1GJJ39nxPsq/QV/JyqABUtz5lLeIB7msDfzIptmsmQaZUBrVu
 825Q==
X-Gm-Message-State: AOAM532sbczZ+Nsx1/CpTUn8Vmaa3V2zIKLIdFthY5GqvtHKhKTWSwHU
 Q+DgUVgIuHKHQhfBVGeuSd4=
X-Google-Smtp-Source: ABdhPJzwHpezC9EZRla2zefLQ7891Oa+69oJWaAGLgDpobXqxY6WPJO2Nd3UIBaIknW4YiQ+WtUdfg==
X-Received: by 2002:a17:902:74c4:b029:e4:9e16:18d9 with SMTP id
 f4-20020a17090274c4b02900e49e1618d9mr7305390plt.21.1614601121291; 
 Mon, 01 Mar 2021 04:18:41 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id m21sm17829337pff.61.2021.03.01.04.18.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 04:18:40 -0800 (PST)
Date: Mon, 1 Mar 2021 21:18:38 +0900
From: Stafford Horne <shorne@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210301121838.GD365039@lianli.shorne-pla.net>
References: <20210223095902.GD5549@pengutronix.de>
 <7c538f1d-9cc4-c25c-0ccd-44831597c80e@kalray.eu>
 <20210225124500.GA365039@lianli.shorne-pla.net>
 <20210225130240.GA5081@tellis.lin.mbt.kalray.eu>
 <ba82e9ef-9d9a-179c-1688-a9aeb12413d3@pengutronix.de>
 <36fa4f92-6f5d-d24c-988c-e85c207864bb@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36fa4f92-6f5d-d24c-988c-e85c207864bb@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_071846_935914_832981FF 
X-CRM114-Status: GOOD (  25.22  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>,
 shorne@opencores.org, Sascha Hauer <sha@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 01, 2021 at 12:05:35PM +0100, Ahmad Fatoum wrote:
> Hello,
> 
> On 25.02.21 16:33, Ahmad Fatoum wrote:
> 
> > On 25.02.21 14:02, Jules Maselbas wrote:
> >> On Thu, Feb 25, 2021 at 09:45:00PM +0900, Stafford Horne wrote:
> >>> Hello,
> >>>
> >>> I am the maintainer of most OpenRISC things right now.  I would be happy to
> >>> help, but I don't really use barebox right now.  Most of my deployments I use
> >>> with litex FPGA SoC's that has its own bootloader.
> >>>
> >>> That said, we have a setjmp/longjmp implementation in our glibc port which I
> >>> have been testing for upstreaming lately.
> >>>
> >>>   https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1k/setjmp.S
> >>>   https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1k/__longjmp.S
> >>>
> >>> I had a look at the barebox docs and openrisc port, it seems like there is
> >>> support for our standard platform, or1ksim, which is the same as my de0-nano
> >>> fpga board/soc and qemu.  I should be able to make use of this.
> >>>
> >>> Is there a branch where you are doing the green thread work?  I could add and
> >>> test the OpenRISC implementation.
> >> Hi,
> >>
> >> I've done this yesterday, I've push a branch[1] that has the green
> >> thread paches applied (except patches on usb mass storage gadget).
> >> https://github.com/jmaselbas/barebox/tree/test_setjmp 
> > 
> > Great. Thanks. I'm preparing an updated version that will clean it up
> > a bit, but the heart part of architectures providing setjmp/longjmp/initjmp
> > will stay the same.
> > 
> > Small request:
> >   If you implement initjmp, could you have it save into jmp_buf a frame
> >   pointer value of NULL if applicable? That way, should backtrace be
> >   implemented (or done via JTAG), they have a defined end.
> 
> Dismiss this last request. C code will just zero-initialize jmp_buf,
> so initjmp needs only fill out return address and stack pointer. I just
> sent out a series, which can be used to develop this one.

Thanks,

I will start looking at this now, I'll let you know when I get progress on
openrisc.

> @Jules, any chance you could take over the kvx port? :-)
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

