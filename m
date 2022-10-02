Delivery-date: Sun, 02 Oct 2022 13:32:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oexDP-003Np3-7D
	for lore@lore.pengutronix.de; Sun, 02 Oct 2022 13:32:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oexDN-0000HY-Vm
	for lore@pengutronix.de; Sun, 02 Oct 2022 13:32:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mXgB1RZ/V6Z/XyTH7eYqcjjpYOHJfmCLuhQbmYcP9NY=; b=kMjgI9ToMAG1THLZkH0MuVK1I/
	+TU87LV69NWmsRXSo0Oyu4Nn7I7gPP/0fDIxVzMGd1s7q0wyp0BN3Ja5nIWTJqbGmT7NGa+Tsxe/8
	W0w+hxTxO9AHZ/G4ml+zxiBs/iSDF8EQv+W1gjOmC9sCKG1CzDdqU1OTfbC+EFIYuhMSY5qXgY+x+
	JCw5SfV5guOoxina8XJYHA7hDc9L6WPoc3maAgd0EPLTdtRP1jjMCwzXeii2rsMRERQwv9CpwJGLK
	rc/p6luVD7vqDeRGbpOjWYt7erJ6GhNwjkffEG+JoEef0psGCc5rL8WGku2lIm6ATa9ahztTZyY1f
	dIbLLytQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oexAN-000zX6-7j; Sun, 02 Oct 2022 11:29:51 +0000
Received: from mail.skyhub.de ([5.9.137.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oexAI-000zU0-1B
	for barebox@lists.infradead.org; Sun, 02 Oct 2022 11:29:47 +0000
Received: from zn.tnic (p200300ea9733e7b3329c23fffea6a903.dip0.t-ipconnect.de [IPv6:2003:ea:9733:e7b3:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 050C61EC0651;
	Sun,  2 Oct 2022 13:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
	t=1664710177;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
	bh=mXgB1RZ/V6Z/XyTH7eYqcjjpYOHJfmCLuhQbmYcP9NY=;
	b=kbDs07KIuItGuEwk8YQR5T8RzC8PyRXEJuBnVu5GNiLDiy7/0NF6rLs/CEnNctMs6e25ih
	Ej5vgpO1X26zd10rcGm4BLXe0+SlEKYQt57x0T/64MLF00MP7b3i8i4woUYiCuhG6LpFDH
	C5D62J/H83rvv8J/I1TKzu/NkXkxC0g=
Date: Sun, 2 Oct 2022 13:29:33 +0200
From: Borislav Petkov <bp@alien8.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: hpa@zytor.com, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org,
	Jonathan Corbet <corbet@lwn.net>, barebox@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Message-ID: <Yzl2HWIiKPHP9F1I@zn.tnic>
References: <20220513143039.2065756-1-a.fatoum@pengutronix.de>
 <YzjDHOWkIoWF+h/R@zn.tnic>
 <5da3593c-1607-9075-e1ac-1e384fd62b93@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5da3593c-1607-9075-e1ac-1e384fd62b93@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221002_042946_242752_0EA800AE 
X-CRM114-Status: UNSURE (   7.97  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: x86: boot: reserve type_of_loader=13 for
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Oct 02, 2022 at 09:15:09AM +0200, Ahmad Fatoum wrote:
> Release cadence is monthly. Starting with release v2015.09.0,
> type_of_loader=0xff was being used. I figured it's about time, we
> allocate an ID for it.

Right, by "explain a bit what it is here" I meant to explain what it
is and add some references to the commit message. I.e., leave enough
breadcrumbs so that people like me can go and find that relevant info
when doing git archeology.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette


