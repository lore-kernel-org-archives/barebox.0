Delivery-date: Tue, 18 Jan 2022 00:30:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9bS5-0052AG-C8
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 00:30:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9bS3-0003my-UU
	for lore@pengutronix.de; Tue, 18 Jan 2022 00:30:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDJBrjsOHRTGuknwxRClNZ7ThqmKQAeAhF8aRXnhzWw=; b=1gj5GDOs7HSaT7
	Q9J7IUQ5AJXpeAlUYh8LSHtHGPxwFQ5LGgNeNFN9XzvKbcA6HPZkiudacFJ4ygRpgZ2XNwvjbWeFU
	segreUPvh5crwe2P8N0uL4nluBwijuVLBaZg8p9KnQV+KjR4lOLs0ZnFQAED1S4dnObNB0gwZGJnb
	Od4NRaZhNByjwEwiwVeQ+BKPjEoKRjYGakpocFQyxCZ57QYlrgnDv7ikQA14l9JszpimMebXzrQsG
	ndBwLN4N86is2CeV6ll+j4N2rAr2Z+E5uaHXCBbvHcrktWfKY5ejDTWBotYEbccWmA0M0olJlQxcZ
	wg0aafDxI6k28z06Lzew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9bQS-00GbZM-Q3; Mon, 17 Jan 2022 23:28:36 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9bQO-00GbYk-6X
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 23:28:33 +0000
Received: by mail-lf1-x135.google.com with SMTP id s30so63580865lfo.7
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 15:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2u5hAcM1329iZQZL3IF+//go12k2TSCDQCzT/JorUMM=;
 b=BSxdRwWDSgLQh18Qup1sVtBweuzoPyJ+aM5c3umUG7KlvjClTtLW0y+w+WHH5nUDy1
 DNz9PI0ftTvoMUn/amOf4VsOj/IqiHVTKg0cLYoXpRSA6FJeaLSx9nPewn/stWey6W9E
 ER9hS1BT35FY6dAhqtQPJK/rQGTWQ2zpL8u+A91j2F24qowOiFNPN0otfnDZQE1i6ofX
 w75aKVtrySkb23I7b5ZKiOVb8kZB413Y8dv8+CGPqz7N1oRsszhPwchbU+ENpCfxgaVH
 4qMfIcQW3Ni9lIE5dX6PZ5E8UtdkIk9PHqGhOUC+t/05k3tegWXCSiMcyWSjU5yzyPuB
 X+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2u5hAcM1329iZQZL3IF+//go12k2TSCDQCzT/JorUMM=;
 b=VXJ3NAGHMFoda5AJpBxLr8CYDDeY37rc2g+z7msMRB7WktGBc6e2sYvEvuLecNnlue
 3RRKnPVI2JtGF1MBjun7qgL2pzoLquWh7H6K+rzNJS47F4p9xqV6LWQqo7kDYnImhUCv
 dkBc+OOWsgAqFcZKzr7RyUtAZ0fq2TyHsQgnCZ+84+VU7/SrOrSnNJ67nkpsx4hj+XBn
 Zd5732Y3T//IusbGCNnfNlAE7pp359GvCbv9Ga3Vn+YOnMo94ioFLSTdGLeziNHca+hJ
 B034nave3Y7P2eJQQGWnE851xWEW6apDhaTSnGFI6iP1lGSm+vnISwM4nZi62i1T/GT1
 goFw==
X-Gm-Message-State: AOAM532P6ILY595kiJJ4dVR53pKWb7ci7DwhCh2y8GGDaXysWfO3MgWm
 aisJSaWmOdKQK/gtPtCLuOkvu2+cKgwr8WaiScjGe0ZWhH0=
X-Google-Smtp-Source: ABdhPJwBXaultKO5fUFf3f+Ud8oBFP39xj4A8B6Pchu5XNVDe/pcMvSe5DY55ojwnETYCsbAT1N93KSrbwW2DFIutrI=
X-Received: by 2002:a19:f00f:: with SMTP id p15mr16626092lfc.196.1642462108783; 
 Mon, 17 Jan 2022 15:28:28 -0800 (PST)
MIME-Version: 1.0
References: <20220117230235.13549-1-jmaselbas@kalray.eu>
 <20220117230235.13549-5-jmaselbas@kalray.eu>
In-Reply-To: <20220117230235.13549-5-jmaselbas@kalray.eu>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 17 Jan 2022 15:28:17 -0800
Message-ID: <CAMHeXxOQXTTd=u8M9fbtQeB6OAFnC+1t=Sx=CtwzocNc=HaDMg@mail.gmail.com>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_152832_427415_4F7D10AD 
X-CRM114-Status: UNSURE (   7.05  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/5] logo: Enable image format selection for the logo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 17, 2022 at 3:03 PM Jules Maselbas <jmaselbas@kalray.eu> wrote:
>
> +choice
> +       prompt "Logo image encoding format to be used"
> +       default BAREBOX_LOGO_PNG
> +
> +config BAREBOX_LOGO_PNG
> +       bool "png"
> +       select PNG
> +       help
> +         Encode logo with the PNG image format
> +
> +config BAREBOX_LOGO_BMP
> +       bool "bmp"
> +       select BMP
> +       help
> +         Encode logo with the BMP image format

You might say why one might want one format or ther other.  What's the
point of adding bmp support?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

