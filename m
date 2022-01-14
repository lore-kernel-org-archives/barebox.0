Delivery-date: Fri, 14 Jan 2022 12:15:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8KYb-001z9n-7l
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 12:15:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8KYZ-0005kx-Ly
	for lore@pengutronix.de; Fri, 14 Jan 2022 12:15:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnESidbYDit1wteWNZ3g2muYrfecGSZyZCQyn2sno9A=; b=SshSLqBj8z2+3A
	6pKVOJzLbTCJDJpkm698TEdJBY7bakihNxgyeASyF8e8BsqZg2NameRmdVpX6pJfcgHBOjSB6QDt+
	QKcylX1EnGrE2cieNT7OTbgBvqEj97e9mgFEFddaFPbDf5G/5okKRkbegQcFVqmAYHY3HqKG9ZGdx
	1GGrhiaonbjMXPsvO4Cyd5KyjsiLlPeTH8c0WKIi4gFPclWCUAtf0HlQdwAOlfjYs6TzGgHKYcsMk
	IfAqT0p38YuHMsR/lu+1mES9a7eMbgGWmtKmkGmVpxkuD2zWVICio/qg1L90ndDGg9BFDM4OoosJt
	1X1gnhoT7yDSQNZ75qOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8KXC-008uf4-DZ; Fri, 14 Jan 2022 11:14:18 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36]
 helo=fx301.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8KX7-008ueE-3W
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 11:14:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id EB4A924BD0EF
 for <barebox@lists.infradead.org>; Fri, 14 Jan 2022 12:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642158847;
 bh=hXNfOGwCv/nmN9Ks4idzHdmII1ySvUkYX+qrwTJwGwQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=RpkTpu7tQJ+vIXtCgMZXq8xB8B+uI/liRgKOYz2cJvz38QW/6t85Ls0I7bfpSlEQP
 nQ7DbAOUtEVr4Eaw3hFWviquizjnwKkWOQrmDo3vvRk28xOjIPlMR54WliDOQuuP68
 5VGNc2jFXfSQE36xkOOAY9yYKVGRdZ/4ngcboZ04=
Received: from fx301 (localhost [127.0.0.1]) by fx301.security-mail.net
 (Postfix) with ESMTP id 69EE624BD101; Fri, 14 Jan 2022 12:14:06 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx301.security-mail.net (Postfix) with ESMTPS id 0445C24BD0EF; Fri, 14 Jan
 2022 12:14:05 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id A513F27E03CB; Fri, 14 Jan 2022
 12:14:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 8C74B27E03F5; Fri, 14 Jan 2022 12:14:05 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 0ufgei57bmT8; Fri, 14 Jan 2022 12:14:05 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 799BE27E03CB; Fri, 14 Jan 2022
 12:14:05 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <eb87.61e15afd.c5031.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 8C74B27E03F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642158845;
 bh=SQY+GciocaL+UCPqo4/Duh85zjs91hrfg0TzlFaqf6E=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=WYi7qYSJJ0tpKv1lM3K8Y8CaYUKOXUMh1R1sgiFywpLPpmhHu87lMjt2vK230bpVO
 JmBtBw/aCo75P/OnfAV+V0uopeQqsbTf0N9PXdHqIAvwaYz+nRe88srdpuwPX0utdA
 24dPacOUgoQ41Fb20AIC7hqpGNZpiKAqiqAbiSwU=
Date: Fri, 14 Jan 2022 12:14:04 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220114111404.GB29876@tellis.lin.mbt.kalray.eu>
References: <20220110221255.5003-1-jmaselbas@kalray.eu>
 <20220110221255.5003-4-jmaselbas@kalray.eu>
 <ec782b1e-ffed-3f01-71a7-f28c161d802d@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec782b1e-ffed-3f01-71a7-f28c161d802d@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_031413_317445_69EFC93C 
X-CRM114-Status: GOOD (  26.13  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] scripts: Add qoiconv to convert png to qoi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 11:29:58AM +0100, Ahmad Fatoum wrote:
> On 10.01.22 23:12, Jules Maselbas wrote:
> > ImageMagick will eventually support the qoi image format, in the
> > mean time add a png to qoi conversion program.
> > 
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> >  scripts/Kconfig     |    5 +
> >  scripts/Makefile    |    1 +
> >  scripts/qoiconv.c   |   91 +
> >  scripts/stb_image.h | 7756 +++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 7853 insertions(+)
> >  create mode 100644 scripts/qoiconv.c
> >  create mode 100644 scripts/stb_image.h
> > 
> > diff --git a/scripts/Kconfig b/scripts/Kconfig
> > index 9b744deba9..747f665e02 100644
> > --- a/scripts/Kconfig
> > +++ b/scripts/Kconfig
> > @@ -110,6 +110,11 @@ config RK_USB_LOADER
> >  
> >  	  You need libusb-1.0 to compile this tool.
> >  
> > +config QOICONV
> > +	bool "QOI image format conversion" if COMPILE_HOST_TOOLS
> > +	help
> > +	  This enable converting png to qoi images to generate boot logo.
> > +
> >  endmenu
> >  
> >  menu "Target Tools"
> > diff --git a/scripts/Makefile b/scripts/Makefile
> > index dc5fa75f90..cbaf2d55ff 100644
> > --- a/scripts/Makefile
> > +++ b/scripts/Makefile
> > @@ -8,6 +8,7 @@ hostprogs-always-y					+= fix_size
> >  hostprogs-always-y					+= bareboxenv
> >  hostprogs-always-y					+= bareboxcrc32
> >  hostprogs-always-y					+= kernel-install
> > +hostprogs-always-$(CONFIG_QOICONV)			+= qoiconv
> >  hostprogs-always-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS)	+= rsatoc
> >  HOSTCFLAGS_rsatoc = `pkg-config --cflags openssl`
> >  HOSTLDLIBS_rsatoc = `pkg-config --libs openssl`
> > diff --git a/scripts/qoiconv.c b/scripts/qoiconv.c
> > new file mode 100644
> > index 0000000000..010c70ead0
> > --- /dev/null
> > +++ b/scripts/qoiconv.c
> > @@ -0,0 +1,91 @@
Probably missing SPDX identifiers as well

> > +/*
> > +
> > +Command line tool to convert between png <> qoi format
> > +
> > +Requires "stb_image.h" and "stb_image_write.h"
> > +Compile with: 
> > +	gcc qoiconv.c -std=c99 -O3 -o qoiconv
> > +
> > +Dominic Szablewski - https://phoboslab.org
> > +
> > +
> > +-- LICENSE: The MIT License(MIT)
> > +
> > +Copyright(c) 2021 Dominic Szablewski
> > +
> > +Permission is hereby granted, free of charge, to any person obtaining a copy of
> > +this software and associated documentation files(the "Software"), to deal in
> > +the Software without restriction, including without limitation the rights to
> > +use, copy, modify, merge, publish, distribute, sublicense, and / or sell copies
> > +of the Software, and to permit persons to whom the Software is furnished to do
> > +so, subject to the following conditions :
> > +The above copyright notice and this permission notice shall be included in all
> > +copies or substantial portions of the Software.
> > +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> > +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> > +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
> > +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> > +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> > +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
> > +SOFTWARE.
> > +
> > +*/
> 
> Can you not reuse the header added in the previous commit?
I am not sure what you mean here, the qoi.h header is reused from
lib/gui/qoi.h, see the include below.
Are you sugesting to _not_ reuse the header?


> > +
> > +
> > +#define STB_IMAGE_IMPLEMENTATION
> > +#define STBI_ONLY_PNG
> > +#define STBI_NO_LINEAR
> > +#include "stb_image.h"
> > +
> > +#define QOI_IMPLEMENTATION
> > +#include "../lib/gui/qoi.h"
included here.







_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

